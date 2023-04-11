.class public final Landroidx/media2/exoplayer/external/metadata/icy/IcyDecoder;
.super Ljava/lang/Object;
.source "IcyDecoder.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/metadata/MetadataDecoder;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final METADATA_ELEMENT:Ljava/util/regex/Pattern;

.field private static final STREAM_KEY_NAME:Ljava/lang/String; = "streamtitle"

.field private static final STREAM_KEY_URL:Ljava/lang/String; = "streamurl"

.field private static final TAG:Ljava/lang/String; = "IcyDecoder"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    const-string v0, "(.+?)=\'(.*?)\';"

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/metadata/icy/IcyDecoder;->METADATA_ELEMENT:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Landroidx/media2/exoplayer/external/metadata/MetadataInputBuffer;)Landroidx/media2/exoplayer/external/metadata/Metadata;
    .locals 4
    .param p1, "inputBuffer"    # Landroidx/media2/exoplayer/external/metadata/MetadataInputBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 50
    iget-object v0, p1, Landroidx/media2/exoplayer/external/metadata/MetadataInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 51
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 52
    .local v1, "data":[B
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 53
    .local v2, "length":I
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroidx/media2/exoplayer/external/util/Util;->fromUtf8Bytes([BII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/metadata/icy/IcyDecoder;->decode(Ljava/lang/String;)Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-result-object v3

    return-object v3
.end method

.method decode(Ljava/lang/String;)Landroidx/media2/exoplayer/external/metadata/Metadata;
    .locals 11
    .param p1, "metadata"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 61
    .local v1, "url":Ljava/lang/String;
    const/4 v2, 0x0

    .line 62
    .local v2, "index":I
    sget-object v3, Landroidx/media2/exoplayer/external/metadata/icy/IcyDecoder;->METADATA_ELEMENT:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 63
    .local v3, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_4

    .line 64
    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroidx/media2/exoplayer/external/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, "key":Ljava/lang/String;
    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 66
    .local v7, "value":Ljava/lang/String;
    const/4 v8, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x12cfba11

    if-eq v9, v10, :cond_2

    const v6, 0x622482d8

    if-eq v9, v6, :cond_1

    :cond_0
    goto :goto_1

    :cond_1
    const-string v6, "streamtitle"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_2

    :cond_2
    const-string v5, "streamurl"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_2

    :goto_1
    const/4 v5, -0x1

    :goto_2
    packed-switch v5, :pswitch_data_0

    .line 74
    const-string v5, "IcyDecoder"

    const-string v6, "Unrecognized ICY tag: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 71
    :pswitch_0
    move-object v1, v7

    .line 72
    goto :goto_4

    .line 68
    :pswitch_1
    move-object v0, v7

    .line 69
    goto :goto_4

    .line 74
    :cond_3
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v6, v8

    :goto_3
    invoke-static {v5, v6}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :goto_4
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 78
    .end local v4    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    goto :goto_0

    .line 79
    :cond_4
    if-nez v0, :cond_6

    if-eqz v1, :cond_5

    goto :goto_5

    :cond_5
    const/4 v4, 0x0

    goto :goto_6

    :cond_6
    :goto_5
    new-instance v4, Landroidx/media2/exoplayer/external/metadata/Metadata;

    new-array v6, v6, [Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    new-instance v7, Landroidx/media2/exoplayer/external/metadata/icy/IcyInfo;

    invoke-direct {v7, v0, v1}, Landroidx/media2/exoplayer/external/metadata/icy/IcyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v6, v5

    invoke-direct {v4, v6}, Landroidx/media2/exoplayer/external/metadata/Metadata;-><init>([Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;)V

    :goto_6
    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
