.class public final Landroidx/media2/common/TrackInfoParcelizer;
.super Ljava/lang/Object;
.source "TrackInfoParcelizer.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Landroidx/media2/common/SessionPlayer$TrackInfo;
    .locals 3
    .param p0, "parcel"    # Landroidx/versionedparcelable/VersionedParcel;

    .line 14
    new-instance v0, Landroidx/media2/common/SessionPlayer$TrackInfo;

    invoke-direct {v0}, Landroidx/media2/common/SessionPlayer$TrackInfo;-><init>()V

    .line 15
    .local v0, "obj":Landroidx/media2/common/SessionPlayer$TrackInfo;
    iget v1, v0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mId:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readInt(II)I

    move-result v1

    iput v1, v0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mId:I

    .line 16
    iget-object v1, v0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mUpCastMediaItem:Landroidx/media2/common/MediaItem;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;I)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v1

    check-cast v1, Landroidx/media2/common/MediaItem;

    iput-object v1, v0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mUpCastMediaItem:Landroidx/media2/common/MediaItem;

    .line 17
    iget v1, v0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mTrackType:I

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readInt(II)I

    move-result v1

    iput v1, v0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mTrackType:I

    .line 18
    iget-object v1, v0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mParcelledFormat:Landroid/os/Bundle;

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readBundle(Landroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mParcelledFormat:Landroid/os/Bundle;

    .line 19
    invoke-virtual {v0}, Landroidx/media2/common/SessionPlayer$TrackInfo;->onPostParceling()V

    .line 20
    return-object v0
.end method

.method public static write(Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 2
    .param p0, "obj"    # Landroidx/media2/common/SessionPlayer$TrackInfo;
    .param p1, "parcel"    # Landroidx/versionedparcelable/VersionedParcel;

    .line 25
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroidx/versionedparcelable/VersionedParcel;->setSerializationFlags(ZZ)V

    .line 26
    invoke-virtual {p1}, Landroidx/versionedparcelable/VersionedParcel;->isStream()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/media2/common/SessionPlayer$TrackInfo;->onPreParceling(Z)V

    .line 27
    iget v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mId:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(II)V

    .line 28
    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mUpCastMediaItem:Landroidx/media2/common/MediaItem;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;I)V

    .line 29
    iget v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mTrackType:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(II)V

    .line 30
    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mParcelledFormat:Landroid/os/Bundle;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeBundle(Landroid/os/Bundle;I)V

    .line 31
    return-void
.end method
