.class public abstract Landroidx/media2/player/MediaPlayer2$EventCallback;
.super Ljava/lang/Object;
.source "MediaPlayer2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/MediaPlayer2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EventCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 849
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallCompleted(Landroidx/media2/player/MediaPlayer2;Landroidx/media2/common/MediaItem;II)V
    .locals 0
    .param p1, "mp"    # Landroidx/media2/player/MediaPlayer2;
    .param p2, "item"    # Landroidx/media2/common/MediaItem;
    .param p3, "what"    # I
    .param p4, "status"    # I

    .line 917
    return-void
.end method

.method public onCommandLabelReached(Landroidx/media2/player/MediaPlayer2;Ljava/lang/Object;)V
    .locals 0
    .param p1, "mp"    # Landroidx/media2/player/MediaPlayer2;
    .param p2, "label"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 949
    return-void
.end method

.method public onError(Landroidx/media2/player/MediaPlayer2;Landroidx/media2/common/MediaItem;II)V
    .locals 0
    .param p1, "mp"    # Landroidx/media2/player/MediaPlayer2;
    .param p2, "item"    # Landroidx/media2/common/MediaItem;
    .param p3, "what"    # I
    .param p4, "extra"    # I

    .line 894
    return-void
.end method

.method public onInfo(Landroidx/media2/player/MediaPlayer2;Landroidx/media2/common/MediaItem;II)V
    .locals 0
    .param p1, "mp"    # Landroidx/media2/player/MediaPlayer2;
    .param p2, "item"    # Landroidx/media2/common/MediaItem;
    .param p3, "what"    # I
    .param p4, "extra"    # I

    .line 905
    return-void
.end method

.method public onMediaTimeDiscontinuity(Landroidx/media2/player/MediaPlayer2;Landroidx/media2/common/MediaItem;Landroidx/media2/player/MediaTimestamp;)V
    .locals 0
    .param p1, "mp"    # Landroidx/media2/player/MediaPlayer2;
    .param p2, "item"    # Landroidx/media2/common/MediaItem;
    .param p3, "timestamp"    # Landroidx/media2/player/MediaTimestamp;

    .line 940
    return-void
.end method

.method public onSubtitleData(Landroidx/media2/player/MediaPlayer2;Landroidx/media2/common/MediaItem;ILandroidx/media2/common/SubtitleData;)V
    .locals 0
    .param p1, "mp"    # Landroidx/media2/player/MediaPlayer2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "item"    # Landroidx/media2/common/MediaItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "trackIdx"    # I
    .param p4, "data"    # Landroidx/media2/common/SubtitleData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 959
    return-void
.end method

.method public onTimedMetaDataAvailable(Landroidx/media2/player/MediaPlayer2;Landroidx/media2/common/MediaItem;Landroidx/media2/player/TimedMetaData;)V
    .locals 0
    .param p1, "mp"    # Landroidx/media2/player/MediaPlayer2;
    .param p2, "item"    # Landroidx/media2/common/MediaItem;
    .param p3, "data"    # Landroidx/media2/player/TimedMetaData;

    .line 882
    return-void
.end method

.method public onVideoSizeChanged(Landroidx/media2/player/MediaPlayer2;Landroidx/media2/common/MediaItem;II)V
    .locals 0
    .param p1, "mp"    # Landroidx/media2/player/MediaPlayer2;
    .param p2, "item"    # Landroidx/media2/common/MediaItem;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 862
    return-void
.end method
