.class public final Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;
.super Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylist;
.source "HlsMasterPlaylist.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;,
        Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;
    }
.end annotation


# static fields
.field public static final EMPTY:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;

.field public static final GROUP_INDEX_AUDIO:I = 0x1

.field public static final GROUP_INDEX_SUBTITLE:I = 0x2

.field public static final GROUP_INDEX_VARIANT:I


# instance fields
.field public final audios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;",
            ">;"
        }
    .end annotation
.end field

.field public final closedCaptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;",
            ">;"
        }
    .end annotation
.end field

.field public final mediaPlaylistUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public final muxedAudioFormat:Landroidx/media2/exoplayer/external/Format;

.field public final muxedCaptionFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;"
        }
    .end annotation
.end field

.field public final sessionKeyDrmInitData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ">;"
        }
    .end annotation
.end field

.field public final subtitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;",
            ">;"
        }
    .end annotation
.end field

.field public final variableDefinitions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final variants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;",
            ">;"
        }
    .end annotation
.end field

.field public final videos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 41
    new-instance v13, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;

    const-string v1, ""

    .line 44
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 45
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 46
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 47
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 48
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 49
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 51
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    .line 53
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v11

    .line 54
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/media2/exoplayer/external/Format;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V

    sput-object v13, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->EMPTY:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/media2/exoplayer/external/Format;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V
    .locals 1
    .param p1, "baseUri"    # Ljava/lang/String;
    .param p8, "muxedAudioFormat"    # Landroidx/media2/exoplayer/external/Format;
    .param p10, "hasIndependentSegments"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;",
            ">;",
            "Landroidx/media2/exoplayer/external/Format;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ">;)V"
        }
    .end annotation

    .line 224
    .local p2, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "variants":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;>;"
    .local p4, "videos":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .local p5, "audios":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .local p6, "subtitles":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .local p7, "closedCaptions":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .local p9, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/Format;>;"
    .local p11, "variableDefinitions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p12, "sessionKeyDrmInitData":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/drm/DrmInitData;>;"
    invoke-direct {p0, p1, p2, p10}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylist;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 225
    nop

    .line 227
    invoke-static {p3, p4, p5, p6, p7}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->getMediaPlaylistUrls(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 226
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->mediaPlaylistUrls:Ljava/util/List;

    .line 228
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->variants:Ljava/util/List;

    .line 229
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->videos:Ljava/util/List;

    .line 230
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->audios:Ljava/util/List;

    .line 231
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->subtitles:Ljava/util/List;

    .line 232
    invoke-static {p7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->closedCaptions:Ljava/util/List;

    .line 233
    iput-object p8, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->muxedAudioFormat:Landroidx/media2/exoplayer/external/Format;

    .line 234
    if-eqz p9, :cond_0

    .line 235
    invoke-static {p9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->muxedCaptionFormats:Ljava/util/List;

    .line 236
    invoke-static {p11}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->variableDefinitions:Ljava/util/Map;

    .line 237
    invoke-static {p12}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->sessionKeyDrmInitData:Ljava/util/List;

    .line 238
    return-void
.end method

.method private static addMediaPlaylistUrls(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;",
            ">;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 304
    .local p0, "renditions":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .local p1, "out":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 305
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;->url:Landroid/net/Uri;

    .line 306
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 307
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 306
    :cond_0
    nop

    .line 304
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 310
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private static copyStreams(Ljava/util/List;ILjava/util/List;)Ljava/util/List;
    .locals 6
    .param p1, "groupIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;I",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/offline/StreamKey;",
            ">;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 314
    .local p0, "streams":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "streamKeys":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/offline/StreamKey;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 325
    .local v0, "copiedStreams":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 326
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 327
    .local v2, "stream":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 328
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media2/exoplayer/external/offline/StreamKey;

    .line 329
    .local v4, "streamKey":Landroidx/media2/exoplayer/external/offline/StreamKey;
    iget v5, v4, Landroidx/media2/exoplayer/external/offline/StreamKey;->groupIndex:I

    if-ne v5, p1, :cond_0

    iget v5, v4, Landroidx/media2/exoplayer/external/offline/StreamKey;->trackIndex:I

    if-ne v5, v1, :cond_0

    .line 330
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    goto :goto_2

    .line 329
    :cond_0
    nop

    .line 327
    .end local v4    # "streamKey":Landroidx/media2/exoplayer/external/offline/StreamKey;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 325
    .end local v2    # "stream":Ljava/lang/Object;, "TT;"
    .end local v3    # "j":I
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 335
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public static createSingleVariantMasterPlaylist(Ljava/lang/String;)Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;
    .locals 15
    .param p0, "variantUrl"    # Ljava/lang/String;

    .line 266
    nop

    .line 267
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;->createMediaPlaylistVariantUrl(Landroid/net/Uri;)Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 268
    .local v0, "variant":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;>;"
    new-instance v14, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;

    .line 270
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 272
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 273
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 274
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 275
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 279
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v12

    .line 280
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v13

    const/4 v2, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, v14

    move-object v4, v0

    invoke-direct/range {v1 .. v13}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/media2/exoplayer/external/Format;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V

    .line 268
    return-object v14
.end method

.method private static getMediaPlaylistUrls(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 289
    .local p0, "variants":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;>;"
    .local p1, "videos":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .local p2, "audios":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .local p3, "subtitles":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .local p4, "closedCaptions":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v0, "mediaPlaylistUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 291
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;->url:Landroid/net/Uri;

    .line 292
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 293
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 292
    :cond_0
    nop

    .line 290
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 296
    .end local v1    # "i":I
    :cond_1
    invoke-static {p1, v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->addMediaPlaylistUrls(Ljava/util/List;Ljava/util/List;)V

    .line 297
    invoke-static {p2, v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->addMediaPlaylistUrls(Ljava/util/List;Ljava/util/List;)V

    .line 298
    invoke-static {p3, v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->addMediaPlaylistUrls(Ljava/util/List;Ljava/util/List;)V

    .line 299
    invoke-static {p4, v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->addMediaPlaylistUrls(Ljava/util/List;Ljava/util/List;)V

    .line 300
    return-object v0
.end method


# virtual methods
.method public copy(Ljava/util/List;)Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/offline/StreamKey;",
            ">;)",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;"
        }
    .end annotation

    .line 242
    .local p1, "streamKeys":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/offline/StreamKey;>;"
    new-instance v13, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->baseUri:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->tags:Ljava/util/List;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->variants:Ljava/util/List;

    .line 245
    const/4 v3, 0x0

    invoke-static {v0, v3, p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->copyStreams(Ljava/util/List;ILjava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 247
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->audios:Ljava/util/List;

    .line 248
    const/4 v5, 0x1

    invoke-static {v0, v5, p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->copyStreams(Ljava/util/List;ILjava/util/List;)Ljava/util/List;

    move-result-object v5

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->subtitles:Ljava/util/List;

    .line 249
    const/4 v6, 0x2

    invoke-static {v0, v6, p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->copyStreams(Ljava/util/List;ILjava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 251
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->muxedAudioFormat:Landroidx/media2/exoplayer/external/Format;

    iget-object v9, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->muxedCaptionFormats:Ljava/util/List;

    iget-boolean v10, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->hasIndependentSegments:Z

    iget-object v11, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->variableDefinitions:Ljava/util/Map;

    iget-object v12, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->sessionKeyDrmInitData:Ljava/util/List;

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/media2/exoplayer/external/Format;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V

    .line 242
    return-object v13
.end method

.method public bridge synthetic copy(Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->copy(Ljava/util/List;)Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;

    move-result-object p1

    return-object p1
.end method
