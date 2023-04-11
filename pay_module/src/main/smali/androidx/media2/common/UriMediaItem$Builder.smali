.class public final Landroidx/media2/common/UriMediaItem$Builder;
.super Landroidx/media2/common/MediaItem$Builder;
.source "UriMediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/common/UriMediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mUri:Landroid/net/Uri;

.field mUriCookies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation
.end field

.field mUriHeader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroidx/media2/common/UriMediaItem$Builder;-><init>(Landroid/net/Uri;Ljava/util/Map;Ljava/util/List;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/util/Map;Ljava/util/List;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;)V"
        }
    .end annotation

    .line 142
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    invoke-direct {p0}, Landroidx/media2/common/MediaItem$Builder;-><init>()V

    .line 143
    const-string/jumbo v0, "uri cannot be null"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iput-object p1, p0, Landroidx/media2/common/UriMediaItem$Builder;->mUri:Landroid/net/Uri;

    .line 145
    if-eqz p3, :cond_2

    .line 146
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    .line 147
    .local v0, "cookieHandler":Ljava/net/CookieHandler;
    if-eqz v0, :cond_1

    instance-of v1, v0, Ljava/net/CookieManager;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The cookie handler has to be of CookieManager type when cookies are provided"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 147
    :cond_1
    :goto_0
    goto :goto_1

    .line 145
    .end local v0    # "cookieHandler":Ljava/net/CookieHandler;
    :cond_2
    nop

    .line 154
    :goto_1
    iput-object p1, p0, Landroidx/media2/common/UriMediaItem$Builder;->mUri:Landroid/net/Uri;

    .line 155
    if-eqz p2, :cond_3

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Landroidx/media2/common/UriMediaItem$Builder;->mUriHeader:Ljava/util/Map;

    goto :goto_2

    .line 155
    :cond_3
    nop

    .line 158
    :goto_2
    if-eqz p3, :cond_4

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroidx/media2/common/UriMediaItem$Builder;->mUriCookies:Ljava/util/List;

    goto :goto_3

    .line 158
    :cond_4
    nop

    .line 161
    :goto_3
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Landroidx/media2/common/MediaItem;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 105
    invoke-virtual {p0}, Landroidx/media2/common/UriMediaItem$Builder;->build()Landroidx/media2/common/UriMediaItem;

    move-result-object v0

    return-object v0
.end method

.method public build()Landroidx/media2/common/UriMediaItem;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 190
    new-instance v0, Landroidx/media2/common/UriMediaItem;

    invoke-direct {v0, p0}, Landroidx/media2/common/UriMediaItem;-><init>(Landroidx/media2/common/UriMediaItem$Builder;)V

    return-object v0
.end method

.method public bridge synthetic setEndPosition(J)Landroidx/media2/common/MediaItem$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 105
    invoke-virtual {p0, p1, p2}, Landroidx/media2/common/UriMediaItem$Builder;->setEndPosition(J)Landroidx/media2/common/UriMediaItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setEndPosition(J)Landroidx/media2/common/UriMediaItem$Builder;
    .locals 1
    .param p1, "position"    # J
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 181
    invoke-super {p0, p1, p2}, Landroidx/media2/common/MediaItem$Builder;->setEndPosition(J)Landroidx/media2/common/MediaItem$Builder;

    move-result-object v0

    check-cast v0, Landroidx/media2/common/UriMediaItem$Builder;

    return-object v0
.end method

.method public bridge synthetic setMetadata(Landroidx/media2/common/MediaMetadata;)Landroidx/media2/common/MediaItem$Builder;
    .locals 0
    .param p1    # Landroidx/media2/common/MediaMetadata;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 105
    invoke-virtual {p0, p1}, Landroidx/media2/common/UriMediaItem$Builder;->setMetadata(Landroidx/media2/common/MediaMetadata;)Landroidx/media2/common/UriMediaItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setMetadata(Landroidx/media2/common/MediaMetadata;)Landroidx/media2/common/UriMediaItem$Builder;
    .locals 1
    .param p1, "metadata"    # Landroidx/media2/common/MediaMetadata;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 167
    invoke-super {p0, p1}, Landroidx/media2/common/MediaItem$Builder;->setMetadata(Landroidx/media2/common/MediaMetadata;)Landroidx/media2/common/MediaItem$Builder;

    move-result-object v0

    check-cast v0, Landroidx/media2/common/UriMediaItem$Builder;

    return-object v0
.end method

.method public bridge synthetic setStartPosition(J)Landroidx/media2/common/MediaItem$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 105
    invoke-virtual {p0, p1, p2}, Landroidx/media2/common/UriMediaItem$Builder;->setStartPosition(J)Landroidx/media2/common/UriMediaItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setStartPosition(J)Landroidx/media2/common/UriMediaItem$Builder;
    .locals 1
    .param p1, "position"    # J
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 174
    invoke-super {p0, p1, p2}, Landroidx/media2/common/MediaItem$Builder;->setStartPosition(J)Landroidx/media2/common/MediaItem$Builder;

    move-result-object v0

    check-cast v0, Landroidx/media2/common/UriMediaItem$Builder;

    return-object v0
.end method
