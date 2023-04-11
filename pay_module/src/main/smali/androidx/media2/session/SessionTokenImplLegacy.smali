.class final Landroidx/media2/session/SessionTokenImplLegacy;
.super Landroidx/versionedparcelable/CustomVersionedParcelable;
.source "SessionTokenImplLegacy.java"

# interfaces
.implements Landroidx/media2/session/SessionToken$SessionTokenImpl;


# instance fields
.field mComponentName:Landroid/content/ComponentName;

.field mExtras:Landroid/os/Bundle;

.field private mLegacyToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field mLegacyTokenBundle:Landroid/os/Bundle;

.field mPackageName:Ljava/lang/String;

.field mType:I

.field mUid:I


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    .line 99
    return-void
.end method

.method constructor <init>(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "serviceComponent"    # Landroid/content/ComponentName;
    .param p2, "uid"    # I

    .line 79
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    .line 80
    if-eqz p1, :cond_0

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mLegacyToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 85
    iput p2, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mUid:I

    .line 86
    const/16 v1, 0x65

    iput v1, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mType:I

    .line 87
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mPackageName:Ljava/lang/String;

    .line 88
    iput-object p1, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mComponentName:Landroid/content/ComponentName;

    .line 89
    iput-object v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mExtras:Landroid/os/Bundle;

    .line 90
    return-void

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "serviceComponent shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$Token;Ljava/lang/String;I)V
    .locals 2
    .param p1, "token"    # Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 61
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    .line 62
    if-eqz p1, :cond_2

    .line 65
    if-eqz p2, :cond_1

    .line 67
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iput-object p1, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mLegacyToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 72
    iput p3, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mUid:I

    .line 73
    iput-object p2, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mPackageName:Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mComponentName:Landroid/content/ComponentName;

    .line 75
    const/16 v1, 0x64

    iput v1, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mType:I

    .line 76
    iput-object v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mExtras:Landroid/os/Bundle;

    .line 77
    return-void

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "packageName shouldn\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "packageName shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "token shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 108
    instance-of v0, p1, Landroidx/media2/session/SessionTokenImplLegacy;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 109
    return v1

    .line 111
    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/media2/session/SessionTokenImplLegacy;

    .line 112
    .local v0, "other":Landroidx/media2/session/SessionTokenImplLegacy;
    iget v2, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mType:I

    iget v3, v0, Landroidx/media2/session/SessionTokenImplLegacy;->mType:I

    if-eq v2, v3, :cond_1

    .line 113
    return v1

    .line 115
    :cond_1
    packed-switch v2, :pswitch_data_0

    .line 121
    return v1

    .line 119
    :pswitch_0
    iget-object v1, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mComponentName:Landroid/content/ComponentName;

    iget-object v2, v0, Landroidx/media2/session/SessionTokenImplLegacy;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v1, v2}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 117
    :pswitch_1
    iget-object v1, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mLegacyToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object v2, v0, Landroidx/media2/session/SessionTokenImplLegacy;->mLegacyToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-static {v1, v2}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getBinder()Ljava/lang/Object;
    .locals 1

    .line 173
    iget-object v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mLegacyToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 151
    iget-object v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 168
    iget-object v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 141
    iget-object v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 146
    iget-object v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getType()I
    .locals 2

    .line 156
    iget v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mType:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 162
    return v1

    .line 160
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 158
    :pswitch_1
    return v1

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getUid()I
    .locals 1

    .line 136
    iget v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mUid:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 103
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mComponentName:Landroid/content/ComponentName;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mLegacyToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Landroidx/core/util/ObjectsCompat;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isLegacySession()Z
    .locals 1

    .line 126
    const/4 v0, 0x1

    return v0
.end method

.method public onPostParceling()V
    .locals 1

    .line 202
    iget-object v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mLegacyTokenBundle:Landroid/os/Bundle;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mLegacyToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mLegacyTokenBundle:Landroid/os/Bundle;

    .line 204
    return-void
.end method

.method public onPreParceling(Z)V
    .locals 3
    .param p1, "isStream"    # Z

    .line 178
    iget-object v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mLegacyToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->getSession2Token()Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v0

    .line 185
    .local v0, "token":Landroidx/versionedparcelable/VersionedParcelable;
    iget-object v2, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mLegacyToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v2, v1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->setSession2Token(Landroidx/versionedparcelable/VersionedParcelable;)V

    .line 189
    iget-object v1, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mLegacyToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mLegacyTokenBundle:Landroid/os/Bundle;

    .line 192
    iget-object v1, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mLegacyToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->setSession2Token(Landroidx/versionedparcelable/VersionedParcelable;)V

    .line 193
    .end local v0    # "token":Landroidx/versionedparcelable/VersionedParcelable;
    goto :goto_0

    .line 194
    :cond_0
    iput-object v1, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mLegacyTokenBundle:Landroid/os/Bundle;

    .line 196
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SessionToken {legacyToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mLegacyToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
