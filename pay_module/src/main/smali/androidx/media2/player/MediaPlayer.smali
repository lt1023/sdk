.class public final Landroidx/media2/player/MediaPlayer;
.super Landroidx/media2/common/SessionPlayer;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/player/MediaPlayer$MediaItemList;,
        Landroidx/media2/player/MediaPlayer$DrmResult;,
        Landroidx/media2/player/MediaPlayer$MetricsConstants;,
        Landroidx/media2/player/MediaPlayer$NoDrmSchemeException;,
        Landroidx/media2/player/MediaPlayer$OnDrmConfigHelper;,
        Landroidx/media2/player/MediaPlayer$DrmInfo;,
        Landroidx/media2/player/MediaPlayer$TrackInfo;,
        Landroidx/media2/player/MediaPlayer$PlayerCallback;,
        Landroidx/media2/player/MediaPlayer$Mp2Callback;,
        Landroidx/media2/player/MediaPlayer$Mp2DrmCallback;,
        Landroidx/media2/player/MediaPlayer$MediaPlayerCallbackNotifier;,
        Landroidx/media2/player/MediaPlayer$SessionPlayerCallbackNotifier;,
        Landroidx/media2/player/MediaPlayer$PendingFuture;,
        Landroidx/media2/player/MediaPlayer$PendingCommand;,
        Landroidx/media2/player/MediaPlayer$SeekMode;,
        Landroidx/media2/player/MediaPlayer$MediaInfo;,
        Landroidx/media2/player/MediaPlayer$MediaError;
    }
.end annotation


# static fields
.field private static final CALL_COMPLETE_PLAYLIST_BASE:I = -0x3e8

.field static final DEFAULT_PLAYBACK_PARAMS:Landroidx/media2/player/PlaybackParams;

.field private static final END_OF_PLAYLIST:I = -0x1

.field public static final MEDIA_INFO_AUDIO_NOT_PLAYING:I = 0x324

.field public static final MEDIA_INFO_BAD_INTERLEAVING:I = 0x320

.field public static final MEDIA_INFO_BUFFERING_END:I = 0x2be
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final MEDIA_INFO_BUFFERING_START:I = 0x2bd
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final MEDIA_INFO_BUFFERING_UPDATE:I = 0x2c0

.field public static final MEDIA_INFO_EXTERNAL_METADATA_UPDATE:I = 0x323
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final MEDIA_INFO_MEDIA_ITEM_END:I = 0x5
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final MEDIA_INFO_MEDIA_ITEM_LIST_END:I = 0x6
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final MEDIA_INFO_MEDIA_ITEM_REPEAT:I = 0x7
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final MEDIA_INFO_MEDIA_ITEM_START:I = 0x2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final MEDIA_INFO_METADATA_UPDATE:I = 0x322

.field public static final MEDIA_INFO_NETWORK_BANDWIDTH:I = 0x2bf
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final MEDIA_INFO_NOT_SEEKABLE:I = 0x321

.field public static final MEDIA_INFO_PREPARED:I = 0x64
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final MEDIA_INFO_SUBTITLE_TIMED_OUT:I = 0x386
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final MEDIA_INFO_UNSUPPORTED_SUBTITLE:I = 0x385
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final MEDIA_INFO_VIDEO_NOT_PLAYING:I = 0x325

.field public static final MEDIA_INFO_VIDEO_RENDERING_START:I = 0x3

.field public static final MEDIA_INFO_VIDEO_TRACK_LAGGING:I = 0x2bc

.field private static final NO_MEDIA_ITEM:I = -0x2

.field public static final NO_TRACK_SELECTED:I = -0x80000000

.field public static final PLAYER_ERROR_IO:I = -0x3ec

.field public static final PLAYER_ERROR_MALFORMED:I = -0x3ef

.field public static final PLAYER_ERROR_TIMED_OUT:I = -0x6e

.field public static final PLAYER_ERROR_UNKNOWN:I = 0x1

.field public static final PLAYER_ERROR_UNSUPPORTED:I = -0x3f2

.field public static final SEEK_CLOSEST:I = 0x3

.field public static final SEEK_CLOSEST_SYNC:I = 0x2

.field public static final SEEK_NEXT_SYNC:I = 0x1

.field public static final SEEK_PREVIOUS_SYNC:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MediaPlayer"

.field static sErrorCodeMap:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static sInfoCodeMap:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static sPrepareDrmStatusMap:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static sResultCodeMap:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static sSeekModeMap:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mAudioFocusHandler:Landroidx/media2/player/AudioFocusHandler;

.field private mClosed:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mStateLock"
    .end annotation
.end field

.field mCurPlaylistItem:Landroidx/media2/common/MediaItem;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mPlaylistLock"
    .end annotation
.end field

.field mCurrentShuffleIdx:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mPlaylistLock"
    .end annotation
.end field

.field mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mMediaItemToBuffState:Ljava/util/Map;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mStateLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/media2/common/MediaItem;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mNextPlaylistItem:Landroidx/media2/common/MediaItem;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mPlaylistLock"
    .end annotation
.end field

.field final mPendingCommands:Ljava/util/ArrayDeque;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mPendingCommands"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media2/player/MediaPlayer$PendingCommand;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingFutures:Ljava/util/ArrayDeque;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mPendingFutures"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media2/player/MediaPlayer$PendingFuture<",
            "-",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;>;"
        }
    .end annotation
.end field

.field mPlayer:Landroidx/media2/player/MediaPlayer2;

.field mPlaylist:Landroidx/media2/player/MediaPlayer$MediaItemList;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mPlaylistLock"
    .end annotation
.end field

.field final mPlaylistLock:Ljava/lang/Object;

.field mPlaylistMetadata:Landroidx/media2/common/MediaMetadata;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mPlaylistLock"
    .end annotation
.end field

.field mRepeatMode:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mPlaylistLock"
    .end annotation
.end field

.field private mSetMediaItemCalled:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mPlaylistLock"
    .end annotation
.end field

.field mShuffleMode:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mPlaylistLock"
    .end annotation
.end field

.field mShuffledList:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mPlaylistLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media2/common/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mState:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mStateLock"
    .end annotation
.end field

