.class public final Landroidx/media2/session/MediaController$PlaybackInfo;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Landroidx/versionedparcelable/VersionedParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaybackInfo"
.end annotation


# static fields
.field public static final PLAYBACK_TYPE_LOCAL:I = 0x1

.field public static final PLAYBACK_TYPE_REMOTE:I = 0x2


# instance fields
.field mAudioAttrsCompat:Landroidx/media/AudioAttributesCompat;

.field mControlType:I

.field mCurrentVolume:I

.field mMaxVolume:I

.field mPlaybackType:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1954
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1955
    return-void
.end method

.method constructor <init>(ILandroidx/media/AudioAttributesCompat;III)V
    .locals 0
    .param p1, "playbackType"    # I
    .param p2, "attrs"    # Landroidx/media/AudioAttributesCompat;
    .param p3, "controlType"    # I
    .param p4, "max"    # I
    .param p5, "current"    # I

    .line 1958
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1959
    iput p1, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->mPlaybackType:I

    .line 1960
    iput-object p2, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->mAudioAttrsCompat:Landroidx/media/AudioAttributesCompat;

    .line 1961
    iput p3, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->mControlType:I

    .line 1962
    iput p4, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->mMaxVolume:I

    .line 1963
    iput p5, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->mCurrentVolume:I

    .line 1964
    return-void
.end method

.method static createPlaybackInfo(ILandroidx/media/AudioAttributesCompat;III)Landroidx/media2/session/MediaController$PlaybackInfo;
    .locals 7
    .param p0, "playbackType"    # I
    .param p1, "attrs"    # Landroidx/media/AudioAttributesCompat;
    .param p2, "controlType"    # I
    .param p3, "max"    # I
    .param p4, "current"    # I

    .line 2049
    new-instance v6, Landroidx/media2/session/MediaController$PlaybackInfo;

    move-object v0, v6

    move v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/media2/session/MediaController$PlaybackInfo;-><init>(ILandroidx/media/AudioAttributesCompat;III)V

    return-object v6
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2036
    instance-of v0, p1, Landroidx/media2/session/MediaController$PlaybackInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2037
    return v1

    .line 2039
    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/media2/session/MediaController$PlaybackInfo;

    .line 2040
    .local v0, "other":Landroidx/media2/session/MediaController$PlaybackInfo;
    iget v2, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->mPlaybackType:I

    iget v3, v0, Landroidx/media2/session/MediaController$PlaybackInfo;->mPlaybackType:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->mControlType:I

    iget v3, v0, Landroidx/media2/session/MediaController$PlaybackInfo;->mControlType:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->mMaxVolume:I

    iget v3, v0, Landroidx/media2/session/MediaController$PlaybackInfo;->mMaxVolume:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->mCurrentVolume:I

    iget v3, v0, Landroidx/media2/session/MediaController$PlaybackInfo;->mCurrentVolume:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->mAudioAttrsCompat:Landroidx/media/AudioAttributesCompat;

    iget-object v3, v0, Landroidx/media2/session/MediaController$PlaybackInfo;->mAudioAttrsCompat:Landroidx/media/AudioAttributesCompat;

    .line 2044
    invoke-static {v2, v3}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    goto :goto_0

    .line 2040
    :cond_2
    nop

    .line 2044
    :goto_0
    nop

    .line 2040
    :goto_1
    return v1
.end method

.method public getAudioAttributes()Landroidx/media/AudioAttributesCompat;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1989
    iget-object v0, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->mAudioAttrsCompat:Landroidx/media/AudioAttributesCompat;

    return-object v0
.end method

.method public getControlType()I
    .locals 1

    .line 2003
    iget v0, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->mControlType:I

    return v0
.end method

.method public getCurrentVolume()I
    .locals 1

    .line 2025
    iget v0, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->mCurrentVolume:I

    return v0
.end method

.method public getMaxVolume()I
    .locals 1

    .line 2014
    iget v0, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->mMaxVolume:I

    return v0
.end method

.method public getPlaybackType()I
    .locals 1

    .line 1976
    iget v0, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->mPlaybackType:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 2030
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->mPlaybackType:I

    .line 2031
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->mControlType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->mMaxVolume:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->mCurrentVolume:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->mAudioAttrsCompat:Landroidx/media/AudioAttributesCompat;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 2030
    invoke-static {v0}, Landroidx/core/util/ObjectsCompat;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
