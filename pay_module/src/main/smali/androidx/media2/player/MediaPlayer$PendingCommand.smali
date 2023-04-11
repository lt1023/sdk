.class final Landroidx/media2/player/MediaPlayer$PendingCommand;
.super Ljava/lang/Object;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PendingCommand"
.end annotation


# instance fields
.field final mCallType:I

.field final mFuture:Landroidx/media2/player/futures/ResolvableFuture;

.field final mTrackInfo:Landroidx/media2/player/MediaPlayer$TrackInfo;


# direct methods
.method constructor <init>(ILandroidx/media2/player/futures/ResolvableFuture;)V
    .locals 1
    .param p1, "callType"    # I
    .param p2, "future"    # Landroidx/media2/player/futures/ResolvableFuture;

    .line 512
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/player/MediaPlayer$PendingCommand;-><init>(ILandroidx/media2/player/futures/ResolvableFuture;Landroidx/media2/player/MediaPlayer$TrackInfo;)V

    .line 513
    return-void
.end method

.method constructor <init>(ILandroidx/media2/player/futures/ResolvableFuture;Landroidx/media2/player/MediaPlayer$TrackInfo;)V
    .locals 0
    .param p1, "callType"    # I
    .param p2, "future"    # Landroidx/media2/player/futures/ResolvableFuture;
    .param p3, "trackInfo"    # Landroidx/media2/player/MediaPlayer$TrackInfo;

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 517
    iput p1, p0, Landroidx/media2/player/MediaPlayer$PendingCommand;->mCallType:I

    .line 518
    iput-object p2, p0, Landroidx/media2/player/MediaPlayer$PendingCommand;->mFuture:Landroidx/media2/player/futures/ResolvableFuture;

    .line 519
    iput-object p3, p0, Landroidx/media2/player/MediaPlayer$PendingCommand;->mTrackInfo:Landroidx/media2/player/MediaPlayer$TrackInfo;

    .line 520
    return-void
.end method