.field private final mStateLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 423
    new-instance v0, Landroidx/media2/player/PlaybackParams$Builder;

    invoke-direct {v0}, Landroidx/media2/player/PlaybackParams$Builder;-><init>()V

    .line 424
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroidx/media2/player/PlaybackParams$Builder;->setSpeed(F)Landroidx/media2/player/PlaybackParams$Builder;

    move-result-object v0

    .line 425
    invoke-virtual {v0, v1}, Landroidx/media2/player/PlaybackParams$Builder;->setPitch(F)Landroidx/media2/player/PlaybackParams$Builder;

    move-result-object v0

    .line 426
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media2/player/PlaybackParams$Builder;->setAudioFallbackMode(I)Landroidx/media2/player/PlaybackParams$Builder;

    move-result-object v0

    .line 427
    invoke-virtual {v0}, Landroidx/media2/player/PlaybackParams$Builder;->build()Landroidx/media2/player/PlaybackParams;

    move-result-object v0

    sput-object v0, Landroidx/media2/player/MediaPlayer;->DEFAULT_PLAYBACK_PARAMS:Landroidx/media2/player/PlaybackParams;

    .line 445
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    sput-object v0, Landroidx/media2/player/MediaPlayer;->sResultCodeMap:Landroidx/collection/ArrayMap;

    .line 446
    sget-object v0, Landroidx/media2/player/MediaPlayer;->sResultCodeMap:Landroidx/collection/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    sget-object v0, Landroidx/media2/player/MediaPlayer;->sResultCodeMap:Landroidx/collection/ArrayMap;

    const/high16 v2, -0x80000000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    sget-object v0, Landroidx/media2/player/MediaPlayer;->sResultCodeMap:Landroidx/collection/ArrayMap;

    .line 449
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, -0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 448
    invoke-virtual {v0, v3, v4}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    sget-object v0, Landroidx/media2/player/MediaPlayer;->sResultCodeMap:Landroidx/collection/ArrayMap;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, -0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    sget-object v0, Landroidx/media2/player/MediaPlayer;->sResultCodeMap:Landroidx/collection/ArrayMap;

    .line 452
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, -0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 451
    invoke-virtual {v0, v5, v6}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    sget-object v0, Landroidx/media2/player/MediaPlayer;->sResultCodeMap:Landroidx/collection/ArrayMap;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, -0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    sget-object v0, Landroidx/media2/player/MediaPlayer;->sResultCodeMap:Landroidx/collection/ArrayMap;

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    sput-object v0, Landroidx/media2/player/MediaPlayer;->sErrorCodeMap:Landroidx/collection/ArrayMap;

    .line 457
    sget-object v0, Landroidx/media2/player/MediaPlayer;->sErrorCodeMap:Landroidx/collection/ArrayMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    sget-object v0, Landroidx/media2/player/MediaPlayer;->sErrorCodeMap:Landroidx/collection/ArrayMap;

    const/16 v7, -0x3ec

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    sget-object v0, Landroidx/media2/player/MediaPlayer;->sErrorCodeMap:Landroidx/collection/ArrayMap;

    const/16 v8, -0x3ef

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    sget-object v0, Landroidx/media2/player/MediaPlayer;->sErrorCodeMap:Landroidx/collection/ArrayMap;

    const/16 v8, -0x3f2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    sget-object v0, Landroidx/media2/player/MediaPlayer;->sErrorCodeMap:Landroidx/collection/ArrayMap;

    const/16 v8, -0x6e

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    sput-object v0, Landroidx/media2/player/MediaPlayer;->sInfoCodeMap:Landroidx/collection/ArrayMap;

    .line 464
    sget-object v0, Landroidx/media2/player/MediaPlayer;->sInfoCodeMap:Landroidx/collection/ArrayMap;

    .line 465
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 464
    invoke-virtual {v0, v8, v9}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    sget-object v0, Landroidx/media2/player/MediaPlayer;->sInfoCodeMap:Landroidx/collection/ArrayMap;

    .line 467
    const/16 v8, 0x2bc

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 466
    invoke-virtual {v0, v9, v8}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    sget-object v0, Landroidx/media2/player/MediaPlayer;->sInfoCodeMap:Landroidx/collection/ArrayMap;

    const/16 v8, 0x2c0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    sget-object v0, Landroidx/media2/player/MediaPlayer;->sInfoCodeMap:Landroidx/collection/ArrayMap;

    const/16 v8, 0x320

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    sget-object v0, Landroidx/media2/player/MediaPlayer;->sInfoCodeMap:Landroidx/collection/ArrayMap;

    const/16 v8, 0x321

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    sget-object v0, Landroidx/media2/player/MediaPlayer;->sInfoCodeMap:Landroidx/collection/ArrayMap;

    const/16 v8, 0x322

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0x322

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    sget-object v0, Landroidx/media2/player/MediaPlayer;->sInfoCodeMap:Landroidx/collection/ArrayMap;

    const/16 v8, 0x324

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0x324

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    sget-object v0, Landroidx/media2/player/MediaPlayer;->sInfoCodeMap:Landroidx/collection/ArrayMap;

    const/16 v8, 0x325

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0x325

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    sput-object v0, Landroidx/media2/player/MediaPlayer;->sSeekModeMap:Landroidx/collection/ArrayMap;

    .line 476
    sget-object v0, Landroidx/media2/player/MediaPlayer;->sSeekModeMap:Landroidx/collection/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    sget-object v0, Landroidx/media2/player/MediaPlayer;->sSeekModeMap:Landroidx/collection/ArrayMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    sget-object v0, Landroidx/media2/player/MediaPlayer;->sSeekModeMap:Landroidx/collection/ArrayMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    sget-object v0, Landroidx/media2/player/MediaPlayer;->sSeekModeMap:Landroidx/collection/ArrayMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    sput-object v0, Landroidx/media2/player/MediaPlayer;->sPrepareDrmStatusMap:Landroidx/collection/ArrayMap;

    .line 482
    sget-object v0, Landroidx/media2/player/MediaPlayer;->sPrepareDrmStatusMap:Landroidx/collection/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 483
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 482
    invoke-virtual {v0, v8, v1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    sget-object v0, Landroidx/media2/player/MediaPlayer;->sPrepareDrmStatusMap:Landroidx/collection/ArrayMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 485
    const/16 v2, -0x3e9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 484
    invoke-virtual {v0, v1, v2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    sget-object v0, Landroidx/media2/player/MediaPlayer;->sPrepareDrmStatusMap:Landroidx/collection/ArrayMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 487
    const/16 v2, -0x3eb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 486
    invoke-virtual {v0, v1, v2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    sget-object v0, Landroidx/media2/player/MediaPlayer;->sPrepareDrmStatusMap:Landroidx/collection/ArrayMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 489
    const/16 v2, -0x3eb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 488
    invoke-virtual {v0, v1, v2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    sget-object v0, Landroidx/media2/player/MediaPlayer;->sPrepareDrmStatusMap:Landroidx/collection/ArrayMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 491
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 490
    invoke-virtual {v0, v1, v2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    sget-object v0, Landroidx/media2/player/MediaPlayer;->sPrepareDrmStatusMap:Landroidx/collection/ArrayMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 493
    const/16 v2, -0x3ed

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 492
    invoke-virtual {v0, v1, v2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 669
    invoke-direct {p0}, Landroidx/media2/common/SessionPlayer;-><init>()V

    .line 524
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPendingCommands:Ljava/util/ArrayDeque;

    .line 620
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPendingFutures:Ljava/util/ArrayDeque;

    .line 624
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    .line 627
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/MediaPlayer;->mMediaItemToBuffState:Ljava/util/Map;

    .line 635
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPlaylistLock:Ljava/lang/Object;

    .line 637
    new-instance v0, Landroidx/media2/player/MediaPlayer$MediaItemList;

    invoke-direct {v0}, Landroidx/media2/player/MediaPlayer$MediaItemList;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPlaylist:Landroidx/media2/player/MediaPlayer$MediaItemList;

    .line 640
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/MediaPlayer;->mShuffledList:Ljava/util/ArrayList;

    .line 670
    if-eqz p1, :cond_0

    .line 673
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/player/MediaPlayer;->mState:I

    .line 674
    invoke-static {p1}, Landroidx/media2/player/MediaPlayer2;->create(Landroid/content/Context;)Landroidx/media2/player/MediaPlayer2;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    .line 675
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/player/MediaPlayer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 676
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Landroidx/media2/player/MediaPlayer$Mp2Callback;

    invoke-direct {v2, p0}, Landroidx/media2/player/MediaPlayer$Mp2Callback;-><init>(Landroidx/media2/player/MediaPlayer;)V

    invoke-virtual {v0, v1, v2}, Landroidx/media2/player/MediaPlayer2;->setEventCallback(Ljava/util/concurrent/Executor;Landroidx/media2/player/MediaPlayer2$EventCallback;)V

    .line 677
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Landroidx/media2/player/MediaPlayer$Mp2DrmCallback;

    invoke-direct {v2, p0}, Landroidx/media2/player/MediaPlayer$Mp2DrmCallback;-><init>(Landroidx/media2/player/MediaPlayer;)V

    invoke-virtual {v0, v1, v2}, Landroidx/media2/player/MediaPlayer2;->setDrmEventCallback(Ljava/util/concurrent/Executor;Landroidx/media2/player/MediaPlayer2$DrmEventCallback;)V

    .line 678
    const/4 v0, -0x2

    iput v0, p0, Landroidx/media2/player/MediaPlayer;->mCurrentShuffleIdx:I

    .line 679
    new-instance v0, Landroidx/media2/player/AudioFocusHandler;

    invoke-direct {v0, p1, p0}, Landroidx/media2/player/AudioFocusHandler;-><init>(Landroid/content/Context;Landroidx/media2/player/MediaPlayer;)V

    iput-object v0, p0, Landroidx/media2/player/MediaPlayer;->mAudioFocusHandler:Landroidx/media2/player/AudioFocusHandler;

    .line 680
    return-void

    .line 671
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static clamp(II)I
    .locals 1
    .param p0, "value"    # I
    .param p1, "maxValue"    # I

    .line 2924
    if-gez p0, :cond_0

    .line 2925
    const/4 v0, 0x0

    return v0

    .line 2927
    :cond_0
    if-le p0, p1, :cond_1

    move v0, p1

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    return v0
.end method

.method private createTrackInfo(Landroidx/media2/common/SessionPlayer$TrackInfo;)Landroidx/media2/player/MediaPlayer$TrackInfo;
    .locals 5
    .param p1, "info"    # Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 3058
    if-nez p1, :cond_0

    .line 3059
    const/4 v0, 0x0

    return-object v0

    .line 3061
    :cond_0
    new-instance v0, Landroidx/media2/player/MediaPlayer$TrackInfo;

    invoke-virtual {p1}, Landroidx/media2/common/SessionPlayer$TrackInfo;->getId()I

    move-result v1

    invoke-virtual {p1}, Landroidx/media2/common/SessionPlayer$TrackInfo;->getMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/media2/common/SessionPlayer$TrackInfo;->getTrackType()I

    move-result v3

    .line 3062
    invoke-virtual {p1}, Landroidx/media2/common/SessionPlayer$TrackInfo;->getFormat()Landroid/media/MediaFormat;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/media2/player/MediaPlayer$TrackInfo;-><init>(ILandroidx/media2/common/MediaItem;ILandroid/media/MediaFormat;)V

    .line 3061
    return-object v0
.end method

.method private executePendingFutures()V
    .locals 4

    .line 3028
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPendingFutures:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 3029
    :try_start_0
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mPendingFutures:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3030
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroidx/media2/player/MediaPlayer$PendingFuture<-Landroidx/media2/common/SessionPlayer$PlayerResult;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3031
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/player/MediaPlayer$PendingFuture;

    .line 3032
    .local v2, "f":Landroidx/media2/player/MediaPlayer$PendingFuture;
    invoke-virtual {v2}, Landroidx/media2/player/MediaPlayer$PendingFuture;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroidx/media2/player/MediaPlayer$PendingFuture;->execute()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    goto :goto_2

    .line 3033
    :cond_1
    :goto_1
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer;->mPendingFutures:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 3037
    goto :goto_0

    .line 3030
    .end local v2    # "f":Landroidx/media2/player/MediaPlayer$PendingFuture;
    :cond_2
    nop

    .line 3039
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3040
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/player/MediaPlayer$PendingFuture;

    .line 3041
    .restart local v2    # "f":Landroidx/media2/player/MediaPlayer$PendingFuture;
    iget-boolean v3, v2, Landroidx/media2/player/MediaPlayer$PendingFuture;->mIsSeekTo:Z

    if-nez v3, :cond_3

    .line 3042
    goto :goto_3

    .line 3044
    :cond_3
    invoke-virtual {v2}, Landroidx/media2/player/MediaPlayer$PendingFuture;->execute()Z

    .line 3045
    goto :goto_2

    .line 3039
    .end local v2    # "f":Landroidx/media2/player/MediaPlayer$PendingFuture;
    :cond_4
    nop

    .line 3046
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroidx/media2/player/MediaPlayer$PendingFuture<-Landroidx/media2/common/SessionPlayer$PlayerResult;>;>;"
    :goto_3
    monitor-exit v0

    .line 3047
    return-void

    .line 3046
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    return-void
.end method

.method private setMediaItemInternal(Landroidx/media2/common/MediaItem;)Landroidx/media2/player/futures/ResolvableFuture;
    .locals 4
    .param p1, "item"    # Landroidx/media2/common/MediaItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/MediaItem;",
            ")",
            "Landroidx/media2/player/futures/ResolvableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 2792
    invoke-static {}, Landroidx/media2/player/futures/ResolvableFuture;->create()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v0

    .line 2793
    .local v0, "future":Landroidx/media2/player/futures/ResolvableFuture;, "Landroidx/media2/player/futures/ResolvableFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mPendingCommands:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 2794
    :try_start_0
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v2, p1}, Landroidx/media2/player/MediaPlayer2;->setMediaItem(Landroidx/media2/common/MediaItem;)Ljava/lang/Object;

    move-result-object v2

    .line 2795
    .local v2, "token":Ljava/lang/Object;
    const/16 v3, 0x13

    invoke-virtual {p0, v3, v0, v2}, Landroidx/media2/player/MediaPlayer;->addPendingCommandLocked(ILandroidx/media2/player/futures/ResolvableFuture;Ljava/lang/Object;)V

    .line 2796
    .end local v2    # "token":Ljava/lang/Object;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2797
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->mPlaylistLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2798
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mSetMediaItemCalled:Z

    .line 2799
    monitor-exit v2

    .line 2800
    return-object v0

    .line 2799
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 2796
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method


# virtual methods
.method addFutureListener(Landroidx/media2/player/MediaPlayer$PendingCommand;Landroidx/media2/player/futures/ResolvableFuture;Ljava/lang/Object;)V
    .locals 2
    .param p1, "pendingCommand"    # Landroidx/media2/player/MediaPlayer$PendingCommand;
    .param p2, "future"    # Landroidx/media2/player/futures/ResolvableFuture;
    .param p3, "token"    # Ljava/lang/Object;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mPendingCommands"
    .end annotation

    .line 705
    new-instance v0, Landroidx/media2/player/MediaPlayer$1;

    invoke-direct {v0, p0, p2, p3, p1}, Landroidx/media2/player/MediaPlayer$1;-><init>(Landroidx/media2/player/MediaPlayer;Landroidx/media2/player/futures/ResolvableFuture;Ljava/lang/Object;Landroidx/media2/player/MediaPlayer$PendingCommand;)V

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p2, v0, v1}, Landroidx/media2/player/futures/ResolvableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 718
    return-void
.end method

.method addPendingCommandLocked(ILandroidx/media2/player/futures/ResolvableFuture;Ljava/lang/Object;)V
    .locals 2
    .param p1, "callType"    # I
    .param p2, "future"    # Landroidx/media2/player/futures/ResolvableFuture;
    .param p3, "token"    # Ljava/lang/Object;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mPendingCommands"
    .end annotation

    .line 686
    new-instance v0, Landroidx/media2/player/MediaPlayer$PendingCommand;

    invoke-direct {v0, p1, p2}, Landroidx/media2/player/MediaPlayer$PendingCommand;-><init>(ILandroidx/media2/player/futures/ResolvableFuture;)V

    .line 687
    .local v0, "pendingCommand":Landroidx/media2/player/MediaPlayer$PendingCommand;
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mPendingCommands:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 688
    invoke-virtual {p0, v0, p2, p3}, Landroidx/media2/player/MediaPlayer;->addFutureListener(Landroidx/media2/player/MediaPlayer$PendingCommand;Landroidx/media2/player/futures/ResolvableFuture;Ljava/lang/Object;)V

    .line 689
    return-void
.end method

.method addPendingCommandWithTrackInfoLocked(ILandroidx/media2/player/futures/ResolvableFuture;Landroidx/media2/player/MediaPlayer$TrackInfo;Ljava/lang/Object;)V
    .locals 2
    .param p1, "callType"    # I
    .param p2, "future"    # Landroidx/media2/player/futures/ResolvableFuture;
    .param p3, "trackInfo"    # Landroidx/media2/player/MediaPlayer$TrackInfo;
    .param p4, "token"    # Ljava/lang/Object;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mPendingCommands"
    .end annotation

    .line 696
    new-instance v0, Landroidx/media2/player/MediaPlayer$PendingCommand;

    invoke-direct {v0, p1, p2, p3}, Landroidx/media2/player/MediaPlayer$PendingCommand;-><init>(ILandroidx/media2/player/futures/ResolvableFuture;Landroidx/media2/player/MediaPlayer$TrackInfo;)V

    .line 697
    .local v0, "pendingCommand":Landroidx/media2/player/MediaPlayer$PendingCommand;
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mPendingCommands:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 698
    invoke-virtual {p0, v0, p2, p4}, Landroidx/media2/player/MediaPlayer;->addFutureListener(Landroidx/media2/player/MediaPlayer$PendingCommand;Landroidx/media2/player/futures/ResolvableFuture;Ljava/lang/Object;)V

    .line 699
    return-void
.end method

.method addPendingFuture(Landroidx/media2/player/MediaPlayer$PendingFuture;)V
    .locals 2
    .param p1, "pendingFuture"    # Landroidx/media2/player/MediaPlayer$PendingFuture;

    .line 722
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPendingFutures:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 723
    :try_start_0
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mPendingFutures:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 724
    invoke-direct {p0}, Landroidx/media2/player/MediaPlayer;->executePendingFutures()V

    .line 725
    monitor-exit v0

    .line 726
    return-void

    .line 725
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addPlaylistItem(ILandroidx/media2/common/MediaItem;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .param p1, "index"    # I
    .param p2, "item"    # Landroidx/media2/common/MediaItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media2/common/MediaItem;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 1145
    if-eqz p2, :cond_4

    .line 1148
    instance-of v0, p2, Landroidx/media2/common/FileMediaItem;

    if-eqz v0, :cond_1

    .line 1149
    move-object v0, p2

    check-cast v0, Landroidx/media2/common/FileMediaItem;

    invoke-virtual {v0}, Landroidx/media2/common/FileMediaItem;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1150
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File descriptor is closed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1148
    :cond_1
    nop

    .line 1153
    :goto_0
    if-ltz p1, :cond_3

    .line 1156
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1157
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_2

    .line 1158
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->createFutureForClosed()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1160
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1162
    new-instance v0, Landroidx/media2/player/MediaPlayer$10;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1, p2, p1}, Landroidx/media2/player/MediaPlayer$10;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;Landroidx/media2/common/MediaItem;I)V

    .line 1203
    .local v0, "pendingFuture":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->addPendingFuture(Landroidx/media2/player/MediaPlayer$PendingFuture;)V

    .line 1204
    return-object v0

    .line 1160
    .end local v0    # "pendingFuture":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1154
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index shouldn\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1146
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "item shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method applyShuffleModeLocked()V
    .locals 2

    .line 2871
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mShuffledList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2872
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mShuffledList:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mPlaylist:Landroidx/media2/player/MediaPlayer$MediaItemList;

    invoke-virtual {v1}, Landroidx/media2/player/MediaPlayer$MediaItemList;->getCollection()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2873
    iget v0, p0, Landroidx/media2/player/MediaPlayer;->mShuffleMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    .line 2875
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mShuffledList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 2877
    :goto_1
    return-void
.end method

.method public attachAuxEffect(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "effectId"    # I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 2116
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2117
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_0

    .line 2118
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->createFutureForClosed()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2120
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2121
    new-instance v0, Landroidx/media2/player/MediaPlayer$24;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1, p1}, Landroidx/media2/player/MediaPlayer$24;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;I)V

    .line 2135
    .local v0, "pendingFuture":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->addPendingFuture(Landroidx/media2/player/MediaPlayer$PendingFuture;)V

    .line 2136
    return-object v0

    .line 2120
    .end local v0    # "pendingFuture":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1673
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1674
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-nez v1, :cond_0

    .line 1675
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    .line 1676
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->reset()V

    .line 1677
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mAudioFocusHandler:Landroidx/media2/player/AudioFocusHandler;

    invoke-virtual {v1}, Landroidx/media2/player/AudioFocusHandler;->close()V

    .line 1678
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v1}, Landroidx/media2/player/MediaPlayer2;->close()V

    .line 1679
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto :goto_0

    .line 1674
    :cond_0
    nop

    .line 1681
    :goto_0
    monitor-exit v0

    .line 1682
    return-void

    .line 1681
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method createFutureForClosed()Landroidx/media2/player/futures/ResolvableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/media2/player/futures/ResolvableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 2838
    invoke-static {}, Landroidx/media2/player/futures/ResolvableFuture;->create()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v0

    .line 2839
    .local v0, "future":Landroidx/media2/player/futures/ResolvableFuture;, "Landroidx/media2/player/futures/ResolvableFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    new-instance v1, Landroidx/media2/common/SessionPlayer$PlayerResult;

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroidx/media2/common/SessionPlayer$PlayerResult;-><init>(ILandroidx/media2/common/MediaItem;)V

    invoke-virtual {v0, v1}, Landroidx/media2/player/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    .line 2840
    return-object v0
.end method

.method createFutureForResultCode(I)Landroidx/media2/player/futures/ResolvableFuture;
    .locals 1
    .param p1, "resultCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/media2/player/futures/ResolvableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 2845
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/media2/player/MediaPlayer;->createFutureForResultCode(ILandroidx/media2/common/MediaItem;)Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v0

    return-object v0
.end method

.method createFutureForResultCode(ILandroidx/media2/common/MediaItem;)Landroidx/media2/player/futures/ResolvableFuture;
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "item"    # Landroidx/media2/common/MediaItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media2/common/MediaItem;",
            ")",
            "Landroidx/media2/player/futures/ResolvableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 2850
    invoke-static {}, Landroidx/media2/player/futures/ResolvableFuture;->create()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v0

    .line 2851
    .local v0, "future":Landroidx/media2/player/futures/ResolvableFuture;, "Landroidx/media2/player/futures/ResolvableFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    new-instance v1, Landroidx/media2/common/SessionPlayer$PlayerResult;

    if-nez p2, :cond_0

    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    .line 2852
    invoke-virtual {v2}, Landroidx/media2/player/MediaPlayer2;->getCurrentMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    invoke-direct {v1, p1, v2}, Landroidx/media2/common/SessionPlayer$PlayerResult;-><init>(ILandroidx/media2/common/MediaItem;)V

    .line 2851
    invoke-virtual {v0, v1}, Landroidx/media2/player/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    .line 2853
    return-object v0
.end method

.method createFuturesForResultCode(I)Ljava/util/List;
    .locals 1
    .param p1, "resultCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroidx/media2/player/futures/ResolvableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;>;"
        }
    .end annotation

    .line 2858
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/media2/player/MediaPlayer;->createFuturesForResultCode(ILandroidx/media2/common/MediaItem;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method createFuturesForResultCode(ILandroidx/media2/common/MediaItem;)Ljava/util/List;
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "item"    # Landroidx/media2/common/MediaItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media2/common/MediaItem;",
            ")",
            "Ljava/util/List<",
            "Landroidx/media2/player/futures/ResolvableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;>;"
        }
    .end annotation

    .line 2864
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2865
    .local v0, "futures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/player/futures/ResolvableFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;>;"
    invoke-virtual {p0, p1, p2}, Landroidx/media2/player/MediaPlayer;->createFutureForResultCode(ILandroidx/media2/common/MediaItem;)Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2866
    return-object v0
