.class public final Landroidx/media2/exoplayer/external/source/hls/HlsManifest;
.super Ljava/lang/Object;
.source "HlsManifest.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field public final masterPlaylist:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;

.field public final mediaPlaylist:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;


# direct methods
.method constructor <init>(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;)V
    .locals 0
    .param p1, "masterPlaylist"    # Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;
    .param p2, "mediaPlaylist"    # Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsManifest;->masterPlaylist:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;

    .line 47
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsManifest;->mediaPlaylist:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;

    .line 48
    return-void
.end method
