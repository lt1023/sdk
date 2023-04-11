.class public final Landroidx/media2/common/SessionPlayer$TrackInfo;
.super Landroidx/versionedparcelable/CustomVersionedParcelable;
.source "SessionPlayer.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/common/SessionPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrackInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/common/SessionPlayer$TrackInfo$MediaTrackType;
    }
.end annotation


# static fields
.field public static final MEDIA_TRACK_TYPE_AUDIO:I = 0x2

.field public static final MEDIA_TRACK_TYPE_METADATA:I = 0x5

.field public static final MEDIA_TRACK_TYPE_SUBTITLE:I = 0x4

.field public static final MEDIA_TRACK_TYPE_UNKNOWN:I = 0x0

.field public static final MEDIA_TRACK_TYPE_VIDEO:I = 0x1


# instance fields
.field mFormat:Landroid/media/MediaFormat;

.field mId:I

.field mMediaItem:Landroidx/media2/common/MediaItem;

.field mParcelledFormat:Landroid/os/Bundle;

.field mTrackType:I

.field mUpCastMediaItem:Landroidx/media2/common/MediaItem;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 992
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    .line 994
    return-void
.end method

.method public constructor <init>(ILandroidx/media2/common/MediaItem;ILandroid/media/MediaFormat;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "item"    # Landroidx/media2/common/MediaItem;
    .param p3, "type"    # I
    .param p4, "format"    # Landroid/media/MediaFormat;

    .line 996
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    .line 997
    iput p1, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mId:I

    .line 998
    iput-object p2, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mMediaItem:Landroidx/media2/common/MediaItem;

    .line 999
    iput p3, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mTrackType:I

    .line 1000
    iput-object p4, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    .line 1001
    return-void
.end method

.method private intEquals(Ljava/lang/String;Landroid/media/MediaFormat;Landroid/media/MediaFormat;)Z
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "format1"    # Landroid/media/MediaFormat;
    .param p3, "format2"    # Landroid/media/MediaFormat;

    .line 1173
    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    .line 1174
    .local v0, "exists1":Z
    invoke-virtual {p3, p1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    .line 1175
    .local v1, "exists2":Z
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 1176
    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p3, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 1175
    :cond_1
    nop

    .line 1178
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method private parcelIntValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 1183
    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    invoke-virtual {v0, p1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1184
    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mParcelledFormat:Landroid/os/Bundle;

    iget-object v1, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    invoke-virtual {v1, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1183
    :cond_0
    nop

    .line 1186
    :goto_0
    return-void
.end method

.method private parcelStringValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 1189
    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    invoke-virtual {v0, p1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1190
    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mParcelledFormat:Landroid/os/Bundle;

    iget-object v1, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    invoke-virtual {v1, p1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1189
    :cond_0
    nop

    .line 1192
    :goto_0
    return-void
.end method

.method private stringEquals(Ljava/lang/String;Landroid/media/MediaFormat;Landroid/media/MediaFormat;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "format1"    # Landroid/media/MediaFormat;
    .param p3, "format2"    # Landroid/media/MediaFormat;

    .line 1169
    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private unparcelIntValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 1195
    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mParcelledFormat:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1196
    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    iget-object v1, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mParcelledFormat:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_0

    .line 1195
    :cond_0
    nop

    .line 1198
    :goto_0
    return-void
.end method

.method private unparcelStringValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 1201
    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mParcelledFormat:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1202
    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    iget-object v1, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mParcelledFormat:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1201
    :cond_0
    nop

    .line 1204
    :goto_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1090
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1091
    return v0

    .line 1093
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 1094
    return v1

    .line 1096
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 1097
    return v1

    .line 1099
    :cond_2
    move-object v2, p1

    check-cast v2, Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 1100
    .local v2, "other":Landroidx/media2/common/SessionPlayer$TrackInfo;
    iget v3, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mId:I

    iget v4, v2, Landroidx/media2/common/SessionPlayer$TrackInfo;->mId:I

    if-eq v3, v4, :cond_3

    .line 1101
    return v1

    .line 1103
    :cond_3
    iget v3, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mTrackType:I

    iget v4, v2, Landroidx/media2/common/SessionPlayer$TrackInfo;->mTrackType:I

    if-eq v3, v4, :cond_4

    .line 1104
    return v1

    .line 1106
    :cond_4
    iget-object v3, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    if-nez v3, :cond_5

    iget-object v3, v2, Landroidx/media2/common/SessionPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    if-nez v3, :cond_5

    goto :goto_0

    .line 1108
    :cond_5
    iget-object v3, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    if-nez v3, :cond_6

    iget-object v3, v2, Landroidx/media2/common/SessionPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    if-eqz v3, :cond_6

    .line 1109
    return v1

    .line 1108
    :cond_6
    nop

    .line 1110
    iget-object v3, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    if-eqz v3, :cond_7

    iget-object v3, v2, Landroidx/media2/common/SessionPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    if-nez v3, :cond_7

    .line 1111
    return v1

    .line 1110
    :cond_7
    nop

    .line 1113
    const-string v3, "language"

    iget-object v4, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    iget-object v5, v2, Landroidx/media2/common/SessionPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    invoke-direct {p0, v3, v4, v5}, Landroidx/media2/common/SessionPlayer$TrackInfo;->stringEquals(Ljava/lang/String;Landroid/media/MediaFormat;Landroid/media/MediaFormat;)Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "mime"

    iget-object v4, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    iget-object v5, v2, Landroidx/media2/common/SessionPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    .line 1114
    invoke-direct {p0, v3, v4, v5}, Landroidx/media2/common/SessionPlayer$TrackInfo;->stringEquals(Ljava/lang/String;Landroid/media/MediaFormat;Landroid/media/MediaFormat;)Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "is-forced-subtitle"

    iget-object v4, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    iget-object v5, v2, Landroidx/media2/common/SessionPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    .line 1115
    invoke-direct {p0, v3, v4, v5}, Landroidx/media2/common/SessionPlayer$TrackInfo;->intEquals(Ljava/lang/String;Landroid/media/MediaFormat;Landroid/media/MediaFormat;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v3, "is-autoselect"

    iget-object v4, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    iget-object v5, v2, Landroidx/media2/common/SessionPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    .line 1116
    invoke-direct {p0, v3, v4, v5}, Landroidx/media2/common/SessionPlayer$TrackInfo;->intEquals(Ljava/lang/String;Landroid/media/MediaFormat;Landroid/media/MediaFormat;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "is-default"

    iget-object v4, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    iget-object v5, v2, Landroidx/media2/common/SessionPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    .line 1117
    invoke-direct {p0, v3, v4, v5}, Landroidx/media2/common/SessionPlayer$TrackInfo;->intEquals(Ljava/lang/String;Landroid/media/MediaFormat;Landroid/media/MediaFormat;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_2

    .line 1123
    :cond_8
    :goto_0
    iget-object v3, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mMediaItem:Landroidx/media2/common/MediaItem;

    if-nez v3, :cond_9

    iget-object v3, v2, Landroidx/media2/common/SessionPlayer$TrackInfo;->mMediaItem:Landroidx/media2/common/MediaItem;

    if-nez v3, :cond_9

    .line 1124
    return v0

    .line 1123
    :cond_9
    nop

    .line 1125
    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mMediaItem:Landroidx/media2/common/MediaItem;

    if-eqz v0, :cond_c

    iget-object v3, v2, Landroidx/media2/common/SessionPlayer$TrackInfo;->mMediaItem:Landroidx/media2/common/MediaItem;

    if-nez v3, :cond_a

    goto :goto_1

    .line 1128
    :cond_a
    invoke-virtual {v0}, Landroidx/media2/common/MediaItem;->getMediaId()Ljava/lang/String;

    move-result-object v0

    .line 1129
    .local v0, "mediaId":Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 1130
    iget-object v1, v2, Landroidx/media2/common/SessionPlayer$TrackInfo;->mMediaItem:Landroidx/media2/common/MediaItem;

    invoke-virtual {v1}, Landroidx/media2/common/MediaItem;->getMediaId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 1132
    :cond_b
    iget-object v1, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mMediaItem:Landroidx/media2/common/MediaItem;

    iget-object v3, v2, Landroidx/media2/common/SessionPlayer$TrackInfo;->mMediaItem:Landroidx/media2/common/MediaItem;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 1125
    .end local v0    # "mediaId":Ljava/lang/String;
    :cond_c
    :goto_1
    nop

    .line 1126
    return v1

    .line 1116
    :cond_d
    goto :goto_2

    .line 1115
    :cond_e
    goto :goto_2

    .line 1114
    :cond_f
    goto :goto_2

    .line 1113
    :cond_10
    nop

    .line 1118
    :goto_2
    return v1
.end method

.method public getFormat()Landroid/media/MediaFormat;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1031
    iget v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mTrackType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1032
    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    return-object v0

    .line 1034
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1038
    iget v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mId:I

    return v0
.end method

.method public getLanguage()Ljava/util/Locale;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1018
    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    const-string v1, "language"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1019
    .local v0, "language":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_1

    .line 1020
    const-string/jumbo v0, "und"

    goto :goto_1

    .line 1019
    :cond_1
    nop

    .line 1022
    :goto_1
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public getMediaItem()Landroidx/media2/common/MediaItem;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1043
    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mMediaItem:Landroidx/media2/common/MediaItem;

    return-object v0
.end method

.method public getTrackType()I
    .locals 1

    .line 1009
    iget v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mTrackType:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1073
    const/16 v0, 0x1f

    .line 1074
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 1075
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mId:I

    add-int/2addr v2, v3

    .line 1076
    .end local v1    # "result":I
    .local v2, "result":I
    const/4 v1, 0x0

    .line 1077
    .local v1, "hashCode":I
    iget-object v3, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mMediaItem:Landroidx/media2/common/MediaItem;

    if-eqz v3, :cond_1

    .line 1078
    invoke-virtual {v3}, Landroidx/media2/common/MediaItem;->getMediaId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1079
    iget-object v3, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mMediaItem:Landroidx/media2/common/MediaItem;

    invoke-virtual {v3}, Landroidx/media2/common/MediaItem;->getMediaId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 1081
    :cond_0
    iget-object v3, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mMediaItem:Landroidx/media2/common/MediaItem;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    .line 1077
    :cond_1
    nop

    .line 1084
    :goto_0
    mul-int/lit8 v3, v2, 0x1f

    add-int/2addr v3, v1

    .line 1085
    .end local v2    # "result":I
    .local v3, "result":I
    return v3
.end method

.method public onPostParceling()V
    .locals 1

    .line 1155
    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mParcelledFormat:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 1156
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    iput-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    .line 1157
    const-string v0, "language"

    invoke-direct {p0, v0}, Landroidx/media2/common/SessionPlayer$TrackInfo;->unparcelStringValue(Ljava/lang/String;)V

    .line 1158
    const-string v0, "mime"

    invoke-direct {p0, v0}, Landroidx/media2/common/SessionPlayer$TrackInfo;->unparcelStringValue(Ljava/lang/String;)V

    .line 1159
    const-string v0, "is-forced-subtitle"

    invoke-direct {p0, v0}, Landroidx/media2/common/SessionPlayer$TrackInfo;->unparcelIntValue(Ljava/lang/String;)V

    .line 1160
    const-string v0, "is-autoselect"

    invoke-direct {p0, v0}, Landroidx/media2/common/SessionPlayer$TrackInfo;->unparcelIntValue(Ljava/lang/String;)V

    .line 1161
    const-string v0, "is-default"

    invoke-direct {p0, v0}, Landroidx/media2/common/SessionPlayer$TrackInfo;->unparcelIntValue(Ljava/lang/String;)V

    goto :goto_0

    .line 1155
    :cond_0
    nop

    .line 1163
    :goto_0
    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mMediaItem:Landroidx/media2/common/MediaItem;

    if-nez v0, :cond_1

    .line 1164
    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mUpCastMediaItem:Landroidx/media2/common/MediaItem;

    iput-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mMediaItem:Landroidx/media2/common/MediaItem;

    goto :goto_1

    .line 1163
    :cond_1
    nop

    .line 1166
    :goto_1
    return-void
.end method

.method public onPreParceling(Z)V
    .locals 2
    .param p1, "isStream"    # Z

    .line 1138
    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    .line 1139
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mParcelledFormat:Landroid/os/Bundle;

    .line 1140
    const-string v0, "language"

    invoke-direct {p0, v0}, Landroidx/media2/common/SessionPlayer$TrackInfo;->parcelStringValue(Ljava/lang/String;)V

    .line 1141
    const-string v0, "mime"

    invoke-direct {p0, v0}, Landroidx/media2/common/SessionPlayer$TrackInfo;->parcelStringValue(Ljava/lang/String;)V

    .line 1142
    const-string v0, "is-forced-subtitle"

    invoke-direct {p0, v0}, Landroidx/media2/common/SessionPlayer$TrackInfo;->parcelIntValue(Ljava/lang/String;)V

    .line 1143
    const-string v0, "is-autoselect"

    invoke-direct {p0, v0}, Landroidx/media2/common/SessionPlayer$TrackInfo;->parcelIntValue(Ljava/lang/String;)V

    .line 1144
    const-string v0, "is-default"

    invoke-direct {p0, v0}, Landroidx/media2/common/SessionPlayer$TrackInfo;->parcelIntValue(Ljava/lang/String;)V

    goto :goto_0

    .line 1138
    :cond_0
    nop

    .line 1148
    :goto_0
    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mMediaItem:Landroidx/media2/common/MediaItem;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mUpCastMediaItem:Landroidx/media2/common/MediaItem;

    if-nez v1, :cond_1

    .line 1149
    new-instance v1, Landroidx/media2/common/MediaItem;

    invoke-direct {v1, v0}, Landroidx/media2/common/MediaItem;-><init>(Landroidx/media2/common/MediaItem;)V

    iput-object v1, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mUpCastMediaItem:Landroidx/media2/common/MediaItem;

    goto :goto_1

    .line 1148
    :cond_1
    nop

    .line 1151
    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1048
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1049
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1050
    const-string v1, ", id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1051
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", MediaItem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mMediaItem:Landroidx/media2/common/MediaItem;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1052
    const-string v1, ", TrackType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1053
    iget v1, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mTrackType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    .line 1064
    const-string v1, "UNKNOWN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1058
    :pswitch_0
    const-string v1, "AUDIO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1059
    goto :goto_0

    .line 1055
    :pswitch_1
    const-string v1, "VIDEO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1056
    goto :goto_0

    .line 1061
    :cond_0
    const-string v1, "SUBTITLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1062
    nop

    .line 1067
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1068
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