.end method

.method createTrackInfoInternal(Landroidx/media2/player/MediaPlayer$TrackInfo;)Landroidx/media2/common/SessionPlayer$TrackInfo;
    .locals 5
    .param p1, "info"    # Landroidx/media2/player/MediaPlayer$TrackInfo;

    .line 3050
    if-nez p1, :cond_0

    .line 3051
    const/4 v0, 0x0

    return-object v0

    .line 3053
    :cond_0
    new-instance v0, Landroidx/media2/common/SessionPlayer$TrackInfo;

    invoke-virtual {p1}, Landroidx/media2/player/MediaPlayer$TrackInfo;->getId()I

    move-result v1

    invoke-virtual {p1}, Landroidx/media2/player/MediaPlayer$TrackInfo;->getMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/media2/player/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v3

    .line 3054
    invoke-virtual {p1}, Landroidx/media2/player/MediaPlayer$TrackInfo;->getFormat()Landroid/media/MediaFormat;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/media2/common/SessionPlayer$TrackInfo;-><init>(ILandroidx/media2/common/MediaItem;ILandroid/media/MediaFormat;)V

    .line 3053
    return-object v0
.end method

.method public deselectTrack(Landroidx/media2/player/MediaPlayer$TrackInfo;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .param p1, "trackInfo"    # Landroidx/media2/player/MediaPlayer$TrackInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/player/MediaPlayer$TrackInfo;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 2326
    if-eqz p1, :cond_1

    .line 2329
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2330
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_0

    .line 2331
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->createFutureForClosed()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2333
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2334
    invoke-virtual {p1}, Landroidx/media2/player/MediaPlayer$TrackInfo;->getId()I

    move-result v0

    .line 2335
    .local v0, "trackId":I
    new-instance v1, Landroidx/media2/player/MediaPlayer$27;

    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, p0, v2, v0, p1}, Landroidx/media2/player/MediaPlayer$27;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;ILandroidx/media2/player/MediaPlayer$TrackInfo;)V

    .line 2350
    .local v1, "pendingFuture":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    invoke-virtual {p0, v1}, Landroidx/media2/player/MediaPlayer;->addPendingFuture(Landroidx/media2/player/MediaPlayer$PendingFuture;)V

    .line 2351
    return-object v1

    .line 2333
    .end local v0    # "trackId":I
    .end local v1    # "pendingFuture":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 2327
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "trackInfo shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deselectTrackInternal(Landroidx/media2/common/SessionPlayer$TrackInfo;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p1, "info"    # Landroidx/media2/common/SessionPlayer$TrackInfo;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 2389
    invoke-direct {p0, p1}, Landroidx/media2/player/MediaPlayer;->createTrackInfo(Landroidx/media2/common/SessionPlayer$TrackInfo;)Landroidx/media2/player/MediaPlayer$TrackInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->deselectTrack(Landroidx/media2/player/MediaPlayer$TrackInfo;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public getAudioAttributes()Landroidx/media/AudioAttributesCompat;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1025
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1026
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1027
    monitor-exit v0

    return-object v2

    .line 1029
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1031
    :try_start_1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer2;->getAudioAttributes()Landroidx/media/AudioAttributesCompat;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 1032
    :catch_0
    move-exception v0

    .line 1033
    .local v0, "e":Ljava/lang/IllegalStateException;
    return-object v2

    .line 1029
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getAudioFocusHandler()Landroidx/media2/player/AudioFocusHandler;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x3
    .end annotation

    .line 1690
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mAudioFocusHandler:Landroidx/media2/player/AudioFocusHandler;

    return-object v0
.end method

.method public getAudioSessionId()I
    .locals 2

    .line 2087
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2088
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_0

    .line 2089
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 2091
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2092
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer2;->getAudioSessionId()I

    move-result v0

    return v0

    .line 2091
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getBufferedPosition()J
    .locals 7

    .line 976
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 977
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    const-wide/high16 v2, -0x8000000000000000L

    if-eqz v1, :cond_0

    .line 978
    monitor-exit v0

    return-wide v2

    .line 980
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 982
    :try_start_1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer2;->getBufferedPosition()J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 983
    .local v0, "pos":J
    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_1

    .line 984
    return-wide v0

    .line 983
    :cond_1
    nop

    .line 988
    .end local v0    # "pos":J
    goto :goto_0

    .line 986
    :catch_0
    move-exception v0

    .line 989
    :goto_0
    return-wide v2

    .line 980
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getBufferingState()I
    .locals 4

    .line 995
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 996
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 997
    monitor-exit v0

    return v2

    .line 999
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1001
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1002
    :try_start_1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mMediaItemToBuffState:Ljava/util/Map;

    iget-object v3, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v3}, Landroidx/media2/player/MediaPlayer2;->getCurrentMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1003
    .local v0, "buffState":Ljava/lang/Integer;
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1004
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    return v2

    .line 1003
    .end local v0    # "buffState":Ljava/lang/Integer;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 999
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public getCurrentMediaItem()Landroidx/media2/common/MediaItem;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1602
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1603
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_0

    .line 1604
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 1606
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1607
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer2;->getCurrentMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object v0

    return-object v0

    .line 1606
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getCurrentMediaItemIndex()I
    .locals 4

    .line 1612
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1613
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 1614
    monitor-exit v0

    return v2

    .line 1616
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1617
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mPlaylistLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1618
    :try_start_1
    iget v0, p0, Landroidx/media2/player/MediaPlayer;->mCurrentShuffleIdx:I

    if-gez v0, :cond_1

    .line 1619
    monitor-exit v1

    return v2

    .line 1621
    :cond_1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPlaylist:Landroidx/media2/player/MediaPlayer$MediaItemList;

    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->mShuffledList:Ljava/util/ArrayList;

    iget v3, p0, Landroidx/media2/player/MediaPlayer;->mCurrentShuffleIdx:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/media2/player/MediaPlayer$MediaItemList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    monitor-exit v1

    return v0

    .line 1622
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1616
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public getCurrentPosition()J
    .locals 7

    .line 940
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 941
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    const-wide/high16 v2, -0x8000000000000000L

    if-eqz v1, :cond_0

    .line 942
    monitor-exit v0

    return-wide v2

    .line 944
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 946
    :try_start_1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer2;->getCurrentPosition()J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 947
    .local v0, "pos":J
    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_1

    .line 948
    return-wide v0

    .line 947
    :cond_1
    nop

    .line 952
    .end local v0    # "pos":J
    goto :goto_0

    .line 950
    :catch_0
    move-exception v0

    .line 953
    :goto_0
    return-wide v2

    .line 944
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getDrmInfo()Landroidx/media2/player/MediaPlayer$DrmInfo;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 2435
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer2;->getDrmInfo()Landroidx/media2/player/MediaPlayer2$DrmInfo;

    move-result-object v0

    .line 2436
    .local v0, "info":Landroidx/media2/player/MediaPlayer2$DrmInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/media2/player/MediaPlayer$DrmInfo;

    invoke-direct {v1, v0}, Landroidx/media2/player/MediaPlayer$DrmInfo;-><init>(Landroidx/media2/player/MediaPlayer2$DrmInfo;)V

    :goto_0
    return-object v1
.end method

