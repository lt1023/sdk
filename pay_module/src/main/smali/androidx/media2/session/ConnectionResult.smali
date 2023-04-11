.class Landroidx/media2/session/ConnectionResult;
.super Landroidx/versionedparcelable/CustomVersionedParcelable;
.source "ConnectionResult.java"


# instance fields
.field mAllowedCommands:Landroidx/media2/session/SessionCommandGroup;

.field mBufferedPositionMs:J

.field mCurrentMediaItem:Landroidx/media2/common/MediaItem;

.field mCurrentMediaItemIndex:I

.field mNextMediaItemIndex:I

.field mParcelableCurrentMediaItem:Landroidx/media2/common/MediaItem;

.field mPlaybackInfo:Landroidx/media2/session/MediaController$PlaybackInfo;

.field mPlaybackSpeed:F

.field mPlayerState:I

.field mPlaylistSlice:Landroidx/media2/common/ParcelImplListSlice;

.field mPositionEventTimeMs:J

.field mPositionMs:J

.field mPreviousMediaItemIndex:I

.field mRepeatMode:I

.field mSelectedAudioTrack:Landroidx/media2/common/SessionPlayer$TrackInfo;

.field mSelectedMetadataTrack:Landroidx/media2/common/SessionPlayer$TrackInfo;

.field mSelectedSubtitleTrack:Landroidx/media2/common/SessionPlayer$TrackInfo;

.field mSelectedVideoTrack:Landroidx/media2/common/SessionPlayer$TrackInfo;

.field mSessionActivity:Landroid/app/PendingIntent;

.field mSessionBinder:Landroid/os/IBinder;

.field mSessionStub:Landroidx/media2/session/IMediaSession;

.field mShuffleMode:I

.field mTokenExtras:Landroid/os/Bundle;

.field mTrackInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field mVersion:I

.field mVideoSize:Landroidx/media2/common/VideoSize;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    .line 102
    return-void
.end method

