.class public final Landroidx/media2/session/HeartRatingParcelizer;
.super Ljava/lang/Object;
.source "HeartRatingParcelizer.java"


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

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Landroidx/media2/session/HeartRating;
    .locals 3
    .param p0, "parcel"    # Landroidx/versionedparcelable/VersionedParcel;

    .line 14
    new-instance v0, Landroidx/media2/session/HeartRating;

    invoke-direct {v0}, Landroidx/media2/session/HeartRating;-><init>()V

    .line 15
    .local v0, "obj":Landroidx/media2/session/HeartRating;
    iget-boolean v1, v0, Landroidx/media2/session/HeartRating;->mIsRated:Z

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readBoolean(ZI)Z

    move-result v1

    iput-boolean v1, v0, Landroidx/media2/session/HeartRating;->mIsRated:Z

    .line 16
    iget-boolean v1, v0, Landroidx/media2/session/HeartRating;->mHasHeart:Z

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readBoolean(ZI)Z

    move-result v1

    iput-boolean v1, v0, Landroidx/media2/session/HeartRating;->mHasHeart:Z

    .line 17
    return-object v0
.end method

.method public static write(Landroidx/media2/session/HeartRating;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 2
    .param p0, "obj"    # Landroidx/media2/session/HeartRating;
    .param p1, "parcel"    # Landroidx/versionedparcelable/VersionedParcel;

    .line 22
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroidx/versionedparcelable/VersionedParcel;->setSerializationFlags(ZZ)V

    .line 23
    iget-boolean v0, p0, Landroidx/media2/session/HeartRating;->mIsRated:Z

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeBoolean(ZI)V

    .line 24
    iget-boolean v0, p0, Landroidx/media2/session/HeartRating;->mHasHeart:Z

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeBoolean(ZI)V

    .line 25
    return-void
.end method