.method public getDrmKeyRequest([B[BLjava/lang/String;ILjava/util/Map;)Landroid/media/MediaDrm$KeyRequest;
    .locals 6
    .param p1, "keySetId"    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "initData"    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "mimeType"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "keyType"    # I
    .param p5    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/media/MediaDrm$KeyRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/player/MediaPlayer$NoDrmSchemeException;
        }
    .end annotation

    .line 2553
    .local p5, "optionalParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/media2/player/MediaPlayer2;->getDrmKeyRequest([B[BLjava/lang/String;ILjava/util/Map;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object v0
    :try_end_0
    .catch Landroidx/media2/player/MediaPlayer2$NoDrmSchemeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2555
    :catch_0
    move-exception v0

    .line 2556
    .local v0, "e":Landroidx/media2/player/MediaPlayer2$NoDrmSchemeException;
    new-instance v1, Landroidx/media2/player/MediaPlayer$NoDrmSchemeException;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer2$NoDrmSchemeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media2/player/MediaPlayer$NoDrmSchemeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDrmPropertyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "propertyName"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/player/MediaPlayer$NoDrmSchemeException;
        }
    .end annotation

    .line 2625
    if-eqz p1, :cond_0

    .line 2629
    :try_start_0
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v0, p1}, Landroidx/media2/player/MediaPlayer2;->getDrmPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroidx/media2/player/MediaPlayer2$NoDrmSchemeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2630
    :catch_0
    move-exception v0

    .line 2631
    .local v0, "e":Landroidx/media2/player/MediaPlayer2$NoDrmSchemeException;
    new-instance v1, Landroidx/media2/player/MediaPlayer$NoDrmSchemeException;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer2$NoDrmSchemeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media2/player/MediaPlayer$NoDrmSchemeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2626
    .end local v0    # "e":Landroidx/media2/player/MediaPlayer2$NoDrmSchemeException;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "propertyName shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDuration()J
    .locals 7

    .line 958
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 959
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    const-wide/high16 v2, -0x8000000000000000L

    if-eqz v1, :cond_0

    .line 960
    monitor-exit v0

    return-wide v2

    .line 962
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 964
    :try_start_1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer2;->getDuration()J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 965
    .local v0, "duration":J
    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_1

    .line 966
    return-wide v0

    .line 965
    :cond_1
    nop

    .line 970
    .end local v0    # "duration":J
    goto :goto_0

    .line 968
    :catch_0
    move-exception v0

    .line 971
    :goto_0
    return-wide v2

    .line 962
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getMaxPlayerVolume()F
    .locals 2

    .line 1849
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1850
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_0

    .line 1851
    const/high16 v1, 0x3f800000    # 1.0f

    monitor-exit v0

    return v1

    .line 1853
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1854
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer2;->getMaxPlayerVolume()F

    move-result v0

    return v0

    .line 1853
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getMetrics()Landroid/os/PersistableBundle;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1898
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer2;->getMetrics()Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method public getNextMediaItemIndex()I
    .locals 5

    .line 1650
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1651
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 1652
    monitor-exit v0

    return v2

    .line 1654
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1655
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mPlaylistLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1656
    :try_start_1
    iget v0, p0, Landroidx/media2/player/MediaPlayer;->mCurrentShuffleIdx:I

    if-gez v0, :cond_1

    .line 1657
    monitor-exit v1

    return v2

    .line 1659
    :cond_1
    iget v0, p0, Landroidx/media2/player/MediaPlayer;->mCurrentShuffleIdx:I

    add-int/lit8 v0, v0, 0x1

    .line 1660
    .local v0, "nextShuffleIdx":I
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer;->mShuffledList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_4

    .line 1661
    iget v3, p0, Landroidx/media2/player/MediaPlayer;->mRepeatMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    iget v3, p0, Landroidx/media2/player/MediaPlayer;->mRepeatMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    goto :goto_0

    .line 1664
    :cond_2
    monitor-exit v1

    return v2

    .line 1661
    :cond_3
    :goto_0
    nop

    .line 1662
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->mPlaylist:Landroidx/media2/player/MediaPlayer$MediaItemList;

    iget-object v3, p0, Landroidx/media2/player/MediaPlayer;->mShuffledList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/media2/player/MediaPlayer$MediaItemList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    monitor-exit v1

    return v2

    .line 1667
    :cond_4
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->mPlaylist:Landroidx/media2/player/MediaPlayer$MediaItemList;

    iget-object v3, p0, Landroidx/media2/player/MediaPlayer;->mShuffledList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/media2/player/MediaPlayer$MediaItemList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    monitor-exit v1

    return v2

    .line 1668
    .end local v0    # "nextShuffleIdx":I
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1654
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public getPlaybackParams()Landroidx/media2/player/PlaybackParams;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1947
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1948
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_0

    .line 1949
    sget-object v1, Landroidx/media2/player/MediaPlayer;->DEFAULT_PLAYBACK_PARAMS:Landroidx/media2/player/PlaybackParams;

    monitor-exit v0

    return-object v1

    .line 1951
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1952
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer2;->getPlaybackParams()Landroidx/media2/player/PlaybackParams;

    move-result-object v0

    return-object v0

    .line 1951
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getPlaybackSpeed()F
    .locals 3
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        fromInclusive = false
        to = 3.4028234663852886E38
    .end annotation

    .line 1010
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1011
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    .line 1012
    monitor-exit v0

    return v2

    .line 1014
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1016
    :try_start_1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer2;->getPlaybackParams()Landroidx/media2/player/PlaybackParams;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media2/player/PlaybackParams;->getSpeed()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    .line 1017
    :catch_0
    move-exception v0

    .line 1018
    .local v0, "e":Ljava/lang/IllegalStateException;
    return v2

    .line 1014
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getPlayerState()I
    .locals 2

    .line 933
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 934
    :try_start_0
    iget v1, p0, Landroidx/media2/player/MediaPlayer;->mState:I

    monitor-exit v0

    return v1

    .line 935
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPlayerVolume()F
    .locals 2

    .line 1837
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1838
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_0

    .line 1839
    const/high16 v1, 0x3f800000    # 1.0f

    monitor-exit v0

    return v1

    .line 1841
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1842
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer2;->getPlayerVolume()F

    move-result v0

    return v0

    .line 1841
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getPlaylist()Ljava/util/List;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;"
        }
    .end annotation

    .line 1552
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1553
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1554
    monitor-exit v0

    return-object v2

    .line 1556
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1557
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mPlaylistLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1558
    :try_start_1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPlaylist:Landroidx/media2/player/MediaPlayer$MediaItemList;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer$MediaItemList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    goto :goto_1

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPlaylist:Landroidx/media2/player/MediaPlayer$MediaItemList;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer$MediaItemList;->getCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :goto_1
    monitor-exit v1

    return-object v2

    .line 1559
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1556
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    return-void
.end method

.method public getPlaylistMetadata()Landroidx/media2/common/MediaMetadata;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1565
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1566
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_0

    .line 1567
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 1569
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1570
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mPlaylistLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1571
    :try_start_1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPlaylistMetadata:Landroidx/media2/common/MediaMetadata;

    monitor-exit v1

    return-object v0

    .line 1572
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1569
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public getPreviousMediaItemIndex()I
    .locals 5

    .line 1627
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1628
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 1629
    monitor-exit v0

    return v2

    .line 1631
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1632
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mPlaylistLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1633
    :try_start_1
    iget v0, p0, Landroidx/media2/player/MediaPlayer;->mCurrentShuffleIdx:I

    if-gez v0, :cond_1

    .line 1634
    monitor-exit v1

    return v2

    .line 1636
    :cond_1
    iget v0, p0, Landroidx/media2/player/MediaPlayer;->mCurrentShuffleIdx:I

    add-int/lit8 v0, v0, -0x1

    .line 1637
    .local v0, "prevShuffleIdx":I
    if-gez v0, :cond_4

    .line 1638
    iget v3, p0, Landroidx/media2/player/MediaPlayer;->mRepeatMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    iget v3, p0, Landroidx/media2/player/MediaPlayer;->mRepeatMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    goto :goto_0

    .line 1641
    :cond_2
    monitor-exit v1

    return v2

    .line 1638
    :cond_3
    :goto_0
    nop

    .line 1639
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->mPlaylist:Landroidx/media2/player/MediaPlayer$MediaItemList;

    iget-object v3, p0, Landroidx/media2/player/MediaPlayer;->mShuffledList:Ljava/util/ArrayList;

    iget-object v4, p0, Landroidx/media2/player/MediaPlayer;->mShuffledList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/media2/player/MediaPlayer$MediaItemList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    monitor-exit v1

    return v2

    .line 1644
    :cond_4
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->mPlaylist:Landroidx/media2/player/MediaPlayer$MediaItemList;

    iget-object v3, p0, Landroidx/media2/player/MediaPlayer;->mShuffledList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/media2/player/MediaPlayer$MediaItemList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    monitor-exit v1

    return v2

    .line 1645
    .end local v0    # "prevShuffleIdx":I
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1631
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public getRepeatMode()I
    .locals 2

    .line 1577
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1578
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_0

    .line 1579
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 1581
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1582
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mPlaylistLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1583
    :try_start_1
    iget v0, p0, Landroidx/media2/player/MediaPlayer;->mRepeatMode:I

    monitor-exit v1

    return v0

    .line 1584
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1581
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public getSelectedTrack(I)Landroidx/media2/player/MediaPlayer$TrackInfo;
    .locals 3
    .param p1, "trackType"    # I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2233
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2234
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2235
    monitor-exit v0

    return-object v2

    .line 2237
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2238
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v0, p1}, Landroidx/media2/player/MediaPlayer2;->getSelectedTrack(I)I

    move-result v0

    .line 2239
    .local v0, "ret":I
    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->getTrackInfo(I)Landroidx/media2/player/MediaPlayer$TrackInfo;

    move-result-object v2

    :goto_0
    return-object v2

    .line 2237
    .end local v0    # "ret":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getSelectedTrackInternal(I)Landroidx/media2/common/SessionPlayer$TrackInfo;
    .locals 1
    .param p1, "trackType"    # I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 2400
    invoke-virtual {p0, p1}, Landroidx/media2/player/MediaPlayer;->getSelectedTrack(I)Landroidx/media2/player/MediaPlayer$TrackInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->createTrackInfoInternal(Landroidx/media2/player/MediaPlayer$TrackInfo;)Landroidx/media2/common/SessionPlayer$TrackInfo;

    move-result-object v0

    return-object v0
.end method

.method public getShuffleMode()I
    .locals 2

    .line 1589
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1590
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_0

    .line 1591
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 1593
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1594
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mPlaylistLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1595
    :try_start_1
    iget v0, p0, Landroidx/media2/player/MediaPlayer;->mShuffleMode:I

    monitor-exit v1

    return v0

    .line 1596
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1593
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public getTimestamp()Landroidx/media2/player/MediaTimestamp;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2023
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2024
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_0

    .line 2025
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 2027
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2028
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer2;->getTimestamp()Landroidx/media2/player/MediaTimestamp;

    move-result-object v0

    return-object v0

    .line 2027
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method getTrackInfo(I)Landroidx/media2/player/MediaPlayer$TrackInfo;
    .locals 6
    .param p1, "index"    # I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2209
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer2;->getTrackInfo()Ljava/util/List;

    move-result-object v0

    .line 2210
    .local v0, "info2s":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/player/MediaPlayer2$TrackInfo;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/player/MediaPlayer2$TrackInfo;

    .line 2211
    .local v1, "info2":Landroidx/media2/player/MediaPlayer2$TrackInfo;
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v2}, Landroidx/media2/player/MediaPlayer2;->getCurrentMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object v2

    .line 2212
    .local v2, "item":Landroidx/media2/common/MediaItem;
    new-instance v3, Landroidx/media2/player/MediaPlayer$TrackInfo;

    invoke-virtual {v1}, Landroidx/media2/player/MediaPlayer2$TrackInfo;->getTrackType()I

    move-result v4

    invoke-virtual {v1}, Landroidx/media2/player/MediaPlayer2$TrackInfo;->getFormat()Landroid/media/MediaFormat;

    move-result-object v5

    invoke-direct {v3, p1, v2, v4, v5}, Landroidx/media2/player/MediaPlayer$TrackInfo;-><init>(ILandroidx/media2/common/MediaItem;ILandroid/media/MediaFormat;)V

    return-object v3
.end method

.method public getTrackInfo()Ljava/util/List;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/player/MediaPlayer$TrackInfo;",
            ">;"
        }
    .end annotation

    .line 2192
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2193
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_0

    .line 2194
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2196
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2197
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer2;->getTrackInfo()Ljava/util/List;

    move-result-object v0

    .line 2198
    .local v0, "info2s":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/player/MediaPlayer2$TrackInfo;>;"
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v1}, Landroidx/media2/player/MediaPlayer2;->getCurrentMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object v1

    .line 2199
    .local v1, "item":Landroidx/media2/common/MediaItem;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2200
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/player/MediaPlayer$TrackInfo;>;"
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 2201
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media2/player/MediaPlayer2$TrackInfo;

    .line 2202
    .local v4, "info2":Landroidx/media2/player/MediaPlayer2$TrackInfo;
    new-instance v5, Landroidx/media2/player/MediaPlayer$TrackInfo;

    invoke-virtual {v4}, Landroidx/media2/player/MediaPlayer2$TrackInfo;->getTrackType()I

    move-result v6

    invoke-virtual {v4}, Landroidx/media2/player/MediaPlayer2$TrackInfo;->getFormat()Landroid/media/MediaFormat;

    move-result-object v7

    invoke-direct {v5, v3, v1, v6, v7}, Landroidx/media2/player/MediaPlayer$TrackInfo;-><init>(ILandroidx/media2/common/MediaItem;ILandroid/media/MediaFormat;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2200
    .end local v4    # "info2":Landroidx/media2/player/MediaPlayer2$TrackInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2204
    .end local v3    # "index":I
    :cond_1
    return-object v2

    .line 2196
    .end local v0    # "info2s":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/player/MediaPlayer2$TrackInfo;>;"
    .end local v1    # "item":Landroidx/media2/common/MediaItem;
    .end local v2    # "infos":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/player/MediaPlayer$TrackInfo;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    return-void
.end method

.method public getTrackInfoInternal()Ljava/util/List;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;"
        }
    .end annotation

    .line 2362
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->getTrackInfo()Ljava/util/List;

    move-result-object v0

    .line 2363
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/player/MediaPlayer$TrackInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2364
    .local v1, "trackList":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/SessionPlayer$TrackInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 2365
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/player/MediaPlayer$TrackInfo;

    invoke-virtual {p0, v3}, Landroidx/media2/player/MediaPlayer;->createTrackInfoInternal(Landroidx/media2/player/MediaPlayer$TrackInfo;)Landroidx/media2/common/SessionPlayer$TrackInfo;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2364
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2367
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public getVideoSize()Landroidx/media2/player/VideoSize;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1869
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->getVideoSizeInternal()Landroidx/media2/common/VideoSize;

    move-result-object v0

    .line 1870
    .local v0, "sizeInternal":Landroidx/media2/common/VideoSize;
    new-instance v1, Landroidx/media2/player/VideoSize;

    invoke-direct {v1, v0}, Landroidx/media2/player/VideoSize;-><init>(Landroidx/media2/common/VideoSize;)V

    return-object v1
.end method

