.class final Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$FullSegmentEncryptionKeyCache;
.super Ljava/util/LinkedHashMap;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FullSegmentEncryptionKeyCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Landroid/net/Uri;",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 664
    const/16 v0, 0x8

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 666
    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 661
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$FullSegmentEncryptionKeyCache;->get(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)[B
    .locals 1
    .param p1, "keyUri"    # Ljava/lang/Object;

    .line 670
    if-nez p1, :cond_0

    .line 671
    const/4 v0, 0x0

    return-object v0

    .line 673
    :cond_0
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 661
    check-cast p1, Landroid/net/Uri;

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$FullSegmentEncryptionKeyCache;->put(Landroid/net/Uri;[B)[B

    move-result-object p1

    return-object p1
.end method

.method public put(Landroid/net/Uri;[B)[B
    .locals 1
    .param p1, "keyUri"    # Landroid/net/Uri;
    .param p2, "key"    # [B

    .line 678
    invoke-static {p2}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-super {p0, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Landroid/net/Uri;",
            "[B>;)Z"
        }
    .end annotation

    .line 683
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/Uri;[B>;"
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$FullSegmentEncryptionKeyCache;->size()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method