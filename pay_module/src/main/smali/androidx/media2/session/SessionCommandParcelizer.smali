.class public final Landroidx/media2/session/SessionCommandParcelizer;
.super Ljava/lang/Object;
.source "SessionCommandParcelizer.java"


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

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Landroidx/media2/session/SessionCommand;
    .locals 3
    .param p0, "parcel"    # Landroidx/versionedparcelable/VersionedParcel;

    .line 14
    new-instance v0, Landroidx/media2/session/SessionCommand;

    invoke-direct {v0}, Landroidx/media2/session/SessionCommand;-><init>()V

    .line 15
    .local v0, "obj":Landroidx/media2/session/SessionCommand;
    iget v1, v0, Landroidx/media2/session/SessionCommand;->mCommandCode:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readInt(II)I

    move-result v1

    iput v1, v0, Landroidx/media2/session/SessionCommand;->mCommandCode:I

    .line 16
    iget-object v1, v0, Landroidx/media2/session/SessionCommand;->mCustomAction:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/session/SessionCommand;->mCustomAction:Ljava/lang/String;

    .line 17
    iget-object v1, v0, Landroidx/media2/session/SessionCommand;->mCustomExtras:Landroid/os/Bundle;

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readBundle(Landroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/session/SessionCommand;->mCustomExtras:Landroid/os/Bundle;

    .line 18
    return-object v0
.end method

.method public static write(Landroidx/media2/session/SessionCommand;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 2
    .param p0, "obj"    # Landroidx/media2/session/SessionCommand;
    .param p1, "parcel"    # Landroidx/versionedparcelable/VersionedParcel;

    .line 23
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroidx/versionedparcelable/VersionedParcel;->setSerializationFlags(ZZ)V

    .line 24
    iget v0, p0, Landroidx/media2/session/SessionCommand;->mCommandCode:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(II)V

    .line 25
    iget-object v0, p0, Landroidx/media2/session/SessionCommand;->mCustomAction:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;I)V

    .line 26
    iget-object v0, p0, Landroidx/media2/session/SessionCommand;->mCustomExtras:Landroid/os/Bundle;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeBundle(Landroid/os/Bundle;I)V

    .line 27
    return-void
.end method