.method public getVideoSizeInternal()Landroidx/media2/common/VideoSize;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1878
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1879
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_0

    .line 1880
    new-instance v1, Landroidx/media2/common/VideoSize;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroidx/media2/common/VideoSize;-><init>(II)V

    monitor-exit v0

    return-object v1

    .line 1882
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1883
    new-instance v0, Landroidx/media2/common/VideoSize;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v1}, Landroidx/media2/player/MediaPlayer2;->getVideoWidth()I

    move-result v1

    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    .line 1884
    invoke-virtual {v2}, Landroidx/media2/player/MediaPlayer2;->getVideoHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/media2/common/VideoSize;-><init>(II)V

    .line 1883
    return-object v0

    .line 1882
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method handleCallComplete(Landroidx/media2/player/MediaPlayer2;Landroidx/media2/common/MediaItem;II)V
    .locals 6
    .param p1, "mp"    # Landroidx/media2/player/MediaPlayer2;
    .param p2, "item"    # Landroidx/media2/common/MediaItem;
    .param p3, "what"    # I
    .param p4, "status"    # I

    .line 2933
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPendingCommands:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 2934
    :try_start_0
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mPendingCommands:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/player/MediaPlayer$PendingCommand;

    .line 2935
    .local v1, "expected":Landroidx/media2/player/MediaPlayer$PendingCommand;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2936
    if-nez v1, :cond_0

    .line 2937
    const-string v0, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No matching call type for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ". Possibly because of reset()."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2938
    return-void

    .line 2941
    :cond_0
    iget-object v0, v1, Landroidx/media2/player/MediaPlayer$PendingCommand;->mTrackInfo:Landroidx/media2/player/MediaPlayer$TrackInfo;

    .line 2942
    .local v0, "trackInfo":Landroidx/media2/player/MediaPlayer$TrackInfo;
    iget v2, v1, Landroidx/media2/player/MediaPlayer$PendingCommand;->mCallType:I

    if-eq p3, v2, :cond_1

    .line 2943
    const-string v2, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call type does not match. expeced:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroidx/media2/player/MediaPlayer$PendingCommand;->mCallType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " actual:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2945
    const/high16 p4, -0x80000000

    goto :goto_0

    .line 2942
    :cond_1
    nop

    .line 2947
    :goto_0
    if-nez p4, :cond_5

    .line 2948
    const/4 v2, 0x2

    if-eq p3, v2, :cond_4

    const/16 v3, 0x13

    if-eq p3, v3, :cond_3

    const/16 v3, 0x18

    if-eq p3, v3, :cond_2

    packed-switch p3, :pswitch_data_0

    packed-switch p3, :pswitch_data_1

    goto :goto_1

    .line 2987
    :pswitch_0
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v2}, Landroidx/media2/player/MediaPlayer2;->getAudioAttributes()Landroidx/media/AudioAttributesCompat;

    move-result-object v2

    .line 2988
    .local v2, "attr":Landroidx/media/AudioAttributesCompat;
    new-instance v3, Landroidx/media2/player/MediaPlayer$37;

    invoke-direct {v3, p0, v2}, Landroidx/media2/player/MediaPlayer$37;-><init>(Landroidx/media2/player/MediaPlayer;Landroidx/media/AudioAttributesCompat;)V

    invoke-virtual {p0, v3}, Landroidx/media2/player/MediaPlayer;->notifySessionPlayerCallback(Landroidx/media2/player/MediaPlayer$SessionPlayerCallbackNotifier;)V

    .line 2994
    goto :goto_1

    .line 2996
    .end local v2    # "attr":Landroidx/media/AudioAttributesCompat;
    :pswitch_1
    new-instance v2, Landroidx/media2/player/MediaPlayer$38;

    invoke-direct {v2, p0, v0}, Landroidx/media2/player/MediaPlayer$38;-><init>(Landroidx/media2/player/MediaPlayer;Landroidx/media2/player/MediaPlayer$TrackInfo;)V

    invoke-virtual {p0, v2}, Landroidx/media2/player/MediaPlayer;->notifySessionPlayerCallback(Landroidx/media2/player/MediaPlayer$SessionPlayerCallbackNotifier;)V

    .line 3003
    goto :goto_1

    .line 2957
    :pswitch_2
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->getCurrentPosition()J

    move-result-wide v2

    .line 2958
    .local v2, "pos":J
    new-instance v4, Landroidx/media2/player/MediaPlayer$34;

    invoke-direct {v4, p0, v2, v3}, Landroidx/media2/player/MediaPlayer$34;-><init>(Landroidx/media2/player/MediaPlayer;J)V

    invoke-virtual {p0, v4}, Landroidx/media2/player/MediaPlayer;->notifySessionPlayerCallback(Landroidx/media2/player/MediaPlayer$SessionPlayerCallbackNotifier;)V

    .line 2965
    goto :goto_1

    .line 2954
    .end local v2    # "pos":J
    :pswitch_3
    invoke-virtual {p0, v2}, Landroidx/media2/player/MediaPlayer;->setState(I)V

    .line 2955
    goto :goto_1

    .line 2951
    :pswitch_4
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroidx/media2/player/MediaPlayer;->setState(I)V

    .line 2952
    goto :goto_1

    .line 2977
    :cond_2
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v2}, Landroidx/media2/player/MediaPlayer2;->getPlaybackParams()Landroidx/media2/player/PlaybackParams;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media2/player/PlaybackParams;->getSpeed()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 2978
    .local v2, "speed":F
    new-instance v3, Landroidx/media2/player/MediaPlayer$36;

    invoke-direct {v3, p0, v2}, Landroidx/media2/player/MediaPlayer$36;-><init>(Landroidx/media2/player/MediaPlayer;F)V

    invoke-virtual {p0, v3}, Landroidx/media2/player/MediaPlayer;->notifySessionPlayerCallback(Landroidx/media2/player/MediaPlayer$SessionPlayerCallbackNotifier;)V

    .line 2985
    goto :goto_1

    .line 2967
    .end local v2    # "speed":F
    :cond_3
    new-instance v2, Landroidx/media2/player/MediaPlayer$35;

    invoke-direct {v2, p0, p2}, Landroidx/media2/player/MediaPlayer$35;-><init>(Landroidx/media2/player/MediaPlayer;Landroidx/media2/common/MediaItem;)V

    invoke-virtual {p0, v2}, Landroidx/media2/player/MediaPlayer;->notifySessionPlayerCallback(Landroidx/media2/player/MediaPlayer$SessionPlayerCallbackNotifier;)V

    .line 2974
    goto :goto_1

    .line 3005
    :cond_4
    new-instance v2, Landroidx/media2/player/MediaPlayer$39;

    invoke-direct {v2, p0, v0}, Landroidx/media2/player/MediaPlayer$39;-><init>(Landroidx/media2/player/MediaPlayer;Landroidx/media2/player/MediaPlayer$TrackInfo;)V

    invoke-virtual {p0, v2}, Landroidx/media2/player/MediaPlayer;->notifySessionPlayerCallback(Landroidx/media2/player/MediaPlayer$SessionPlayerCallbackNotifier;)V

    goto :goto_1

    .line 2947
    :cond_5
    nop

    .line 3015
    :goto_1
    const/16 v2, 0x3e9

    if-eq p3, v2, :cond_7

    .line 3016
    sget-object v2, Landroidx/media2/player/MediaPlayer;->sResultCodeMap:Landroidx/collection/ArrayMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Landroidx/media2/player/MediaPlayer;->sResultCodeMap:Landroidx/collection/ArrayMap;

    .line 3017
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_2

    :cond_6
    const/4 v2, -0x1

    .line 3016
    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3018
    .local v2, "resultCode":Ljava/lang/Integer;
    iget-object v3, v1, Landroidx/media2/player/MediaPlayer$PendingCommand;->mFuture:Landroidx/media2/player/futures/ResolvableFuture;

    new-instance v4, Landroidx/media2/common/SessionPlayer$PlayerResult;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v5, p2}, Landroidx/media2/common/SessionPlayer$PlayerResult;-><init>(ILandroidx/media2/common/MediaItem;)V

    invoke-virtual {v3, v4}, Landroidx/media2/player/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    .line 3019
    .end local v2    # "resultCode":Ljava/lang/Integer;
    goto :goto_4

    .line 3020
    :cond_7
    sget-object v2, Landroidx/media2/player/MediaPlayer;->sPrepareDrmStatusMap:Landroidx/collection/ArrayMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Landroidx/media2/player/MediaPlayer;->sPrepareDrmStatusMap:Landroidx/collection/ArrayMap;

    .line 3021
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_3

    :cond_8
    const/16 v2, -0x3eb

    .line 3020
    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3022
    .restart local v2    # "resultCode":Ljava/lang/Integer;
    iget-object v3, v1, Landroidx/media2/player/MediaPlayer$PendingCommand;->mFuture:Landroidx/media2/player/futures/ResolvableFuture;

    new-instance v4, Landroidx/media2/player/MediaPlayer$DrmResult;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v5, p2}, Landroidx/media2/player/MediaPlayer$DrmResult;-><init>(ILandroidx/media2/common/MediaItem;)V

    invoke-virtual {v3, v4}, Landroidx/media2/player/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    .line 3024
    .end local v2    # "resultCode":Ljava/lang/Integer;
    :goto_4
    invoke-direct {p0}, Landroidx/media2/player/MediaPlayer;->executePendingFutures()V

    .line 3025
    return-void

    .line 2935
    .end local v0    # "trackInfo":Landroidx/media2/player/MediaPlayer$TrackInfo;
    .end local v1    # "expected":Landroidx/media2/player/MediaPlayer$PendingCommand;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method notifyMediaPlayerCallback(Landroidx/media2/player/MediaPlayer$MediaPlayerCallbackNotifier;)V
    .locals 6
    .param p1, "notifier"    # Landroidx/media2/player/MediaPlayer$MediaPlayerCallbackNotifier;

    .line 2739
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2740
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_0

    .line 2741
    monitor-exit v0

    return-void

    .line 2743
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2744
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->getCallbacks()Ljava/util/List;

    move-result-object v0

    .line 2745
    .local v0, "callbacks":Ljava/util/List;, "Ljava/util/List<Landroidx/core/util/Pair<Landroidx/media2/common/SessionPlayer$PlayerCallback;Ljava/util/concurrent/Executor;>;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/util/Pair;

    .line 2746
    .local v2, "pair":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Landroidx/media2/common/SessionPlayer$PlayerCallback;Ljava/util/concurrent/Executor;>;"
    iget-object v3, v2, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    instance-of v3, v3, Landroidx/media2/player/MediaPlayer$PlayerCallback;

    if-eqz v3, :cond_1

    .line 2747
    iget-object v3, v2, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroidx/media2/player/MediaPlayer$PlayerCallback;

    .line 2748
    .local v3, "callback":Landroidx/media2/player/MediaPlayer$PlayerCallback;
    iget-object v4, v2, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/util/concurrent/Executor;

    new-instance v5, Landroidx/media2/player/MediaPlayer$33;

    invoke-direct {v5, p0, p1, v3}, Landroidx/media2/player/MediaPlayer$33;-><init>(Landroidx/media2/player/MediaPlayer;Landroidx/media2/player/MediaPlayer$MediaPlayerCallbackNotifier;Landroidx/media2/player/MediaPlayer$PlayerCallback;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 2746
    .end local v3    # "callback":Landroidx/media2/player/MediaPlayer$PlayerCallback;
    :cond_1
    nop

    .line 2755
    .end local v2    # "pair":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Landroidx/media2/common/SessionPlayer$PlayerCallback;Ljava/util/concurrent/Executor;>;"
    :goto_1
    goto :goto_0

    .line 2756
    :cond_2
    return-void

    .line 2743
    .end local v0    # "callbacks":Ljava/util/List;, "Ljava/util/List<Landroidx/core/util/Pair<Landroidx/media2/common/SessionPlayer$PlayerCallback;Ljava/util/concurrent/Executor;>;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    return-void
.end method

.method notifySessionPlayerCallback(Landroidx/media2/player/MediaPlayer$SessionPlayerCallbackNotifier;)V
    .locals 6
    .param p1, "notifier"    # Landroidx/media2/player/MediaPlayer$SessionPlayerCallbackNotifier;

    .line 2720
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2721
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_0

    .line 2722
    monitor-exit v0

    return-void

    .line 2724
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2725
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->getCallbacks()Ljava/util/List;

    move-result-object v0

    .line 2726
    .local v0, "callbacks":Ljava/util/List;, "Ljava/util/List<Landroidx/core/util/Pair<Landroidx/media2/common/SessionPlayer$PlayerCallback;Ljava/util/concurrent/Executor;>;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/util/Pair;

    .line 2727
    .local v2, "pair":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Landroidx/media2/common/SessionPlayer$PlayerCallback;Ljava/util/concurrent/Executor;>;"
    iget-object v3, v2, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroidx/media2/common/SessionPlayer$PlayerCallback;

    .line 2728
    .local v3, "callback":Landroidx/media2/common/SessionPlayer$PlayerCallback;
    iget-object v4, v2, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/util/concurrent/Executor;

    new-instance v5, Landroidx/media2/player/MediaPlayer$32;

    invoke-direct {v5, p0, p1, v3}, Landroidx/media2/player/MediaPlayer$32;-><init>(Landroidx/media2/player/MediaPlayer;Landroidx/media2/player/MediaPlayer$SessionPlayerCallbackNotifier;Landroidx/media2/common/SessionPlayer$PlayerCallback;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2734
    .end local v2    # "pair":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Landroidx/media2/common/SessionPlayer$PlayerCallback;Ljava/util/concurrent/Executor;>;"
    .end local v3    # "callback":Landroidx/media2/common/SessionPlayer$PlayerCallback;
    goto :goto_0

    .line 2735
    :cond_1
    return-void

    .line 2724
    .end local v0    # "callbacks":Ljava/util/List;, "Ljava/util/List<Landroidx/core/util/Pair<Landroidx/media2/common/SessionPlayer$PlayerCallback;Ljava/util/concurrent/Executor;>;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    return-void
.end method

.method public pause()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 764
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 765
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_0

    .line 766
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->createFutureForClosed()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 768
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 769
    new-instance v0, Landroidx/media2/player/MediaPlayer$3;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1}, Landroidx/media2/player/MediaPlayer$3;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;)V

    .line 783
    .local v0, "pendingFuture":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->addPendingFuture(Landroidx/media2/player/MediaPlayer$PendingFuture;)V

    .line 784
    return-object v0

    .line 768
    .end local v0    # "pendingFuture":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public play()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 731
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 732
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_0

    .line 733
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->createFutureForClosed()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 735
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 736
    new-instance v0, Landroidx/media2/player/MediaPlayer$2;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1}, Landroidx/media2/player/MediaPlayer$2;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;)V

    .line 757
    .local v0, "pendingFuture":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->addPendingFuture(Landroidx/media2/player/MediaPlayer$PendingFuture;)V

    .line 758
    return-object v0

    .line 735
    .end local v0    # "pendingFuture":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public prepare()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 804
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 805
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_0

    .line 806
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->createFutureForClosed()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 808
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 809
    new-instance v0, Landroidx/media2/player/MediaPlayer$4;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1}, Landroidx/media2/player/MediaPlayer$4;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;)V

    .line 826
    .local v0, "pendingFuture":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->addPendingFuture(Landroidx/media2/player/MediaPlayer$PendingFuture;)V

    .line 827
    return-object v0

    .line 808
    .end local v0    # "pendingFuture":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public prepareDrm(Ljava/util/UUID;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "uuid"    # Ljava/util/UUID;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/player/MediaPlayer$DrmResult;",
            ">;"
        }
    .end annotation

    .line 2467
    if-eqz p1, :cond_0

    .line 2470
    new-instance v0, Landroidx/media2/player/MediaPlayer$28;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1, p1}, Landroidx/media2/player/MediaPlayer$28;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;Ljava/util/UUID;)V

    .line 2484
    .local v0, "pendingFuture":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<Landroidx/media2/player/MediaPlayer$DrmResult;>;"
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->addPendingFuture(Landroidx/media2/player/MediaPlayer$PendingFuture;)V

    .line 2485
    return-object v0

    .line 2468
    .end local v0    # "pendingFuture":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<Landroidx/media2/player/MediaPlayer$DrmResult;>;"
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "uuid shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public provideDrmKeyResponse([B[B)[B
    .locals 3
    .param p1, "keySetId"    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "response"    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/player/MediaPlayer$NoDrmSchemeException;,
            Landroid/media/DeniedByServerException;
        }
    .end annotation

    .line 2587
    :try_start_0
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/player/MediaPlayer2;->provideDrmKeyResponse([B[B)[B

    move-result-object v0
    :try_end_0
    .catch Landroidx/media2/player/MediaPlayer2$NoDrmSchemeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2588
    :catch_0
    move-exception v0

    .line 2589
    .local v0, "e":Landroidx/media2/player/MediaPlayer2$NoDrmSchemeException;
    new-instance v1, Landroidx/media2/player/MediaPlayer$NoDrmSchemeException;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer2$NoDrmSchemeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media2/player/MediaPlayer$NoDrmSchemeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public registerPlayerCallback(Ljava/util/concurrent/Executor;Landroidx/media2/player/MediaPlayer$PlayerCallback;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "callback"    # Landroidx/media2/player/MediaPlayer$PlayerCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2413
    invoke-super {p0, p1, p2}, Landroidx/media2/common/SessionPlayer;->registerPlayerCallback(Ljava/util/concurrent/Executor;Landroidx/media2/common/SessionPlayer$PlayerCallback;)V

    .line 2414
    return-void
.end method

.method public releaseDrm()V
    .locals 3
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/player/MediaPlayer$NoDrmSchemeException;
        }
    .end annotation

    .line 2501
    :try_start_0
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer2;->releaseDrm()V
    :try_end_0
    .catch Landroidx/media2/player/MediaPlayer2$NoDrmSchemeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2504
    nop

    .line 2505
    return-void

    .line 2502
    :catch_0
    move-exception v0

    .line 2503
    .local v0, "e":Landroidx/media2/player/MediaPlayer2$NoDrmSchemeException;
    new-instance v1, Landroidx/media2/player/MediaPlayer$NoDrmSchemeException;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer2$NoDrmSchemeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media2/player/MediaPlayer$NoDrmSchemeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removePlaylistItem(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "index"    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 1210
    if-ltz p1, :cond_1

    .line 1213
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1214
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_0

    .line 1215
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->createFutureForClosed()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1217
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1219
    new-instance v0, Landroidx/media2/player/MediaPlayer$11;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1, p1}, Landroidx/media2/player/MediaPlayer$11;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;I)V

    .line 1263
    .local v0, "pendingFuture":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->addPendingFuture(Landroidx/media2/player/MediaPlayer$PendingFuture;)V

    .line 1264
    return-object v0

    .line 1217
    .end local v0    # "pendingFuture":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1211
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index shouldn\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public replacePlaylistItem(ILandroidx/media2/common/MediaItem;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .param p1, "index"    # I
    .param p2, "item"    # Landroidx/media2/common/MediaItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media2/common/MediaItem;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 1271
    if-eqz p2, :cond_4

    .line 1274
    instance-of v0, p2, Landroidx/media2/common/FileMediaItem;

    if-eqz v0, :cond_1

    .line 1275
    move-object v0, p2

    check-cast v0, Landroidx/media2/common/FileMediaItem;

    invoke-virtual {v0}, Landroidx/media2/common/FileMediaItem;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1276
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File descriptor is closed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1274
    :cond_1
    nop

    .line 1279
    :goto_0
    if-ltz p1, :cond_3

    .line 1282
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1283
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_2

    .line 1284
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->createFutureForClosed()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1286
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1288
    new-instance v0, Landroidx/media2/player/MediaPlayer$12;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1, p1, p2}, Landroidx/media2/player/MediaPlayer$12;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;ILandroidx/media2/common/MediaItem;)V

    .line 1330
    .local v0, "pendingFuture":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->addPendingFuture(Landroidx/media2/player/MediaPlayer$PendingFuture;)V

    .line 1331
    return-object v0

    .line 1286
    .end local v0    # "pendingFuture":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1280
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index shouldn\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1272
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "item shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 5

    .line 1701
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPendingCommands:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 1702
    :try_start_0
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mPendingCommands:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/player/MediaPlayer$PendingCommand;

    .line 1703
    .local v2, "c":Landroidx/media2/player/MediaPlayer$PendingCommand;
    iget-object v4, v2, Landroidx/media2/player/MediaPlayer$PendingCommand;->mFuture:Landroidx/media2/player/futures/ResolvableFuture;

    invoke-virtual {v4, v3}, Landroidx/media2/player/futures/ResolvableFuture;->cancel(Z)Z

    .line 1704
    goto :goto_0

    .line 1705
    .end local v2    # "c":Landroidx/media2/player/MediaPlayer$PendingCommand;
    :cond_0
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mPendingCommands:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    .line 1706
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1708
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mPendingFutures:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 1709
    :try_start_1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPendingFutures:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/player/MediaPlayer$PendingFuture;

    .line 1710
    .local v2, "f":Landroidx/media2/player/MediaPlayer$PendingFuture;
    iget-boolean v4, v2, Landroidx/media2/player/MediaPlayer$PendingFuture;->mExecuteCalled:Z

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Landroidx/media2/player/MediaPlayer$PendingFuture;->isDone()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Landroidx/media2/player/MediaPlayer$PendingFuture;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1711
    invoke-virtual {v2, v3}, Landroidx/media2/player/MediaPlayer$PendingFuture;->cancel(Z)Z

    goto :goto_2

    .line 1710
    :cond_1
    nop

    .line 1713
    .end local v2    # "f":Landroidx/media2/player/MediaPlayer$PendingFuture;
    :goto_2
    goto :goto_1

    .line 1714
    :cond_2
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPendingFutures:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 1715
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1716
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1717
    const/4 v1, 0x0

    :try_start_2
    iput v1, p0, Landroidx/media2/player/MediaPlayer;->mState:I

    .line 1718
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->mMediaItemToBuffState:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 1719
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1720
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->mPlaylistLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1721
    :try_start_3
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPlaylist:Landroidx/media2/player/MediaPlayer$MediaItemList;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer$MediaItemList;->clear()V

    .line 1722
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mShuffledList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1723
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/player/MediaPlayer;->mCurPlaylistItem:Landroidx/media2/common/MediaItem;

    .line 1724
    iput-object v0, p0, Landroidx/media2/player/MediaPlayer;->mNextPlaylistItem:Landroidx/media2/common/MediaItem;

    .line 1725
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media2/player/MediaPlayer;->mCurrentShuffleIdx:I

    .line 1726
    iput-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mSetMediaItemCalled:Z

    .line 1727
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1728
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mAudioFocusHandler:Landroidx/media2/player/AudioFocusHandler;

    invoke-virtual {v0}, Landroidx/media2/player/AudioFocusHandler;->onReset()V

    .line 1729
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer2;->reset()V

    .line 1730
    return-void

    .line 1727
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 1719
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    .line 1715
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 1706
    :catchall_3
    move-exception v1

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v1

    return-void
.end method

.method public restoreDrmKeys([B)V
    .locals 3
    .param p1, "keySetId"    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/player/MediaPlayer$NoDrmSchemeException;
        }
    .end annotation

    .line 2602
    if-eqz p1, :cond_0

    .line 2606
    :try_start_0
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v0, p1}, Landroidx/media2/player/MediaPlayer2;->restoreDrmKeys([B)V
    :try_end_0
    .catch Landroidx/media2/player/MediaPlayer2$NoDrmSchemeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2609
    nop

    .line 2610
    return-void

    .line 2607
    :catch_0
    move-exception v0

    .line 2608
    .local v0, "e":Landroidx/media2/player/MediaPlayer2$NoDrmSchemeException;
    new-instance v1, Landroidx/media2/player/MediaPlayer$NoDrmSchemeException;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer2$NoDrmSchemeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media2/player/MediaPlayer$NoDrmSchemeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2603
    .end local v0    # "e":Landroidx/media2/player/MediaPlayer2$NoDrmSchemeException;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "keySetId shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public seekTo(J)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 8
    .param p1, "position"    # J
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 833
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 834
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_0

    .line 835
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->createFutureForClosed()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 837
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 838
    new-instance v0, Landroidx/media2/player/MediaPlayer$5;

    iget-object v4, p0, Landroidx/media2/player/MediaPlayer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v5, 0x1

    move-object v2, v0

    move-object v3, p0

    move-wide v6, p1

    invoke-direct/range {v2 .. v7}, Landroidx/media2/player/MediaPlayer$5;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;ZJ)V

    .line 852
    .local v0, "pendingFuture":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->addPendingFuture(Landroidx/media2/player/MediaPlayer$PendingFuture;)V

    .line 853
    return-object v0

    .line 837
    .end local v0    # "pendingFuture":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public seekTo(JI)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 9
    .param p1, "position"    # J
    .param p3, "mode"    # I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 1978
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1979
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_0

    .line 1980
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->createFutureForClosed()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1982
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1983
    new-instance v0, Landroidx/media2/player/MediaPlayer$22;

    iget-object v4, p0, Landroidx/media2/player/MediaPlayer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v5, 0x1

    move-object v2, v0

    move-object v3, p0

    move v6, p3

    move-wide v7, p1

    invoke-direct/range {v2 .. v8}, Landroidx/media2/player/MediaPlayer$22;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;ZIJ)V

    .line 1999
    .local v0, "pendingFuture":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->addPendingFuture(Landroidx/media2/player/MediaPlayer$PendingFuture;)V

    .line 2000
    return-object v0

    .line 1982
    .end local v0    # "pendingFuture":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public selectTrack(Landroidx/media2/player/MediaPlayer$TrackInfo;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .param p1, "trackInfo"    # Landroidx/media2/player/MediaPlayer$TrackInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/player/MediaPlayer$TrackInfo;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 2276
    if-eqz p1, :cond_1

    .line 2279
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2280
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_0

    .line 2281
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->createFutureForClosed()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2283
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2284
    invoke-virtual {p1}, Landroidx/media2/player/MediaPlayer$TrackInfo;->getId()I

    move-result v0

    .line 2285
    .local v0, "trackId":I
    new-instance v1, Landroidx/media2/player/MediaPlayer$26;

    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, p0, v2, v0, p1}, Landroidx/media2/player/MediaPlayer$26;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;ILandroidx/media2/player/MediaPlayer$TrackInfo;)V

    .line 2300
    .local v1, "pendingFuture":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    invoke-virtual {p0, v1}, Landroidx/media2/player/MediaPlayer;->addPendingFuture(Landroidx/media2/player/MediaPlayer$PendingFuture;)V

    .line 2301
    return-object v1

    .line 2283
    .end local v0    # "trackId":I
    .end local v1    # "pendingFuture":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 2277
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "trackInfo shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public selectTrackInternal(Landroidx/media2/common/SessionPlayer$TrackInfo;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p1, "info"    # Landroidx/media2/common/SessionPlayer$TrackInfo;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 2378
    invoke-direct {p0, p1}, Landroidx/media2/player/MediaPlayer;->createTrackInfo(Landroidx/media2/common/SessionPlayer$TrackInfo;)Landroidx/media2/player/MediaPlayer$TrackInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->selectTrack(Landroidx/media2/player/MediaPlayer$TrackInfo;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public setAudioAttributes(Landroidx/media/AudioAttributesCompat;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "attr"    # Landroidx/media/AudioAttributesCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media/AudioAttributesCompat;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 904
    if-eqz p1, :cond_1

    .line 907
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 908
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_0

    .line 909
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->createFutureForClosed()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 911
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 912
    new-instance v0, Landroidx/media2/player/MediaPlayer$7;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1, p1}, Landroidx/media2/player/MediaPlayer$7;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;Landroidx/media/AudioAttributesCompat;)V

    .line 926
    .local v0, "pendingFuture":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->addPendingFuture(Landroidx/media2/player/MediaPlayer$PendingFuture;)V

    .line 927
    return-object v0

    .line 911
    .end local v0    # "pendingFuture":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 905
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "attr shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAudioSessionId(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "sessionId"    # I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 2056
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2057
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_0

    .line 2058
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->createFutureForClosed()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2060
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2061
    new-instance v0, Landroidx/media2/player/MediaPlayer$23;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1, p1}, Landroidx/media2/player/MediaPlayer$23;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;I)V

    .line 2075
    .local v0, "pendingFuture":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->addPendingFuture(Landroidx/media2/player/MediaPlayer$PendingFuture;)V

    .line 2076
    return-object v0

    .line 2060
    .end local v0    # "pendingFuture":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setAuxEffectSendLevel(F)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "level"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 2162
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2163
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_0

    .line 2164
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->createFutureForClosed()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2166
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2167
    new-instance v0, Landroidx/media2/player/MediaPlayer$25;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1, p1}, Landroidx/media2/player/MediaPlayer$25;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;F)V

    .line 2181
    .local v0, "pendingFuture":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->addPendingFuture(Landroidx/media2/player/MediaPlayer$PendingFuture;)V

    .line 2182
    return-object v0

    .line 2166
    .end local v0    # "pendingFuture":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method setBufferingState(Landroidx/media2/common/MediaItem;I)V
    .locals 3
    .param p1, "item"    # Landroidx/media2/common/MediaItem;
    .param p2, "state"    # I

    .line 2705
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2706
    :try_start_0
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mMediaItemToBuffState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2707
    .local v1, "previousState":Ljava/lang/Integer;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2708
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    .line 2709
    :cond_1
    :goto_0
    new-instance v0, Landroidx/media2/player/MediaPlayer$31;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/player/MediaPlayer$31;-><init>(Landroidx/media2/player/MediaPlayer;Landroidx/media2/common/MediaItem;I)V

    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->notifySessionPlayerCallback(Landroidx/media2/player/MediaPlayer$SessionPlayerCallbackNotifier;)V

    .line 2716
    :goto_1
    return-void

    .line 2707
    .end local v1    # "previousState":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setDrmPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "propertyName"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/player/MediaPlayer$NoDrmSchemeException;
        }
    .end annotation

    .line 2649
    if-eqz p1, :cond_1

    .line 2652
    if-eqz p2, :cond_0

    .line 2656
    :try_start_0
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/player/MediaPlayer2;->setDrmPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroidx/media2/player/MediaPlayer2$NoDrmSchemeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2659
    nop

    .line 2660
    return-void

    .line 2657
    :catch_0
    move-exception v0

    .line 2658
    .local v0, "e":Landroidx/media2/player/MediaPlayer2$NoDrmSchemeException;
    new-instance v1, Landroidx/media2/player/MediaPlayer$NoDrmSchemeException;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer2$NoDrmSchemeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media2/player/MediaPlayer$NoDrmSchemeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2653
    .end local v0    # "e":Landroidx/media2/player/MediaPlayer2$NoDrmSchemeException;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "value shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2650
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "propertyName shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMediaItem(Landroidx/media2/common/MediaItem;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .param p1, "item"    # Landroidx/media2/common/MediaItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/MediaItem;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 1040
    if-eqz p1, :cond_3

    .line 1043
    instance-of v0, p1, Landroidx/media2/common/FileMediaItem;

    if-eqz v0, :cond_1

    .line 1044
    move-object v0, p1

    check-cast v0, Landroidx/media2/common/FileMediaItem;

    invoke-virtual {v0}, Landroidx/media2/common/FileMediaItem;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1045
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File descriptor is closed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1043
    :cond_1
    nop

    .line 1048
    :goto_0
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1049
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_2

    .line 1050
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->createFutureForClosed()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1052
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1053
    new-instance v0, Landroidx/media2/player/MediaPlayer$8;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1, p1}, Landroidx/media2/player/MediaPlayer$8;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;Landroidx/media2/common/MediaItem;)V

    .line 1068
    .local v0, "pendingFuture":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->addPendingFuture(Landroidx/media2/player/MediaPlayer$PendingFuture;)V

    .line 1069
    return-object v0

    .line 1052
    .end local v0    # "pendingFuture":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1041
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "item shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setMediaItemsInternal(Landroidx/media2/common/MediaItem;Landroidx/media2/common/MediaItem;)Ljava/util/List;
    .locals 3
    .param p1, "curItem"    # Landroidx/media2/common/MediaItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "nextItem"    # Landroidx/media2/common/MediaItem;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/MediaItem;",
            "Landroidx/media2/common/MediaItem;",
            ")",
            "Ljava/util/List<",
            "Landroidx/media2/player/futures/ResolvableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;>;"
        }
    .end annotation

    .line 2769
    if-eqz p1, :cond_2

    .line 2773
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPlaylistLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2774
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mSetMediaItemCalled:Z

    .line 2775
    .local v1, "setMediaItemCalled":Z
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2777
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2778
    .local v0, "futures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/player/futures/ResolvableFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;>;"
    if-eqz v1, :cond_0

    .line 2779
    invoke-virtual {p0, p1}, Landroidx/media2/player/MediaPlayer;->setNextMediaItemInternal(Landroidx/media2/common/MediaItem;)Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2780
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->skipToNextInternal()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2782
    :cond_0
    invoke-direct {p0, p1}, Landroidx/media2/player/MediaPlayer;->setMediaItemInternal(Landroidx/media2/common/MediaItem;)Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2785
    :goto_0
    if-eqz p2, :cond_1

    .line 2786
    invoke-virtual {p0, p2}, Landroidx/media2/player/MediaPlayer;->setNextMediaItemInternal(Landroidx/media2/common/MediaItem;)Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2785
    :cond_1
    nop

    .line 2788
    :goto_1
    return-object v0

    .line 2775
    .end local v0    # "futures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/player/futures/ResolvableFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;>;"
    .end local v1    # "setMediaItemCalled":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 2770
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "curItem shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setNextMediaItemInternal(Landroidx/media2/common/MediaItem;)Landroidx/media2/player/futures/ResolvableFuture;
    .locals 4
    .param p1, "item"    # Landroidx/media2/common/MediaItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/MediaItem;",
            ")",
            "Landroidx/media2/player/futures/ResolvableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 2805
    invoke-static {}, Landroidx/media2/player/futures/ResolvableFuture;->create()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v0

    .line 2806
    .local v0, "future":Landroidx/media2/player/futures/ResolvableFuture;, "Landroidx/media2/player/futures/ResolvableFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mPendingCommands:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 2807
    :try_start_0
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v2, p1}, Landroidx/media2/player/MediaPlayer2;->setNextMediaItem(Landroidx/media2/common/MediaItem;)Ljava/lang/Object;

    move-result-object v2

    .line 2808
    .local v2, "token":Ljava/lang/Object;
    const/16 v3, 0x16

    invoke-virtual {p0, v3, v0, v2}, Landroidx/media2/player/MediaPlayer;->addPendingCommandLocked(ILandroidx/media2/player/futures/ResolvableFuture;Ljava/lang/Object;)V

    .line 2810
    .end local v2    # "token":Ljava/lang/Object;
    monitor-exit v1

    .line 2811
    return-object v0

    .line 2810
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setOnDrmConfigHelper(Landroidx/media2/player/MediaPlayer$OnDrmConfigHelper;)V
    .locals 2
    .param p1, "listener"    # Landroidx/media2/player/MediaPlayer$OnDrmConfigHelper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 2674
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/media2/player/MediaPlayer$29;

    invoke-direct {v1, p0, p1}, Landroidx/media2/player/MediaPlayer$29;-><init>(Landroidx/media2/player/MediaPlayer;Landroidx/media2/player/MediaPlayer$OnDrmConfigHelper;)V

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/media2/player/MediaPlayer2;->setOnDrmConfigHelper(Landroidx/media2/player/MediaPlayer2$OnDrmConfigHelper;)V

    .line 2681
    return-void
