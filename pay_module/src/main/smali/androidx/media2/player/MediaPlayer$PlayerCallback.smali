.class public abstract Landroidx/media2/player/MediaPlayer$PlayerCallback;
.super Landroidx/media2/common/SessionPlayer$PlayerCallback;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PlayerCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3283
    invoke-direct {p0}, Landroidx/media2/common/SessionPlayer$PlayerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrmInfo(Landroidx/media2/player/MediaPlayer;Landroidx/media2/common/MediaItem;Landroidx/media2/player/MediaPlayer$DrmInfo;)V
    .locals 0
    .param p1, "mp"    # Landroidx/media2/player/MediaPlayer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "item"    # Landroidx/media2/common/MediaItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "drmInfo"    # Landroidx/media2/player/MediaPlayer$DrmInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 3390
    return-void
.end method

.method public onError(Landroidx/media2/player/MediaPlayer;Landroidx/media2/common/MediaItem;II)V
    .locals 0
    .param p1, "mp"    # Landroidx/media2/player/MediaPlayer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "item"    # Landroidx/media2/common/MediaItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "what"    # I
    .param p4, "extra"    # I

    .line 3341
    return-void
.end method

.method public onInfo(Landroidx/media2/player/MediaPlayer;Landroidx/media2/common/MediaItem;II)V
    .locals 0
    .param p1, "mp"    # Landroidx/media2/player/MediaPlayer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "item"    # Landroidx/media2/common/MediaItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "what"    # I
    .param p4, "extra"    # I

    .line 3353
    return-void
.end method

.method public onMediaTimeDiscontinuity(Landroidx/media2/player/MediaPlayer;Landroidx/media2/common/MediaItem;Landroidx/media2/player/MediaTimestamp;)V
    .locals 0
    .param p1, "mp"    # Landroidx/media2/player/MediaPlayer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "item"    # Landroidx/media2/common/MediaItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "timestamp"    # Landroidx/media2/player/MediaTimestamp;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3377
    return-void
.end method

.method public onTimedMetaDataAvailable(Landroidx/media2/player/MediaPlayer;Landroidx/media2/common/MediaItem;Landroidx/media2/player/TimedMetaData;)V
    .locals 0
    .param p1, "mp"    # Landroidx/media2/player/MediaPlayer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "item"    # Landroidx/media2/common/MediaItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "data"    # Landroidx/media2/player/TimedMetaData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3329
    return-void
.end method

.method public onVideoSizeChanged(Landroidx/media2/player/MediaPlayer;Landroidx/media2/common/MediaItem;Landroidx/media2/player/VideoSize;)V
    .locals 0
    .param p1, "mp"    # Landroidx/media2/player/MediaPlayer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "item"    # Landroidx/media2/common/MediaItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "size"    # Landroidx/media2/player/VideoSize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3295
    return-void
.end method

.method public onVideoSizeChangedInternal(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/MediaItem;Landroidx/media2/common/VideoSize;)V
    .locals 2
    .param p1, "player"    # Landroidx/media2/common/SessionPlayer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "item"    # Landroidx/media2/common/MediaItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "sizeInternal"    # Landroidx/media2/common/VideoSize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 3305
    instance-of v0, p1, Landroidx/media2/player/MediaPlayer;

    if-eqz v0, :cond_0

    .line 3308
    new-instance v0, Landroidx/media2/player/VideoSize;

    invoke-direct {v0, p3}, Landroidx/media2/player/VideoSize;-><init>(Landroidx/media2/common/VideoSize;)V

    .line 3309
    .local v0, "size":Landroidx/media2/player/VideoSize;
    move-object v1, p1

    check-cast v1, Landroidx/media2/player/MediaPlayer;

    invoke-virtual {p0, v1, p2, v0}, Landroidx/media2/player/MediaPlayer$PlayerCallback;->onVideoSizeChanged(Landroidx/media2/player/MediaPlayer;Landroidx/media2/common/MediaItem;Landroidx/media2/player/VideoSize;)V

    .line 3310
    return-void

    .line 3306
    .end local v0    # "size":Landroidx/media2/player/VideoSize;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "player must be MediaPlayer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
