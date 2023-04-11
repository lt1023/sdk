.class public final Landroidx/media2/exoplayer/external/source/hls/playlist/FilteringHlsPlaylistParserFactory;
.super Ljava/lang/Object;
.source "FilteringHlsPlaylistParserFactory.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParserFactory;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final hlsPlaylistParserFactory:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParserFactory;

.field private final streamKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/offline/StreamKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParserFactory;Ljava/util/List;)V
    .locals 0
    .param p1, "hlsPlaylistParserFactory"    # Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParserFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParserFactory;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/offline/StreamKey;",
            ">;)V"
        }
    .end annotation

    .line 44
    .local p2, "streamKeys":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/offline/StreamKey;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/FilteringHlsPlaylistParserFactory;->hlsPlaylistParserFactory:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParserFactory;

    .line 46
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/FilteringHlsPlaylistParserFactory;->streamKeys:Ljava/util/List;

    .line 47
    return-void
.end method


# virtual methods
.method public createPlaylistParser()Landroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser<",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylist;",
            ">;"
        }
    .end annotation

    .line 51
    new-instance v0, Landroidx/media2/exoplayer/external/offline/FilteringManifestParser;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/FilteringHlsPlaylistParserFactory;->hlsPlaylistParserFactory:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParserFactory;

    .line 52
    invoke-interface {v1}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParserFactory;->createPlaylistParser()Landroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser;

    move-result-object v1

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/FilteringHlsPlaylistParserFactory;->streamKeys:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/offline/FilteringManifestParser;-><init>(Landroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser;Ljava/util/List;)V

    .line 51
    return-object v0
.end method

.method public createPlaylistParser(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;)Landroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser;
    .locals 3
    .param p1, "masterPlaylist"    # Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;",
            ")",
            "Landroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser<",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylist;",
            ">;"
        }
    .end annotation

    .line 58
    new-instance v0, Landroidx/media2/exoplayer/external/offline/FilteringManifestParser;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/FilteringHlsPlaylistParserFactory;->hlsPlaylistParserFactory:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParserFactory;

    .line 59
    invoke-interface {v1, p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParserFactory;->createPlaylistParser(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;)Landroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser;

    move-result-object v1

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/FilteringHlsPlaylistParserFactory;->streamKeys:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/offline/FilteringManifestParser;-><init>(Landroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser;Ljava/util/List;)V

    .line 58
    return-object v0
.end method