.end method

.method public setPlaybackParams(Landroidx/media2/player/PlaybackParams;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "params"    # Landroidx/media2/player/PlaybackParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/player/PlaybackParams;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 1914
    if-eqz p1, :cond_1

    .line 1917
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1918
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_0

    .line 1919
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->createFutureForClosed()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1921
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1922
    new-instance v0, Landroidx/media2/player/MediaPlayer$21;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1, p1}, Landroidx/media2/player/MediaPlayer$21;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;Landroidx/media2/player/PlaybackParams;)V

    .line 1936
    .local v0, "pendingFuture":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->addPendingFuture(Landroidx/media2/player/MediaPlayer$PendingFuture;)V

    .line 1937
    return-object v0

    .line 1921
    .end local v0    # "pendingFuture":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1915
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "params shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPlaybackSpeed(F)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "playbackSpeed"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
            to = 3.4028234663852886E38
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 872
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 873
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_0

    .line 874
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->createFutureForClosed()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 876
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 877
    new-instance v0, Landroidx/media2/player/MediaPlayer$6;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1, p1}, Landroidx/media2/player/MediaPlayer$6;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;F)V

    .line 896
    .local v0, "pendingFuture":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->addPendingFuture(Landroidx/media2/player/MediaPlayer$PendingFuture;)V

    .line 897
    return-object v0

    .line 876
    .end local v0    # "pendingFuture":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setPlayerVolume(F)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "volume"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 1812
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 1815
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1816
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_0

    .line 1817
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->createFutureForClosed()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1819
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1820
    new-instance v0, Landroidx/media2/player/MediaPlayer$20;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1, p1}, Landroidx/media2/player/MediaPlayer$20;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;F)V

    .line 1828
    .local v0, "pendingFuture":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->addPendingFuture(Landroidx/media2/player/MediaPlayer$PendingFuture;)V

    .line 1829
    return-object v0

    .line 1819
    .end local v0    # "pendingFuture":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1812
    :cond_1
    nop

    .line 1813
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "volume should be between 0.0 and 1.0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setPlayerVolumeInternal(F)Landroidx/media2/player/futures/ResolvableFuture;
    .locals 4
    .param p1, "volume"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Landroidx/media2/player/futures/ResolvableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 2827
    invoke-static {}, Landroidx/media2/player/futures/ResolvableFuture;->create()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v0

    .line 2828
    .local v0, "future":Landroidx/media2/player/futures/ResolvableFuture;, "Landroidx/media2/player/futures/ResolvableFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mPendingCommands:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 2829
    :try_start_0
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v2, p1}, Landroidx/media2/player/MediaPlayer2;->setPlayerVolume(F)Ljava/lang/Object;

    move-result-object v2

    .line 2830
    .local v2, "token":Ljava/lang/Object;
    const/16 v3, 0x1a

    invoke-virtual {p0, v3, v0, v2}, Landroidx/media2/player/MediaPlayer;->addPendingCommandLocked(ILandroidx/media2/player/futures/ResolvableFuture;Ljava/lang/Object;)V

    .line 2832
    .end local v2    # "token":Ljava/lang/Object;
    monitor-exit v1

    .line 2833
    return-object v0

    .line 2832
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setPlaylist(Ljava/util/List;Landroidx/media2/common/MediaMetadata;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "metadata"    # Landroidx/media2/common/MediaMetadata;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;",
            "Landroidx/media2/common/MediaMetadata;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 1076
    .local p1, "playlist":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/MediaItem;>;"
    if-eqz p1, :cond_9

    .line 1078
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1081
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1082
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_0

    .line 1083
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->createFutureForClosed()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1085
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1086
    const/4 v0, 0x0

    .line 1087
    .local v0, "errorString":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/common/MediaItem;

    .line 1088
    .local v2, "item":Landroidx/media2/common/MediaItem;
    if-nez v2, :cond_1

    .line 1089
    const-string v0, "playlist shouldn\'t contain null item"

    .line 1090
    goto :goto_2

    .line 1092
    :cond_1
    instance-of v3, v2, Landroidx/media2/common/FileMediaItem;

    if-eqz v3, :cond_3

    .line 1093
    move-object v3, v2

    check-cast v3, Landroidx/media2/common/FileMediaItem;

    invoke-virtual {v3}, Landroidx/media2/common/FileMediaItem;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1094
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File descriptor is closed. "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1095
    goto :goto_2

    .line 1093
    :cond_2
    goto :goto_1

    .line 1092
    :cond_3
    nop

    .line 1098
    .end local v2    # "item":Landroidx/media2/common/MediaItem;
    :goto_1
    goto :goto_0

    .line 1087
    :cond_4
    nop

    .line 1099
    :goto_2
    if-eqz v0, :cond_7

    .line 1101
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/common/MediaItem;

    .line 1102
    .restart local v2    # "item":Landroidx/media2/common/MediaItem;
    instance-of v3, v2, Landroidx/media2/common/FileMediaItem;

    if-eqz v3, :cond_5

    .line 1103
    move-object v3, v2

    check-cast v3, Landroidx/media2/common/FileMediaItem;

    invoke-virtual {v3}, Landroidx/media2/common/FileMediaItem;->increaseRefCount()V

    .line 1104
    move-object v3, v2

    check-cast v3, Landroidx/media2/common/FileMediaItem;

    invoke-virtual {v3}, Landroidx/media2/common/FileMediaItem;->decreaseRefCount()V

    goto :goto_4

    .line 1102
    :cond_5
    nop

    .line 1106
    .end local v2    # "item":Landroidx/media2/common/MediaItem;
    :goto_4
    goto :goto_3

    .line 1107
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1110
    :cond_7
    new-instance v1, Landroidx/media2/player/MediaPlayer$9;

    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, p0, v2, p2, p1}, Landroidx/media2/player/MediaPlayer$9;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;Landroidx/media2/common/MediaMetadata;Ljava/util/List;)V

    .line 1137
    .local v1, "pendingFuture":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    invoke-virtual {p0, v1}, Landroidx/media2/player/MediaPlayer;->addPendingFuture(Landroidx/media2/player/MediaPlayer$PendingFuture;)V

    .line 1138
    return-object v1

    .line 1085
    .end local v0    # "errorString":Ljava/lang/String;
    .end local v1    # "pendingFuture":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1079
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "playlist shouldn\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1077
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "playlist shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    return-void
.end method

