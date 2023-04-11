.class Landroidx/media2/session/MediaControllerStub$19;
.super Ljava/lang/Object;
.source "MediaControllerStub.java"

# interfaces
.implements Landroidx/media2/session/MediaControllerStub$ControllerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaControllerStub;->onTrackInfoChanged(ILjava/util/List;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaControllerStub;

.field final synthetic val$selectedAudioParcel:Landroidx/versionedparcelable/ParcelImpl;

.field final synthetic val$selectedMetadataParcel:Landroidx/versionedparcelable/ParcelImpl;

.field final synthetic val$selectedSubtitleParcel:Landroidx/versionedparcelable/ParcelImpl;

.field final synthetic val$selectedVideoParcel:Landroidx/versionedparcelable/ParcelImpl;

.field final synthetic val$seq:I

.field final synthetic val$trackInfoList:Ljava/util/List;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaControllerStub;Ljava/util/List;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;I)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/session/MediaControllerStub;

    .line 411
    iput-object p1, p0, Landroidx/media2/session/MediaControllerStub$19;->this$0:Landroidx/media2/session/MediaControllerStub;

    iput-object p2, p0, Landroidx/media2/session/MediaControllerStub$19;->val$trackInfoList:Ljava/util/List;

    iput-object p3, p0, Landroidx/media2/session/MediaControllerStub$19;->val$selectedVideoParcel:Landroidx/versionedparcelable/ParcelImpl;

    iput-object p4, p0, Landroidx/media2/session/MediaControllerStub$19;->val$selectedAudioParcel:Landroidx/versionedparcelable/ParcelImpl;

    iput-object p5, p0, Landroidx/media2/session/MediaControllerStub$19;->val$selectedSubtitleParcel:Landroidx/versionedparcelable/ParcelImpl;

    iput-object p6, p0, Landroidx/media2/session/MediaControllerStub$19;->val$selectedMetadataParcel:Landroidx/versionedparcelable/ParcelImpl;

    iput p7, p0, Landroidx/media2/session/MediaControllerStub$19;->val$seq:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/session/MediaControllerImplBase;)V
    .locals 12
    .param p1, "controller"    # Landroidx/media2/session/MediaControllerImplBase;

    .line 414
    iget-object v0, p0, Landroidx/media2/session/MediaControllerStub$19;->val$trackInfoList:Ljava/util/List;

    invoke-static {v0}, Landroidx/media2/common/MediaParcelUtils;->fromParcelableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 415
    .local v0, "trackInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/SessionPlayer$TrackInfo;>;"
    iget-object v1, p0, Landroidx/media2/session/MediaControllerStub$19;->val$selectedVideoParcel:Landroidx/versionedparcelable/ParcelImpl;

    invoke-static {v1}, Landroidx/media2/common/MediaParcelUtils;->fromParcelable(Landroidx/versionedparcelable/ParcelImpl;)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 416
    .local v8, "selectedVideoTrack":Landroidx/media2/common/SessionPlayer$TrackInfo;
    iget-object v1, p0, Landroidx/media2/session/MediaControllerStub$19;->val$selectedAudioParcel:Landroidx/versionedparcelable/ParcelImpl;

    invoke-static {v1}, Landroidx/media2/common/MediaParcelUtils;->fromParcelable(Landroidx/versionedparcelable/ParcelImpl;)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 417
    .local v9, "selectedAudioTrack":Landroidx/media2/common/SessionPlayer$TrackInfo;
    iget-object v1, p0, Landroidx/media2/session/MediaControllerStub$19;->val$selectedSubtitleParcel:Landroidx/versionedparcelable/ParcelImpl;

    .line 418
    invoke-static {v1}, Landroidx/media2/common/MediaParcelUtils;->fromParcelable(Landroidx/versionedparcelable/ParcelImpl;)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 419
    .local v10, "selectedSubtitleTrack":Landroidx/media2/common/SessionPlayer$TrackInfo;
    iget-object v1, p0, Landroidx/media2/session/MediaControllerStub$19;->val$selectedMetadataParcel:Landroidx/versionedparcelable/ParcelImpl;

    .line 420
    invoke-static {v1}, Landroidx/media2/common/MediaParcelUtils;->fromParcelable(Landroidx/versionedparcelable/ParcelImpl;)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 421
    .local v11, "selectedMetadataTrack":Landroidx/media2/common/SessionPlayer$TrackInfo;
    iget v2, p0, Landroidx/media2/session/MediaControllerStub$19;->val$seq:I

    move-object v1, p1

    move-object v3, v0

    move-object v4, v8

    move-object v5, v9

    move-object v6, v10

    move-object v7, v11

    invoke-virtual/range {v1 .. v7}, Landroidx/media2/session/MediaControllerImplBase;->notifyTrackInfoChanged(ILjava/util/List;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SessionPlayer$TrackInfo;)V

    .line 423
    return-void
.end method
