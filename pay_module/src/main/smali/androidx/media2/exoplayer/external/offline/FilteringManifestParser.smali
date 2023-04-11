.class public final Landroidx/media2/exoplayer/external/offline/FilteringManifestParser;
.super Ljava/lang/Object;
.source "FilteringManifestParser.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroidx/media2/exoplayer/external/offline/FilterableManifest<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Landroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final parser:Landroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private final streamKeys:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/offline/StreamKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser;Ljava/util/List;)V
    .locals 0
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser<",
            "+TT;>;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/offline/StreamKey;",
            ">;)V"
        }
    .end annotation

    .line 45
    .local p0, "this":Landroidx/media2/exoplayer/external/offline/FilteringManifestParser;, "Landroidx/media2/exoplayer/external/offline/FilteringManifestParser<TT;>;"
    .local p1, "parser":Landroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser;, "Landroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser<+TT;>;"
    .local p2, "streamKeys":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/offline/StreamKey;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroidx/media2/exoplayer/external/offline/FilteringManifestParser;->parser:Landroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser;

    .line 47
    iput-object p2, p0, Landroidx/media2/exoplayer/external/offline/FilteringManifestParser;->streamKeys:Ljava/util/List;

    .line 48
    return-void
.end method


# virtual methods
.method public parse(Landroid/net/Uri;Ljava/io/InputStream;)Landroidx/media2/exoplayer/external/offline/FilterableManifest;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    .local p0, "this":Landroidx/media2/exoplayer/external/offline/FilteringManifestParser;, "Landroidx/media2/exoplayer/external/offline/FilteringManifestParser<TT;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/offline/FilteringManifestParser;->parser:Landroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser;

    invoke-interface {v0, p1, p2}, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/offline/FilterableManifest;

    .line 53
    .local v0, "manifest":Landroidx/media2/exoplayer/external/offline/FilterableManifest;, "TT;"
    iget-object v1, p0, Landroidx/media2/exoplayer/external/offline/FilteringManifestParser;->streamKeys:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/offline/FilteringManifestParser;->streamKeys:Ljava/util/List;

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/offline/FilterableManifest;->copy(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/offline/FilterableManifest;

    goto :goto_1

    :cond_1
    :goto_0
    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method public bridge synthetic parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    .local p0, "this":Landroidx/media2/exoplayer/external/offline/FilteringManifestParser;, "Landroidx/media2/exoplayer/external/offline/FilteringManifestParser<TT;>;"
    invoke-virtual {p0, p1, p2}, Landroidx/media2/exoplayer/external/offline/FilteringManifestParser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Landroidx/media2/exoplayer/external/offline/FilterableManifest;

    move-result-object p1

    return-object p1
.end method