.method public setRepeatMode(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "repeatMode"    # I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 1478
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1479
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_0

    .line 1480
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->createFutureForClosed()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1482
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1483
    new-instance v0, Landroidx/media2/player/MediaPlayer$17;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1, p1}, Landroidx/media2/player/MediaPlayer$17;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;I)V

    .line 1508
    .local v0, "pendingFuture":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->addPendingFuture(Landroidx/media2/player/MediaPlayer$PendingFuture;)V

    .line 1509
    return-object v0

    .line 1482
    .end local v0    # "pendingFuture":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setShuffleMode(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "shuffleMode"    # I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 1515
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1516
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_0

    .line 1517
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->createFutureForClosed()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1519
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1520
    new-instance v0, Landroidx/media2/player/MediaPlayer$18;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1, p1}, Landroidx/media2/player/MediaPlayer$18;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;I)V

    .line 1545
    .local v0, "pendingFuture":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->addPendingFuture(Landroidx/media2/player/MediaPlayer$PendingFuture;)V

    .line 1546
    return-object v0

    .line 1519
    .end local v0    # "pendingFuture":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method setState(I)V
    .locals 3
    .param p1, "state"    # I

    .line 2685
    const/4 v0, 0x0

    .line 2686
    .local v0, "needToNotify":Z
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2687
    :try_start_0
    iget v2, p0, Landroidx/media2/player/MediaPlayer;->mState:I

    if-eq v2, p1, :cond_0

    .line 2688
    iput p1, p0, Landroidx/media2/player/MediaPlayer;->mState:I

    .line 2689
    const/4 v0, 0x1

    goto :goto_0

    .line 2687
    :cond_0
    nop

    .line 2691
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2692
    if-eqz v0, :cond_1

    .line 2693
    new-instance v1, Landroidx/media2/player/MediaPlayer$30;

    invoke-direct {v1, p0, p1}, Landroidx/media2/player/MediaPlayer$30;-><init>(Landroidx/media2/player/MediaPlayer;I)V

    invoke-virtual {p0, v1}, Landroidx/media2/player/MediaPlayer;->notifySessionPlayerCallback(Landroidx/media2/player/MediaPlayer$SessionPlayerCallbackNotifier;)V

    goto :goto_1

    .line 2692
    :cond_1
    nop

    .line 2700
    :goto_1
    return-void

    .line 2691
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setSurface(Landroid/view/Surface;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Surface;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 1757
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1758
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_0

    .line 1759
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->createFutureForClosed()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1761
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1762
    new-instance v0, Landroidx/media2/player/MediaPlayer$19;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1, p1}, Landroidx/media2/player/MediaPlayer$19;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;Landroid/view/Surface;)V

    .line 1775
    .local v0, "pendingFuture":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->addPendingFuture(Landroidx/media2/player/MediaPlayer$PendingFuture;)V

    .line 1776
    return-object v0

    .line 1761
    .end local v0    # "pendingFuture":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setSurfaceInternal(Landroid/view/Surface;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Surface;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 1786
    invoke-virtual {p0, p1}, Landroidx/media2/player/MediaPlayer;->setSurface(Landroid/view/Surface;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method skipToNextInternal()Landroidx/media2/player/futures/ResolvableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/media2/player/futures/ResolvableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 2816
    invoke-static {}, Landroidx/media2/player/futures/ResolvableFuture;->create()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v0

    .line 2817
    .local v0, "future":Landroidx/media2/player/futures/ResolvableFuture;, "Landroidx/media2/player/futures/ResolvableFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mPendingCommands:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 2818
    :try_start_0
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v2}, Landroidx/media2/player/MediaPlayer2;->skipToNext()Ljava/lang/Object;

    move-result-object v2

    .line 2819
    .local v2, "token":Ljava/lang/Object;
    const/16 v3, 0x1d

    invoke-virtual {p0, v3, v0, v2}, Landroidx/media2/player/MediaPlayer;->addPendingCommandLocked(ILandroidx/media2/player/futures/ResolvableFuture;Ljava/lang/Object;)V

    .line 2821
    .end local v2    # "token":Ljava/lang/Object;
    monitor-exit v1

    .line 2822
    return-object v0

    .line 2821
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public skipToNextPlaylistItem()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 1374
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1375
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_0

    .line 1376
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->createFutureForClosed()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1378
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1379
    new-instance v0, Landroidx/media2/player/MediaPlayer$14;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1}, Landroidx/media2/player/MediaPlayer$14;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;)V

    .line 1409
    .local v0, "pendingFuture":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->addPendingFuture(Landroidx/media2/player/MediaPlayer$PendingFuture;)V

    .line 1410
    return-object v0

    .line 1378
    .end local v0    # "pendingFuture":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public skipToPlaylistItem(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "index"    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 1416
    if-ltz p1, :cond_1

    .line 1419
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1420
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_0

    .line 1421
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->createFutureForClosed()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1423
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1425
    new-instance v0, Landroidx/media2/player/MediaPlayer$15;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1, p1}, Landroidx/media2/player/MediaPlayer$15;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;I)V

    .line 1442
    .local v0, "pendingFuture":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->addPendingFuture(Landroidx/media2/player/MediaPlayer$PendingFuture;)V

    .line 1443
    return-object v0

    .line 1423
    .end local v0    # "pendingFuture":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1417
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index shouldn\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skipToPreviousPlaylistItem()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 1337
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1338
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_0

    .line 1339
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->createFutureForClosed()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1341
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1342
    new-instance v0, Landroidx/media2/player/MediaPlayer$13;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1}, Landroidx/media2/player/MediaPlayer$13;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;)V

    .line 1367
    .local v0, "pendingFuture":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->addPendingFuture(Landroidx/media2/player/MediaPlayer$PendingFuture;)V

    .line 1368
    return-object v0

    .line 1341
    .end local v0    # "pendingFuture":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public unregisterPlayerCallback(Landroidx/media2/player/MediaPlayer$PlayerCallback;)V
    .locals 0
    .param p1, "callback"    # Landroidx/media2/player/MediaPlayer$PlayerCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2423
    invoke-super {p0, p1}, Landroidx/media2/common/SessionPlayer;->unregisterPlayerCallback(Landroidx/media2/common/SessionPlayer$PlayerCallback;)V

    .line 2424
    return-void
