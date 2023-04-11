.class Landroidx/media2/session/MediaControllerStub$20;
.super Ljava/lang/Object;
.source "MediaControllerStub.java"

# interfaces
.implements Landroidx/media2/session/MediaControllerStub$ControllerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaControllerStub;->onTrackSelected(ILandroidx/versionedparcelable/ParcelImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaControllerStub;

.field final synthetic val$seq:I

.field final synthetic val$trackInfoParcel:Landroidx/versionedparcelable/ParcelImpl;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaControllerStub;Landroidx/versionedparcelable/ParcelImpl;I)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/session/MediaControllerStub;

    .line 432
    iput-object p1, p0, Landroidx/media2/session/MediaControllerStub$20;->this$0:Landroidx/media2/session/MediaControllerStub;

    iput-object p2, p0, Landroidx/media2/session/MediaControllerStub$20;->val$trackInfoParcel:Landroidx/versionedparcelable/ParcelImpl;

    iput p3, p0, Landroidx/media2/session/MediaControllerStub$20;->val$seq:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/session/MediaControllerImplBase;)V
    .locals 3
    .param p1, "controller"    # Landroidx/media2/session/MediaControllerImplBase;

    .line 435
    iget-object v0, p0, Landroidx/media2/session/MediaControllerStub$20;->val$trackInfoParcel:Landroidx/versionedparcelable/ParcelImpl;

    invoke-static {v0}, Landroidx/media2/common/MediaParcelUtils;->fromParcelable(Landroidx/versionedparcelable/ParcelImpl;)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v0

    check-cast v0, Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 436
    .local v0, "trackInfo":Landroidx/media2/common/SessionPlayer$TrackInfo;
    if-nez v0, :cond_0

    .line 437
    const-string v1, "MediaControllerStub"

    const-string v2, "onTrackSelected(): Ignoring null track info"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    return-void

    .line 440
    :cond_0
    iget v1, p0, Landroidx/media2/session/MediaControllerStub$20;->val$seq:I

    invoke-virtual {p1, v1, v0}, Landroidx/media2/session/MediaControllerImplBase;->notifyTrackSelected(ILandroidx/media2/common/SessionPlayer$TrackInfo;)V

    .line 441
    return-void
.end method
