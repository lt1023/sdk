.class public abstract Landroidx/media2/player/MediaPlayer2$DrmEventCallback;
.super Ljava/lang/Object;
.source "MediaPlayer2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/MediaPlayer2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DrmEventCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrmInfo(Landroidx/media2/player/MediaPlayer2;Landroidx/media2/common/MediaItem;Landroidx/media2/player/MediaPlayer2$DrmInfo;)V
    .locals 0
    .param p1, "mp"    # Landroidx/media2/player/MediaPlayer2;
    .param p2, "item"    # Landroidx/media2/common/MediaItem;
    .param p3, "drmInfo"    # Landroidx/media2/player/MediaPlayer2$DrmInfo;

    .line 1503
    return-void
.end method

.method public onDrmPrepared(Landroidx/media2/player/MediaPlayer2;Landroidx/media2/common/MediaItem;I)V
    .locals 0
    .param p1, "mp"    # Landroidx/media2/player/MediaPlayer2;
    .param p2, "item"    # Landroidx/media2/common/MediaItem;
    .param p3, "status"    # I

    .line 1514
    return-void
.end method
