.class final Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemInfo;
.super Ljava/lang/Object;
.source "ExoPlayerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/exoplayer/ExoPlayerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaItemInfo"
.end annotation


# instance fields
.field final mDurationProvidingMediaSource:Landroidx/media2/player/exoplayer/DurationProvidingMediaSource;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final mIsRemote:Z

.field final mMediaItem:Landroidx/media2/common/MediaItem;


# direct methods
.method constructor <init>(Landroidx/media2/common/MediaItem;Landroidx/media2/player/exoplayer/DurationProvidingMediaSource;Z)V
    .locals 0
    .param p1, "mediaItem"    # Landroidx/media2/common/MediaItem;
    .param p2, "durationProvidingMediaSource"    # Landroidx/media2/player/exoplayer/DurationProvidingMediaSource;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "isRemote"    # Z

    .line 827
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 828
    iput-object p1, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemInfo;->mMediaItem:Landroidx/media2/common/MediaItem;

    .line 829
    iput-object p2, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemInfo;->mDurationProvidingMediaSource:Landroidx/media2/player/exoplayer/DurationProvidingMediaSource;

    .line 830
    iput-boolean p3, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemInfo;->mIsRemote:Z

    .line 831
    return-void
.end method