.end method

.method updateAndGetCurrentNextItemIfNeededLocked()Landroidx/core/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/util/Pair<",
            "Landroidx/media2/common/MediaItem;",
            "Landroidx/media2/common/MediaItem;",
            ">;"
        }
    .end annotation

    .line 2889
    const/4 v0, 0x0

    .line 2890
    .local v0, "changedCurItem":Landroidx/media2/common/MediaItem;
    const/4 v1, 0x0

    .line 2891
    .local v1, "changedNextItem":Landroidx/media2/common/MediaItem;
    iget v2, p0, Landroidx/media2/player/MediaPlayer;->mCurrentShuffleIdx:I

    const/4 v3, 0x0

    if-gez v2, :cond_1

    .line 2892
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->mCurPlaylistItem:Landroidx/media2/common/MediaItem;

    if-nez v2, :cond_0

    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->mNextPlaylistItem:Landroidx/media2/common/MediaItem;

    if-nez v2, :cond_0

    .line 2893
    return-object v3

    .line 2892
    :cond_0
    nop

    .line 2895
    iput-object v3, p0, Landroidx/media2/player/MediaPlayer;->mCurPlaylistItem:Landroidx/media2/common/MediaItem;

    .line 2896
    iput-object v3, p0, Landroidx/media2/player/MediaPlayer;->mNextPlaylistItem:Landroidx/media2/common/MediaItem;

    .line 2897
    new-instance v2, Landroidx/core/util/Pair;

    invoke-direct {v2, v3, v3}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 2899
    :cond_1
    iget-object v4, p0, Landroidx/media2/player/MediaPlayer;->mCurPlaylistItem:Landroidx/media2/common/MediaItem;

    iget-object v5, p0, Landroidx/media2/player/MediaPlayer;->mShuffledList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2900
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->mShuffledList:Ljava/util/ArrayList;

    iget v4, p0, Landroidx/media2/player/MediaPlayer;->mCurrentShuffleIdx:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/common/MediaItem;

    iput-object v2, p0, Landroidx/media2/player/MediaPlayer;->mCurPlaylistItem:Landroidx/media2/common/MediaItem;

    move-object v0, v2

    goto :goto_0

    .line 2899
    :cond_2
    nop

    .line 2902
    :goto_0
    iget v2, p0, Landroidx/media2/player/MediaPlayer;->mCurrentShuffleIdx:I

    add-int/lit8 v2, v2, 0x1

    .line 2903
    .local v2, "nextShuffleIdx":I
    iget-object v4, p0, Landroidx/media2/player/MediaPlayer;->mShuffledList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_5

    .line 2904
    iget v4, p0, Landroidx/media2/player/MediaPlayer;->mRepeatMode:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    goto :goto_1

    .line 2907
    :cond_3
    const/4 v2, -0x1

    goto :goto_2

    .line 2904
    :cond_4
    :goto_1
    nop

    .line 2905
    const/4 v2, 0x0

    goto :goto_2

    .line 2903
    :cond_5
    nop

    .line 2911
    :goto_2
    const/4 v4, -0x1

    if-ne v2, v4, :cond_6

    .line 2912
    iput-object v3, p0, Landroidx/media2/player/MediaPlayer;->mNextPlaylistItem:Landroidx/media2/common/MediaItem;

    goto :goto_3

    .line 2913
    :cond_6
    iget-object v4, p0, Landroidx/media2/player/MediaPlayer;->mNextPlaylistItem:Landroidx/media2/common/MediaItem;

    iget-object v5, p0, Landroidx/media2/player/MediaPlayer;->mShuffledList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 2914
    iget-object v4, p0, Landroidx/media2/player/MediaPlayer;->mShuffledList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media2/common/MediaItem;

    iput-object v4, p0, Landroidx/media2/player/MediaPlayer;->mNextPlaylistItem:Landroidx/media2/common/MediaItem;

    move-object v1, v4

    goto :goto_3

    .line 2913
    :cond_7
    nop

    .line 2917
    :goto_3
    if-nez v0, :cond_8

    if-nez v1, :cond_8

    goto :goto_4

    :cond_8
    new-instance v3, Landroidx/core/util/Pair;

    invoke-direct {v3, v0, v1}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_4
    return-object v3
.end method

.method public updatePlaylistMetadata(Landroidx/media2/common/MediaMetadata;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "metadata"    # Landroidx/media2/common/MediaMetadata;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/MediaMetadata;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 1450
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1451
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_0

    .line 1452
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->createFutureForClosed()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1454
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1455
    new-instance v0, Landroidx/media2/player/MediaPlayer$16;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1, p1}, Landroidx/media2/player/MediaPlayer$16;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;Landroidx/media2/common/MediaMetadata;)V

    .line 1471
    .local v0, "pendingFuture":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->addPendingFuture(Landroidx/media2/player/MediaPlayer$PendingFuture;)V

    .line 1472
    return-object v0

    .line 1454
    .end local v0    # "pendingFuture":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
