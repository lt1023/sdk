.class public final Landroidx/media2/common/BitmapEntryParcelizer;
.super Ljava/lang/Object;
.source "BitmapEntryParcelizer.java"


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

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Landroidx/media2/common/MediaMetadata$BitmapEntry;
    .locals 3
    .param p0, "parcel"    # Landroidx/versionedparcelable/VersionedParcel;

    .line 14
    new-instance v0, Landroidx/media2/common/MediaMetadata$BitmapEntry;

    invoke-direct {v0}, Landroidx/media2/common/MediaMetadata$BitmapEntry;-><init>()V

    .line 15
    .local v0, "obj":Landroidx/media2/common/MediaMetadata$BitmapEntry;
    iget-object v1, v0, Landroidx/media2/common/MediaMetadata$BitmapEntry;->mKey:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/common/MediaMetadata$BitmapEntry;->mKey:Ljava/lang/String;

    .line 16
    iget-object v1, v0, Landroidx/media2/common/MediaMetadata$BitmapEntry;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readParcelable(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroidx/media2/common/MediaMetadata$BitmapEntry;->mBitmap:Landroid/graphics/Bitmap;

    .line 17
    return-object v0
.end method

.method public static write(Landroidx/media2/common/MediaMetadata$BitmapEntry;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 2
    .param p0, "obj"    # Landroidx/media2/common/MediaMetadata$BitmapEntry;
    .param p1, "parcel"    # Landroidx/versionedparcelable/VersionedParcel;

    .line 22
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroidx/versionedparcelable/VersionedParcel;->setSerializationFlags(ZZ)V

    .line 23
    iget-object v0, p0, Landroidx/media2/common/MediaMetadata$BitmapEntry;->mKey:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;I)V

    .line 24
    iget-object v0, p0, Landroidx/media2/common/MediaMetadata$BitmapEntry;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 25
    return-void
.end method