.method constructor <init>(Landroidx/media2/session/MediaSessionStub;Landroidx/media2/session/MediaSession$MediaSessionImpl;Landroidx/media2/session/SessionCommandGroup;)V
    .locals 2
    .param p1, "sessionStub"    # Landroidx/media2/session/MediaSessionStub;
    .param p2, "sessionImpl"    # Landroidx/media2/session/MediaSession$MediaSessionImpl;
    .param p3, "allowedCommands"    # Landroidx/media2/session/SessionCommandGroup;

    .line 105
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    .line 106
    iput-object p1, p0, Landroidx/media2/session/ConnectionResult;->mSessionStub:Landroidx/media2/session/IMediaSession;

    .line 107
    invoke-interface {p2}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getPlayerState()I

    move-result v0

    iput v0, p0, Landroidx/media2/session/ConnectionResult;->mPlayerState:I

    .line 108
    invoke-interface {p2}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getCurrentMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/session/ConnectionResult;->mCurrentMediaItem:Landroidx/media2/common/MediaItem;

    .line 109
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/session/ConnectionResult;->mPositionEventTimeMs:J

    .line 110
    invoke-interface {p2}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/session/ConnectionResult;->mPositionMs:J

    .line 111
    invoke-interface {p2}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getPlaybackSpeed()F

    move-result v0

    iput v0, p0, Landroidx/media2/session/ConnectionResult;->mPlaybackSpeed:F

    .line 112
    invoke-interface {p2}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getBufferedPosition()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/session/ConnectionResult;->mBufferedPositionMs:J

    .line 113
    invoke-interface {p2}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getPlaybackInfo()Landroidx/media2/session/MediaController$PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/session/ConnectionResult;->mPlaybackInfo:Landroidx/media2/session/MediaController$PlaybackInfo;

    .line 114
    invoke-interface {p2}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getRepeatMode()I

    move-result v0

    iput v0, p0, Landroidx/media2/session/ConnectionResult;->mRepeatMode:I

    .line 115
    invoke-interface {p2}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getShuffleMode()I

    move-result v0

    iput v0, p0, Landroidx/media2/session/ConnectionResult;->mShuffleMode:I

    .line 116
    invoke-interface {p2}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getSessionActivity()Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/session/ConnectionResult;->mSessionActivity:Landroid/app/PendingIntent;

    .line 117
    invoke-interface {p2}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getCurrentMediaItemIndex()I

    move-result v0

    iput v0, p0, Landroidx/media2/session/ConnectionResult;->mCurrentMediaItemIndex:I

    .line 118
    invoke-interface {p2}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getPreviousMediaItemIndex()I

    move-result v0

    iput v0, p0, Landroidx/media2/session/ConnectionResult;->mPreviousMediaItemIndex:I

    .line 119
    invoke-interface {p2}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getNextMediaItemIndex()I

    move-result v0

    iput v0, p0, Landroidx/media2/session/ConnectionResult;->mNextMediaItemIndex:I

    .line 120
    invoke-interface {p2}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getToken()Landroidx/media2/session/SessionToken;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media2/session/SessionToken;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/session/ConnectionResult;->mTokenExtras:Landroid/os/Bundle;

    .line 121
    invoke-interface {p2}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getVideoSize()Landroidx/media2/common/VideoSize;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/session/ConnectionResult;->mVideoSize:Landroidx/media2/common/VideoSize;

    .line 122
    invoke-interface {p2}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getTrackInfo()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/session/ConnectionResult;->mTrackInfos:Ljava/util/List;

    .line 123
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getSelectedTrack(I)Landroidx/media2/common/SessionPlayer$TrackInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/session/ConnectionResult;->mSelectedVideoTrack:Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 124
    const/4 v0, 0x2

    invoke-interface {p2, v0}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getSelectedTrack(I)Landroidx/media2/common/SessionPlayer$TrackInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/session/ConnectionResult;->mSelectedAudioTrack:Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 125
    const/4 v0, 0x4

    invoke-interface {p2, v0}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getSelectedTrack(I)Landroidx/media2/common/SessionPlayer$TrackInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/session/ConnectionResult;->mSelectedSubtitleTrack:Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 126
    const/4 v0, 0x5

    invoke-interface {p2, v0}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getSelectedTrack(I)Landroidx/media2/common/SessionPlayer$TrackInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/session/ConnectionResult;->mSelectedMetadataTrack:Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 127
    if-eqz p3, :cond_1

    const/16 v0, 0x2715

    .line 128
    invoke-virtual {p3, v0}, Landroidx/media2/session/SessionCommandGroup;->hasCommand(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-interface {p2}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getPlaylist()Ljava/util/List;

    move-result-object v0

    .line 130
    .local v0, "playlist":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/MediaItem;>;"
    invoke-static {v0}, Landroidx/media2/session/MediaUtils;->convertMediaItemListToParcelImplListSlice(Ljava/util/List;)Landroidx/media2/common/ParcelImplListSlice;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/session/ConnectionResult;->mPlaylistSlice:Landroidx/media2/common/ParcelImplListSlice;

    .line 131
    .end local v0    # "playlist":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/MediaItem;>;"
    goto :goto_1

    .line 128
    :cond_0
    goto :goto_0

    .line 127
    :cond_1
    nop

    .line 132
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/session/ConnectionResult;->mPlaylistSlice:Landroidx/media2/common/ParcelImplListSlice;

    .line 134
    :goto_1
    iput-object p3, p0, Landroidx/media2/session/ConnectionResult;->mAllowedCommands:Landroidx/media2/session/SessionCommandGroup;

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/session/ConnectionResult;->mVersion:I

    .line 136
    return-void
.end method


# virtual methods
.method public getAllowedCommands()Landroidx/media2/session/SessionCommandGroup;
    .locals 1

    .line 187
    iget-object v0, p0, Landroidx/media2/session/ConnectionResult;->mAllowedCommands:Landroidx/media2/session/SessionCommandGroup;

    return-object v0
.end method

.method public getBufferedPositionMs()J
    .locals 2

    .line 167
    iget-wide v0, p0, Landroidx/media2/session/ConnectionResult;->mBufferedPositionMs:J

    return-wide v0
.end method

.method public getCurrentMediaItem()Landroidx/media2/common/MediaItem;
    .locals 1

    .line 151
    iget-object v0, p0, Landroidx/media2/session/ConnectionResult;->mCurrentMediaItem:Landroidx/media2/common/MediaItem;

    return-object v0
.end method

.method public getCurrentMediaItemIndex()I
    .locals 1

    .line 195
    iget v0, p0, Landroidx/media2/session/ConnectionResult;->mCurrentMediaItemIndex:I

    return v0
.end method

.method public getNextMediaItemIndex()I
    .locals 1

    .line 203
    iget v0, p0, Landroidx/media2/session/ConnectionResult;->mNextMediaItemIndex:I

    return v0
.end method

.method public getPlaybackInfo()Landroidx/media2/session/MediaController$PlaybackInfo;
    .locals 1

    .line 171
    iget-object v0, p0, Landroidx/media2/session/ConnectionResult;->mPlaybackInfo:Landroidx/media2/session/MediaController$PlaybackInfo;

    return-object v0
.end method

.method public getPlaybackSpeed()F
    .locals 1

    .line 163
    iget v0, p0, Landroidx/media2/session/ConnectionResult;->mPlaybackSpeed:F

    return v0
.end method

.method public getPlayerState()I
    .locals 1

    .line 147
    iget v0, p0, Landroidx/media2/session/ConnectionResult;->mPlayerState:I

    return v0
.end method

.method public getPlaylistSlice()Landroidx/media2/common/ParcelImplListSlice;
    .locals 1

    .line 183
    iget-object v0, p0, Landroidx/media2/session/ConnectionResult;->mPlaylistSlice:Landroidx/media2/common/ParcelImplListSlice;

    return-object v0
.end method

.method public getPositionEventTimeMs()J
    .locals 2

    .line 155
    iget-wide v0, p0, Landroidx/media2/session/ConnectionResult;->mPositionEventTimeMs:J

    return-wide v0
.end method

.method public getPositionMs()J
    .locals 2

    .line 159
    iget-wide v0, p0, Landroidx/media2/session/ConnectionResult;->mPositionMs:J

    return-wide v0
.end method

.method public getPreviousMediaItemIndex()I
    .locals 1

    .line 199
    iget v0, p0, Landroidx/media2/session/ConnectionResult;->mPreviousMediaItemIndex:I

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 175
    iget v0, p0, Landroidx/media2/session/ConnectionResult;->mRepeatMode:I

    return v0
.end method

.method public getSelectedAudioTrack()Landroidx/media2/common/SessionPlayer$TrackInfo;
    .locals 1

    .line 223
    iget-object v0, p0, Landroidx/media2/session/ConnectionResult;->mSelectedAudioTrack:Landroidx/media2/common/SessionPlayer$TrackInfo;

    return-object v0
.end method

.method public getSelectedMetadataTrack()Landroidx/media2/common/SessionPlayer$TrackInfo;
    .locals 1

    .line 231
    iget-object v0, p0, Landroidx/media2/session/ConnectionResult;->mSelectedMetadataTrack:Landroidx/media2/common/SessionPlayer$TrackInfo;

    return-object v0
.end method

.method public getSelectedSubtitleTrack()Landroidx/media2/common/SessionPlayer$TrackInfo;
    .locals 1

    .line 227
    iget-object v0, p0, Landroidx/media2/session/ConnectionResult;->mSelectedSubtitleTrack:Landroidx/media2/common/SessionPlayer$TrackInfo;

    return-object v0
.end method

.method public getSelectedVideoTrack()Landroidx/media2/common/SessionPlayer$TrackInfo;
    .locals 1

    .line 219
    iget-object v0, p0, Landroidx/media2/session/ConnectionResult;->mSelectedVideoTrack:Landroidx/media2/common/SessionPlayer$TrackInfo;

    return-object v0
.end method

.method public getSessionActivity()Landroid/app/PendingIntent;
    .locals 1

    .line 143
    iget-object v0, p0, Landroidx/media2/session/ConnectionResult;->mSessionActivity:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getSessionStub()Landroidx/media2/session/IMediaSession;
    .locals 1

    .line 139
    iget-object v0, p0, Landroidx/media2/session/ConnectionResult;->mSessionStub:Landroidx/media2/session/IMediaSession;

    return-object v0
.end method

.method public getShuffleMode()I
    .locals 1

    .line 179
    iget v0, p0, Landroidx/media2/session/ConnectionResult;->mShuffleMode:I

    return v0
.end method

.method public getTokenExtras()Landroid/os/Bundle;
    .locals 1

    .line 207
    iget-object v0, p0, Landroidx/media2/session/ConnectionResult;->mTokenExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getTrackInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Landroidx/media2/session/ConnectionResult;->mTrackInfos:Ljava/util/List;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 191
    iget v0, p0, Landroidx/media2/session/ConnectionResult;->mVersion:I

    return v0
.end method

.method public getVideoSize()Landroidx/media2/common/VideoSize;
    .locals 1

    .line 211
    iget-object v0, p0, Landroidx/media2/session/ConnectionResult;->mVideoSize:Landroidx/media2/common/VideoSize;

    return-object v0
.end method

.method public onPostParceling()V
    .locals 2

    .line 242
    iget-object v0, p0, Landroidx/media2/session/ConnectionResult;->mSessionBinder:Landroid/os/IBinder;

    invoke-static {v0}, Landroidx/media2/session/IMediaSession$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaSession;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/session/ConnectionResult;->mSessionStub:Landroidx/media2/session/IMediaSession;

    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/session/ConnectionResult;->mSessionBinder:Landroid/os/IBinder;

    .line 244
    iget-object v1, p0, Landroidx/media2/session/ConnectionResult;->mParcelableCurrentMediaItem:Landroidx/media2/common/MediaItem;

    iput-object v1, p0, Landroidx/media2/session/ConnectionResult;->mCurrentMediaItem:Landroidx/media2/common/MediaItem;

    .line 245
    iput-object v0, p0, Landroidx/media2/session/ConnectionResult;->mParcelableCurrentMediaItem:Landroidx/media2/common/MediaItem;

    .line 246
    return-void
.end method

.method public onPreParceling(Z)V
    .locals 1
    .param p1, "isStream"    # Z

    .line 236
    iget-object v0, p0, Landroidx/media2/session/ConnectionResult;->mSessionStub:Landroidx/media2/session/IMediaSession;

    check-cast v0, Landroid/os/IBinder;

    iput-object v0, p0, Landroidx/media2/session/ConnectionResult;->mSessionBinder:Landroid/os/IBinder;

    .line 237
    iget-object v0, p0, Landroidx/media2/session/ConnectionResult;->mCurrentMediaItem:Landroidx/media2/common/MediaItem;

    invoke-static {v0}, Landroidx/media2/session/MediaUtils;->upcastForPreparceling(Landroidx/media2/common/MediaItem;)Landroidx/media2/common/MediaItem;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/session/ConnectionResult;->mParcelableCurrentMediaItem:Landroidx/media2/common/MediaItem;

    .line 238
    return-void
.end method
