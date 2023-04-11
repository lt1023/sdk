.class public final Landroidx/media2/common/SubtitleDataParcelizer;
.super Ljava/lang/Object;
.source "SubtitleDataParcelizer.java"


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

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Landroidx/media2/common/SubtitleData;
    .locals 4
    .param p0, "parcel"    # Landroidx/versionedparcelable/VersionedParcel;

    .line 14
    new-instance v0, Landroidx/media2/common/SubtitleData;

    invoke-direct {v0}, Landroidx/media2/common/SubtitleData;-><init>()V

    .line 15
    .local v0, "obj":Landroidx/media2/common/SubtitleData;
    iget-wide v1, v0, Landroidx/media2/common/SubtitleData;->mStartTimeUs:J

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Landroidx/versionedparcelable/VersionedParcel;->readLong(JI)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media2/common/SubtitleData;->mStartTimeUs:J

    .line 16
    iget-wide v1, v0, Landroidx/media2/common/SubtitleData;->mDurationUs:J

    const/4 v3, 0x2

    invoke-virtual {p0, v1, v2, v3}, Landroidx/versionedparcelable/VersionedParcel;->readLong(JI)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media2/common/SubtitleData;->mDurationUs:J

    .line 17
    iget-object v1, v0, Landroidx/media2/common/SubtitleData;->mData:[B

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readByteArray([BI)[B

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/common/SubtitleData;->mData:[B

    .line 18
    return-object v0
.end method

.method public static write(Landroidx/media2/common/SubtitleData;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 3
    .param p0, "obj"    # Landroidx/media2/common/SubtitleData;
    .param p1, "parcel"    # Landroidx/versionedparcelable/VersionedParcel;

    .line 23
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroidx/versionedparcelable/VersionedParcel;->setSerializationFlags(ZZ)V

    .line 24
    iget-wide v0, p0, Landroidx/media2/common/SubtitleData;->mStartTimeUs:J

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeLong(JI)V

    .line 25
    iget-wide v0, p0, Landroidx/media2/common/SubtitleData;->mDurationUs:J

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeLong(JI)V

    .line 26
    iget-object v0, p0, Landroidx/media2/common/SubtitleData;->mData:[B

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeByteArray([BI)V

    .line 27
    return-void
.end method
