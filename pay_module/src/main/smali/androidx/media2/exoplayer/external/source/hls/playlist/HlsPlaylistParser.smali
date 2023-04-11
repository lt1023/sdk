.class public final Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;
.super Ljava/lang/Object;
.source "HlsPlaylistParser.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser$LineIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser<",
        "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylist;",
        ">;"
    }
.end annotation


# static fields
.field private static final ATTR_CLOSED_CAPTIONS_NONE:Ljava/lang/String; = "CLOSED-CAPTIONS=NONE"

.field private static final BOOLEAN_FALSE:Ljava/lang/String; = "NO"

.field private static final BOOLEAN_TRUE:Ljava/lang/String; = "YES"

.field private static final KEYFORMAT_IDENTITY:Ljava/lang/String; = "identity"

.field private static final KEYFORMAT_PLAYREADY:Ljava/lang/String; = "com.microsoft.playready"

.field private static final KEYFORMAT_WIDEVINE_PSSH_BINARY:Ljava/lang/String; = "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

.field private static final KEYFORMAT_WIDEVINE_PSSH_JSON:Ljava/lang/String; = "com.widevine"

.field private static final METHOD_AES_128:Ljava/lang/String; = "AES-128"

.field private static final METHOD_NONE:Ljava/lang/String; = "NONE"

.field private static final METHOD_SAMPLE_AES:Ljava/lang/String; = "SAMPLE-AES"

.field private static final METHOD_SAMPLE_AES_CENC:Ljava/lang/String; = "SAMPLE-AES-CENC"

.field private static final METHOD_SAMPLE_AES_CTR:Ljava/lang/String; = "SAMPLE-AES-CTR"

.field private static final PLAYLIST_HEADER:Ljava/lang/String; = "#EXTM3U"

.field private static final REGEX_ATTR_BYTERANGE:Ljava/util/regex/Pattern;

.field private static final REGEX_AUDIO:Ljava/util/regex/Pattern;

.field private static final REGEX_AUTOSELECT:Ljava/util/regex/Pattern;

.field private static final REGEX_AVERAGE_BANDWIDTH:Ljava/util/regex/Pattern;

.field private static final REGEX_BANDWIDTH:Ljava/util/regex/Pattern;

.field private static final REGEX_BYTERANGE:Ljava/util/regex/Pattern;

.field private static final REGEX_CHANNELS:Ljava/util/regex/Pattern;

.field private static final REGEX_CHARACTERISTICS:Ljava/util/regex/Pattern;

.field private static final REGEX_CLOSED_CAPTIONS:Ljava/util/regex/Pattern;

.field private static final REGEX_CODECS:Ljava/util/regex/Pattern;

.field private static final REGEX_DEFAULT:Ljava/util/regex/Pattern;

.field private static final REGEX_FORCED:Ljava/util/regex/Pattern;

.field private static final REGEX_FRAME_RATE:Ljava/util/regex/Pattern;

.field private static final REGEX_GROUP_ID:Ljava/util/regex/Pattern;

.field private static final REGEX_IMPORT:Ljava/util/regex/Pattern;

.field private static final REGEX_INSTREAM_ID:Ljava/util/regex/Pattern;

.field private static final REGEX_IV:Ljava/util/regex/Pattern;

.field private static final REGEX_KEYFORMAT:Ljava/util/regex/Pattern;

.field private static final REGEX_KEYFORMATVERSIONS:Ljava/util/regex/Pattern;

.field private static final REGEX_LANGUAGE:Ljava/util/regex/Pattern;

.field private static final REGEX_MEDIA_DURATION:Ljava/util/regex/Pattern;

.field private static final REGEX_MEDIA_SEQUENCE:Ljava/util/regex/Pattern;

.field private static final REGEX_MEDIA_TITLE:Ljava/util/regex/Pattern;

.field private static final REGEX_METHOD:Ljava/util/regex/Pattern;

.field private static final REGEX_NAME:Ljava/util/regex/Pattern;

.field private static final REGEX_PLAYLIST_TYPE:Ljava/util/regex/Pattern;

.field private static final REGEX_RESOLUTION:Ljava/util/regex/Pattern;

.field private static final REGEX_SUBTITLES:Ljava/util/regex/Pattern;

.field private static final REGEX_TARGET_DURATION:Ljava/util/regex/Pattern;

.field private static final REGEX_TIME_OFFSET:Ljava/util/regex/Pattern;

.field private static final REGEX_TYPE:Ljava/util/regex/Pattern;

.field private static final REGEX_URI:Ljava/util/regex/Pattern;

.field private static final REGEX_VALUE:Ljava/util/regex/Pattern;

.field private static final REGEX_VARIABLE_REFERENCE:Ljava/util/regex/Pattern;

.field private static final REGEX_VERSION:Ljava/util/regex/Pattern;

.field private static final REGEX_VIDEO:Ljava/util/regex/Pattern;

.field private static final TAG_BYTERANGE:Ljava/lang/String; = "#EXT-X-BYTERANGE"

.field private static final TAG_DEFINE:Ljava/lang/String; = "#EXT-X-DEFINE"

.field private static final TAG_DISCONTINUITY:Ljava/lang/String; = "#EXT-X-DISCONTINUITY"

.field private static final TAG_DISCONTINUITY_SEQUENCE:Ljava/lang/String; = "#EXT-X-DISCONTINUITY-SEQUENCE"

.field private static final TAG_ENDLIST:Ljava/lang/String; = "#EXT-X-ENDLIST"

.field private static final TAG_GAP:Ljava/lang/String; = "#EXT-X-GAP"

.field private static final TAG_INDEPENDENT_SEGMENTS:Ljava/lang/String; = "#EXT-X-INDEPENDENT-SEGMENTS"

.field private static final TAG_INIT_SEGMENT:Ljava/lang/String; = "#EXT-X-MAP"

.field private static final TAG_KEY:Ljava/lang/String; = "#EXT-X-KEY"

.field private static final TAG_MEDIA:Ljava/lang/String; = "#EXT-X-MEDIA"

.field private static final TAG_MEDIA_DURATION:Ljava/lang/String; = "#EXTINF"

.field private static final TAG_MEDIA_SEQUENCE:Ljava/lang/String; = "#EXT-X-MEDIA-SEQUENCE"

.field private static final TAG_PLAYLIST_TYPE:Ljava/lang/String; = "#EXT-X-PLAYLIST-TYPE"

.field private static final TAG_PREFIX:Ljava/lang/String; = "#EXT"

.field private static final TAG_PROGRAM_DATE_TIME:Ljava/lang/String; = "#EXT-X-PROGRAM-DATE-TIME"

.field private static final TAG_SESSION_KEY:Ljava/lang/String; = "#EXT-X-SESSION-KEY"

.field private static final TAG_START:Ljava/lang/String; = "#EXT-X-START"

.field private static final TAG_STREAM_INF:Ljava/lang/String; = "#EXT-X-STREAM-INF"

.field private static final TAG_TARGET_DURATION:Ljava/lang/String; = "#EXT-X-TARGETDURATION"

.field private static final TAG_VERSION:Ljava/lang/String; = "#EXT-X-VERSION"

.field private static final TYPE_AUDIO:Ljava/lang/String; = "AUDIO"

.field private static final TYPE_CLOSED_CAPTIONS:Ljava/lang/String; = "CLOSED-CAPTIONS"

.field private static final TYPE_SUBTITLES:Ljava/lang/String; = "SUBTITLES"

.field private static final TYPE_VIDEO:Ljava/lang/String; = "VIDEO"


# instance fields
.field private final masterPlaylist:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 114
    const-string v0, "AVERAGE-BANDWIDTH=(\\d+)\\b"

    .line 115
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_AVERAGE_BANDWIDTH:Ljava/util/regex/Pattern;

    .line 116
    const-string v0, "VIDEO=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_VIDEO:Ljava/util/regex/Pattern;

    .line 117
    const-string v0, "AUDIO=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_AUDIO:Ljava/util/regex/Pattern;

    .line 118
    const-string v0, "SUBTITLES=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_SUBTITLES:Ljava/util/regex/Pattern;

    .line 119
    const-string v0, "CLOSED-CAPTIONS=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_CLOSED_CAPTIONS:Ljava/util/regex/Pattern;

    .line 120
    const-string v0, "[^-]BANDWIDTH=(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_BANDWIDTH:Ljava/util/regex/Pattern;

    .line 121
    const-string v0, "CHANNELS=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_CHANNELS:Ljava/util/regex/Pattern;

    .line 122
    const-string v0, "CODECS=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_CODECS:Ljava/util/regex/Pattern;

    .line 123
    const-string v0, "RESOLUTION=(\\d+x\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_RESOLUTION:Ljava/util/regex/Pattern;

    .line 124
    const-string v0, "FRAME-RATE=([\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_FRAME_RATE:Ljava/util/regex/Pattern;

    .line 125
    const-string v0, "#EXT-X-TARGETDURATION:(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_TARGET_DURATION:Ljava/util/regex/Pattern;

    .line 127
    const-string v0, "#EXT-X-VERSION:(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_VERSION:Ljava/util/regex/Pattern;

    .line 128
    const-string v0, "#EXT-X-PLAYLIST-TYPE:(.+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_PLAYLIST_TYPE:Ljava/util/regex/Pattern;

    .line 130
    const-string v0, "#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_SEQUENCE:Ljava/util/regex/Pattern;

    .line 132
    const-string v0, "#EXTINF:([\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_DURATION:Ljava/util/regex/Pattern;

    .line 134
    const-string v0, "#EXTINF:[\\d\\.]+\\b,(.+)"

    .line 135
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_TITLE:Ljava/util/regex/Pattern;

    .line 136
    const-string v0, "TIME-OFFSET=(-?[\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_TIME_OFFSET:Ljava/util/regex/Pattern;

    .line 137
    const-string v0, "#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_BYTERANGE:Ljava/util/regex/Pattern;

    .line 139
    const-string v0, "BYTERANGE=\"(\\d+(?:@\\d+)?)\\b\""

    .line 140
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_ATTR_BYTERANGE:Ljava/util/regex/Pattern;

    .line 141
    const-string v0, "METHOD=(NONE|AES-128|SAMPLE-AES|SAMPLE-AES-CENC|SAMPLE-AES-CTR)\\s*(?:,|$)"

    .line 142
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_METHOD:Ljava/util/regex/Pattern;

    .line 155
    const-string v0, "KEYFORMAT=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_KEYFORMAT:Ljava/util/regex/Pattern;

    .line 156
    const-string v0, "KEYFORMATVERSIONS=\"(.+?)\""

    .line 157
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_KEYFORMATVERSIONS:Ljava/util/regex/Pattern;

    .line 158
    const-string v0, "URI=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    .line 159
    const-string v0, "IV=([^,.*]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_IV:Ljava/util/regex/Pattern;

    .line 160
    const-string v0, "TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_TYPE:Ljava/util/regex/Pattern;

    .line 162
    const-string v0, "LANGUAGE=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_LANGUAGE:Ljava/util/regex/Pattern;

    .line 163
    const-string v0, "NAME=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_NAME:Ljava/util/regex/Pattern;

    .line 164
    const-string v0, "GROUP-ID=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_GROUP_ID:Ljava/util/regex/Pattern;

    .line 165
    const-string v0, "CHARACTERISTICS=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_CHARACTERISTICS:Ljava/util/regex/Pattern;

    .line 166
    const-string v0, "INSTREAM-ID=\"((?:CC|SERVICE)\\d+)\""

    .line 167
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_INSTREAM_ID:Ljava/util/regex/Pattern;

    .line 168
    const-string v0, "AUTOSELECT"

    invoke-static {v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_AUTOSELECT:Ljava/util/regex/Pattern;

    .line 169
    const-string v0, "DEFAULT"

    invoke-static {v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_DEFAULT:Ljava/util/regex/Pattern;

    .line 170
    const-string v0, "FORCED"

    invoke-static {v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_FORCED:Ljava/util/regex/Pattern;

    .line 171
    const-string v0, "VALUE=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_VALUE:Ljava/util/regex/Pattern;

    .line 172
    const-string v0, "IMPORT=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_IMPORT:Ljava/util/regex/Pattern;

    .line 173
    const-string v0, "\\{\\$([a-zA-Z0-9\\-_]+)\\}"

    .line 174
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_VARIABLE_REFERENCE:Ljava/util/regex/Pattern;

    .line 173
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 183
    sget-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->EMPTY:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;-><init>(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;)V

    .line 184
    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;)V
    .locals 0
    .param p1, "masterPlaylist"    # Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->masterPlaylist:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;

    .line 194
    return-void
.end method

.method private static checkPlaylistHeader(Ljava/io/BufferedReader;)Z
    .locals 5
    .param p0, "reader"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    .line 236
    .local v0, "last":I
    const/4 v1, 0x0

    const/16 v2, 0xef

    if-ne v0, v2, :cond_2

    .line 237
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v2

    const/16 v3, 0xbb

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v2

    const/16 v3, 0xbf

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 241
    :cond_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    goto :goto_1

    .line 237
    :cond_1
    :goto_0
    nop

    .line 238
    return v1

    .line 236
    :cond_2
    nop

    .line 243
    :goto_1
    const/4 v2, 0x1

    invoke-static {p0, v2, v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->skipIgnorableWhitespace(Ljava/io/BufferedReader;ZI)I

    move-result v0

    .line 244
    const-string v2, "#EXTM3U"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 245
    .local v2, "playlistHeaderLength":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_4

    .line 246
    const-string v4, "#EXTM3U"

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v0, v4, :cond_3

    .line 247
    return v1

    .line 249
    :cond_3
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    .line 245
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 251
    .end local v3    # "i":I
    :cond_4
    invoke-static {p0, v1, v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->skipIgnorableWhitespace(Ljava/io/BufferedReader;ZI)I

    move-result v0

    .line 252
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->isLinebreak(I)Z

    move-result v1

    return v1
.end method

.method private static compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 2
    .param p0, "attribute"    # Ljava/lang/String;

    .line 929
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "NO"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "YES"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method

.method private static getVariantWithAudioGroup(Ljava/util/ArrayList;Ljava/lang/String;)Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;
    .locals 3
    .param p1, "groupId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;"
        }
    .end annotation

    .line 543
    .local p0, "variants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 544
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;

    .line 545
    .local v1, "variant":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;
    iget-object v2, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;->audioGroupId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 546
    return-object v1

    .line 545
    :cond_0
    nop

    .line 543
    .end local v1    # "variant":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 549
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getVariantWithVideoGroup(Ljava/util/ArrayList;Ljava/lang/String;)Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;
    .locals 3
    .param p1, "groupId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;"
        }
    .end annotation

    .line 553
    .local p0, "variants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 554
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;

    .line 555
    .local v1, "variant":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;
    iget-object v2, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;->videoGroupId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 556
    return-object v1

    .line 555
    :cond_0
    nop

    .line 553
    .end local v1    # "variant":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 559
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static parseChannelsAttribute(Ljava/lang/String;Ljava/util/Map;)I
    .locals 3
    .param p0, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 826
    .local p1, "variableDefinitions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_CHANNELS:Ljava/util/regex/Pattern;

    invoke-static {p0, v0, p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 827
    .local v0, "channelsString":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 828
    const-string v1, "/"

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 829
    :cond_0
    const/4 v1, -0x1

    .line 827
    :goto_0
    return v1
.end method

.method private static parseDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)D
    .locals 2
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 870
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method private static parseDrmSchemeData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;
    .locals 7
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "keyFormat"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 836
    .local p2, "variableDefinitions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_KEYFORMATVERSIONS:Ljava/util/regex/Pattern;

    const-string v1, "1"

    .line 837
    invoke-static {p0, v0, v1, p2}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 838
    .local v0, "keyFormatVersions":Ljava/lang/String;
    const-string/jumbo v1, "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x2c

    if-eqz v1, :cond_0

    .line 839
    sget-object v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    invoke-static {p0, v1, p2}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 840
    .local v1, "uriString":Ljava/lang/String;
    new-instance v4, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    sget-object v5, Landroidx/media2/exoplayer/external/C;->WIDEVINE_UUID:Ljava/util/UUID;

    const-string/jumbo v6, "video/mp4"

    .line 843
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {v4, v5, v6, v2}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    .line 840
    return-object v4

    .line 844
    .end local v1    # "uriString":Ljava/lang/String;
    :cond_0
    const-string v1, "com.widevine"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 845
    new-instance v1, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    sget-object v2, Landroidx/media2/exoplayer/external/C;->WIDEVINE_UUID:Ljava/util/UUID;

    const-string v3, "hls"

    invoke-static {p0}, Landroidx/media2/exoplayer/external/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    return-object v1

    .line 846
    :cond_1
    const-string v1, "com.microsoft.playready"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 847
    sget-object v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    invoke-static {p0, v1, p2}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 848
    .restart local v1    # "uriString":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 849
    .local v2, "data":[B
    sget-object v3, Landroidx/media2/exoplayer/external/C;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-static {v3, v2}, Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil;->buildPsshAtom(Ljava/util/UUID;[B)[B

    move-result-object v3

    .line 850
    .local v3, "psshData":[B
    new-instance v4, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    sget-object v5, Landroidx/media2/exoplayer/external/C;->PLAYREADY_UUID:Ljava/util/UUID;

    const-string/jumbo v6, "video/mp4"

    invoke-direct {v4, v5, v6, v3}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    return-object v4

    .line 846
    .end local v1    # "uriString":Ljava/lang/String;
    .end local v2    # "data":[B
    .end local v3    # "psshData":[B
    :cond_2
    nop

    .line 852
    const/4 v1, 0x0

    return-object v1
.end method

.method private static parseEncryptionScheme(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "method"    # Ljava/lang/String;

    .line 856
    const-string v0, "SAMPLE-AES-CENC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SAMPLE-AES-CTR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 858
    :cond_0
    const-string v0, "cbcs"

    goto :goto_1

    .line 856
    :cond_1
    :goto_0
    nop

    .line 857
    const-string v0, "cenc"

    .line 856
    :goto_1
    return-object v0
.end method

.method private static parseIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)I
    .locals 1
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 862
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static parseLongAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)J
    .locals 2
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 866
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static parseMasterPlaylist(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser$LineIterator;Ljava/lang/String;)Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;
    .locals 56
    .param p0, "iterator"    # Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser$LineIterator;
    .param p1, "baseUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    move-object/from16 v13, p1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v14, v0

    .line 266
    .local v14, "urlToVariantInfos":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/HlsTrackMetadataEntry$VariantInfo;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v15, v0

    .line 267
    .local v15, "variableDefinitions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 268
    .local v12, "variants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 269
    .local v11, "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 270
    .local v10, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 271
    .local v9, "subtitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v7, "closedCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 273
    .local v8, "mediaTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 274
    .local v6, "sessionKeyDrmInitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/drm/DrmInitData;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 275
    .local v5, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 276
    .local v0, "muxedAudioFormat":Landroidx/media2/exoplayer/external/Format;
    const/4 v1, 0x0

    .line 277
    .local v1, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/Format;>;"
    const/4 v2, 0x0

    .line 278
    .local v2, "noClosedCaptions":Z
    const/4 v3, 0x0

    move/from16 v17, v2

    move/from16 v16, v3

    .line 281
    .end local v2    # "noClosedCaptions":Z
    .local v16, "hasIndependentSegmentsTag":Z
    .local v17, "noClosedCaptions":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser$LineIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 282
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser$LineIterator;->next()Ljava/lang/String;

    move-result-object v2

    .line 284
    .local v2, "line":Ljava/lang/String;
    const-string v3, "#EXT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 286
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 284
    :cond_0
    nop

    .line 289
    :goto_1
    const-string v3, "#EXT-X-DEFINE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 290
    sget-object v3, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_NAME:Ljava/util/regex/Pattern;

    .line 291
    invoke-static {v2, v3, v15}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_VALUE:Ljava/util/regex/Pattern;

    .line 292
    invoke-static {v2, v4, v15}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 290
    invoke-virtual {v15, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v21, v1

    move-object/from16 v39, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move-object/from16 v33, v10

    move-object/from16 v40, v11

    goto/16 :goto_9

    .line 293
    :cond_1
    const-string v3, "#EXT-X-INDEPENDENT-SEGMENTS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 294
    const/16 v16, 0x1

    goto :goto_0

    .line 295
    :cond_2
    const-string v3, "#EXT-X-MEDIA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 298
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v20, v0

    move-object/from16 v21, v1

    move-object/from16 v39, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move-object/from16 v33, v10

    move-object/from16 v40, v11

    goto/16 :goto_9

    .line 299
    :cond_3
    const-string v3, "#EXT-X-SESSION-KEY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 300
    sget-object v3, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_KEYFORMAT:Ljava/util/regex/Pattern;

    const-string v4, "identity"

    .line 301
    invoke-static {v2, v3, v4, v15}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 302
    .local v3, "keyFormat":Ljava/lang/String;
    invoke-static {v2, v3, v15}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseDrmSchemeData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    move-result-object v4

    .line 303
    .local v4, "schemeData":Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;
    if-eqz v4, :cond_4

    .line 304
    move-object/from16 v20, v0

    .end local v0    # "muxedAudioFormat":Landroidx/media2/exoplayer/external/Format;
    .local v20, "muxedAudioFormat":Landroidx/media2/exoplayer/external/Format;
    sget-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_METHOD:Ljava/util/regex/Pattern;

    invoke-static {v2, v0, v15}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "method":Ljava/lang/String;
    move-object/from16 v21, v1

    .end local v1    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/Format;>;"
    .local v21, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/Format;>;"
    invoke-static {v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseEncryptionScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 306
    .local v1, "scheme":Ljava/lang/String;
    move-object/from16 v22, v0

    .end local v0    # "method":Ljava/lang/String;
    .local v22, "method":Ljava/lang/String;
    new-instance v0, Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-object/from16 v23, v3

    const/4 v3, 0x1

    .end local v3    # "keyFormat":Ljava/lang/String;
    .local v23, "keyFormat":Ljava/lang/String;
    new-array v3, v3, [Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    const/16 v18, 0x0

    aput-object v4, v3, v18

    invoke-direct {v0, v1, v3}, Landroidx/media2/exoplayer/external/drm/DrmInitData;-><init>(Ljava/lang/String;[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 303
    .end local v20    # "muxedAudioFormat":Landroidx/media2/exoplayer/external/Format;
    .end local v21    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/Format;>;"
    .end local v22    # "method":Ljava/lang/String;
    .end local v23    # "keyFormat":Ljava/lang/String;
    .local v0, "muxedAudioFormat":Landroidx/media2/exoplayer/external/Format;
    .local v1, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/Format;>;"
    .restart local v3    # "keyFormat":Ljava/lang/String;
    :cond_4
    move-object/from16 v20, v0

    move-object/from16 v21, v1

    move-object/from16 v23, v3

    .line 308
    .end local v0    # "muxedAudioFormat":Landroidx/media2/exoplayer/external/Format;
    .end local v1    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/Format;>;"
    .end local v3    # "keyFormat":Ljava/lang/String;
    .end local v4    # "schemeData":Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;
    .restart local v20    # "muxedAudioFormat":Landroidx/media2/exoplayer/external/Format;
    .restart local v21    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/Format;>;"
    :goto_2
    move-object/from16 v39, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move-object/from16 v33, v10

    move-object/from16 v40, v11

    goto/16 :goto_9

    .end local v20    # "muxedAudioFormat":Landroidx/media2/exoplayer/external/Format;
    .end local v21    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/Format;>;"
    .restart local v0    # "muxedAudioFormat":Landroidx/media2/exoplayer/external/Format;
    .restart local v1    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/Format;>;"
    :cond_5
    move-object/from16 v20, v0

    move-object/from16 v21, v1

    .end local v0    # "muxedAudioFormat":Landroidx/media2/exoplayer/external/Format;
    .end local v1    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/Format;>;"
    .restart local v20    # "muxedAudioFormat":Landroidx/media2/exoplayer/external/Format;
    .restart local v21    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/Format;>;"
    const-string v0, "#EXT-X-STREAM-INF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 309
    const-string v0, "CLOSED-CAPTIONS=NONE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    or-int v17, v17, v0

    .line 310
    sget-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_BANDWIDTH:Ljava/util/regex/Pattern;

    invoke-static {v2, v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v0

    .line 311
    .local v0, "bitrate":I
    sget-object v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_AVERAGE_BANDWIDTH:Ljava/util/regex/Pattern;

    .line 312
    invoke-static {v2, v1, v15}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, "averageBandwidthString":Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 315
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_3

    .line 313
    :cond_6
    nop

    .line 317
    :goto_3
    sget-object v3, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_CODECS:Ljava/util/regex/Pattern;

    invoke-static {v2, v3, v15}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 318
    .local v3, "codecs":Ljava/lang/String;
    sget-object v4, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_RESOLUTION:Ljava/util/regex/Pattern;

    .line 319
    invoke-static {v2, v4, v15}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 322
    .local v4, "resolutionString":Ljava/lang/String;
    if-eqz v4, :cond_9

    .line 323
    move-object/from16 v34, v1

    .end local v1    # "averageBandwidthString":Ljava/lang/String;
    .local v34, "averageBandwidthString":Ljava/lang/String;
    const-string/jumbo v1, "x"

    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, "widthAndHeight":[Ljava/lang/String;
    const/16 v18, 0x0

    aget-object v18, v1, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 325
    .local v18, "width":I
    const/16 v19, 0x1

    aget-object v19, v1, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 326
    .local v19, "height":I
    if-lez v18, :cond_8

    if-gtz v19, :cond_7

    goto :goto_4

    :cond_7
    goto :goto_5

    .line 328
    :cond_8
    :goto_4
    const/16 v18, -0x1

    .line 329
    const/16 v19, -0x1

    .line 331
    .end local v1    # "widthAndHeight":[Ljava/lang/String;
    :goto_5
    move/from16 v1, v18

    move/from16 v18, v19

    goto :goto_6

    .line 332
    .end local v18    # "width":I
    .end local v19    # "height":I
    .end local v34    # "averageBandwidthString":Ljava/lang/String;
    .local v1, "averageBandwidthString":Ljava/lang/String;
    :cond_9
    move-object/from16 v34, v1

    .end local v1    # "averageBandwidthString":Ljava/lang/String;
    .restart local v34    # "averageBandwidthString":Ljava/lang/String;
    const/4 v1, -0x1

    .line 333
    .local v1, "width":I
    const/16 v18, -0x1

    .line 335
    .local v18, "height":I
    :goto_6
    const/high16 v19, -0x40800000    # -1.0f

    .line 336
    .local v19, "frameRate":F
    move-object/from16 v35, v4

    .end local v4    # "resolutionString":Ljava/lang/String;
    .local v35, "resolutionString":Ljava/lang/String;
    sget-object v4, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_FRAME_RATE:Ljava/util/regex/Pattern;

    .line 337
    invoke-static {v2, v4, v15}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 338
    .local v4, "frameRateString":Ljava/lang/String;
    if-eqz v4, :cond_a

    .line 339
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    goto :goto_7

    .line 338
    :cond_a
    nop

    .line 341
    :goto_7
    move-object/from16 v36, v4

    .end local v4    # "frameRateString":Ljava/lang/String;
    .local v36, "frameRateString":Ljava/lang/String;
    sget-object v4, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_VIDEO:Ljava/util/regex/Pattern;

    invoke-static {v2, v4, v15}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 342
    .local v4, "videoGroupId":Ljava/lang/String;
    move-object/from16 v37, v6

    .end local v6    # "sessionKeyDrmInitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/drm/DrmInitData;>;"
    .local v37, "sessionKeyDrmInitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/drm/DrmInitData;>;"
    sget-object v6, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_AUDIO:Ljava/util/regex/Pattern;

    invoke-static {v2, v6, v15}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 343
    .local v6, "audioGroupId":Ljava/lang/String;
    move-object/from16 v38, v7

    .end local v7    # "closedCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .local v38, "closedCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    sget-object v7, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_SUBTITLES:Ljava/util/regex/Pattern;

    .line 344
    invoke-static {v2, v7, v15}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    .line 345
    .local v7, "subtitlesGroupId":Ljava/lang/String;
    move-object/from16 v39, v5

    .end local v5    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v39, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v5, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_CLOSED_CAPTIONS:Ljava/util/regex/Pattern;

    .line 346
    invoke-static {v2, v5, v15}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    .line 347
    .local v5, "closedCaptionsGroupId":Ljava/lang/String;
    nop

    .line 349
    move-object/from16 v22, v2

    .end local v2    # "line":Ljava/lang/String;
    .local v22, "line":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser$LineIterator;->next()Ljava/lang/String;

    move-result-object v2

    .line 348
    invoke-static {v2, v15}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->replaceVariableReferences(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 350
    .end local v22    # "line":Ljava/lang/String;
    .restart local v2    # "line":Ljava/lang/String;
    move-object/from16 v40, v11

    .end local v11    # "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .local v40, "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    invoke-static {v13, v2}, Landroidx/media2/exoplayer/external/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 351
    .local v11, "uri":Landroid/net/Uri;
    nop

    .line 353
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    const-string v24, "application/x-mpegURL"

    const/16 v25, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    .line 352
    move-object/from16 v26, v3

    move/from16 v27, v0

    move/from16 v28, v1

    move/from16 v29, v18

    move/from16 v30, v19

    invoke-static/range {v22 .. v33}, Landroidx/media2/exoplayer/external/Format;->createVideoContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFLjava/util/List;II)Landroidx/media2/exoplayer/external/Format;

    move-result-object v29

    .line 365
    .local v29, "format":Landroidx/media2/exoplayer/external/Format;
    new-instance v30, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;

    move-object/from16 v22, v30

    move-object/from16 v23, v11

    move-object/from16 v24, v29

    move-object/from16 v25, v4

    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v28, v5

    invoke-direct/range {v22 .. v28}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;-><init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v31, v30

    .line 368
    .local v31, "variant":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;
    move/from16 v30, v1

    move-object/from16 v1, v31

    .end local v31    # "variant":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;
    .local v1, "variant":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;
    .local v30, "width":I
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    invoke-virtual {v14, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/ArrayList;

    .line 370
    .local v22, "variantInfosForUrl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/HlsTrackMetadataEntry$VariantInfo;>;"
    if-nez v22, :cond_b

    .line 371
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v22, v23

    .line 372
    move-object/from16 v31, v1

    move-object/from16 v1, v22

    .end local v22    # "variantInfosForUrl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/HlsTrackMetadataEntry$VariantInfo;>;"
    .local v1, "variantInfosForUrl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/HlsTrackMetadataEntry$VariantInfo;>;"
    .restart local v31    # "variant":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;
    invoke-virtual {v14, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 370
    .end local v31    # "variant":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;
    .local v1, "variant":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;
    .restart local v22    # "variantInfosForUrl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/HlsTrackMetadataEntry$VariantInfo;>;"
    :cond_b
    move-object/from16 v31, v1

    .end local v1    # "variant":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;
    .restart local v31    # "variant":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;
    move-object/from16 v1, v22

    .line 374
    .end local v22    # "variantInfosForUrl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/HlsTrackMetadataEntry$VariantInfo;>;"
    .local v1, "variantInfosForUrl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/HlsTrackMetadataEntry$VariantInfo;>;"
    :goto_8
    move-object/from16 v32, v2

    .end local v2    # "line":Ljava/lang/String;
    .local v32, "line":Ljava/lang/String;
    new-instance v2, Landroidx/media2/exoplayer/external/source/hls/HlsTrackMetadataEntry$VariantInfo;

    move-object/from16 v33, v10

    move-object/from16 v41, v11

    .end local v10    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .end local v11    # "uri":Landroid/net/Uri;
    .local v33, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .local v41, "uri":Landroid/net/Uri;
    int-to-long v10, v0

    move-object/from16 v22, v2

    move-wide/from16 v23, v10

    move-object/from16 v25, v4

    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v28, v5

    invoke-direct/range {v22 .. v28}, Landroidx/media2/exoplayer/external/source/hls/HlsTrackMetadataEntry$VariantInfo;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    .end local v0    # "bitrate":I
    .end local v1    # "variantInfosForUrl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/HlsTrackMetadataEntry$VariantInfo;>;"
    .end local v3    # "codecs":Ljava/lang/String;
    .end local v4    # "videoGroupId":Ljava/lang/String;
    .end local v5    # "closedCaptionsGroupId":Ljava/lang/String;
    .end local v6    # "audioGroupId":Ljava/lang/String;
    .end local v7    # "subtitlesGroupId":Ljava/lang/String;
    .end local v18    # "height":I
    .end local v19    # "frameRate":F
    .end local v29    # "format":Landroidx/media2/exoplayer/external/Format;
    .end local v30    # "width":I
    .end local v31    # "variant":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;
    .end local v34    # "averageBandwidthString":Ljava/lang/String;
    .end local v35    # "resolutionString":Ljava/lang/String;
    .end local v36    # "frameRateString":Ljava/lang/String;
    .end local v41    # "uri":Landroid/net/Uri;
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v10, v33

    move-object/from16 v6, v37

    move-object/from16 v7, v38

    move-object/from16 v5, v39

    move-object/from16 v11, v40

    goto/16 :goto_0

    .line 308
    .end local v32    # "line":Ljava/lang/String;
    .end local v33    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .end local v37    # "sessionKeyDrmInitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/drm/DrmInitData;>;"
    .end local v38    # "closedCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .end local v39    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v40    # "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .restart local v2    # "line":Ljava/lang/String;
    .local v5, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v6, "sessionKeyDrmInitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/drm/DrmInitData;>;"
    .local v7, "closedCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .restart local v10    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .local v11, "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    :cond_c
    move-object/from16 v22, v2

    move-object/from16 v39, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move-object/from16 v33, v10

    move-object/from16 v40, v11

    .line 281
    .end local v2    # "line":Ljava/lang/String;
    .end local v20    # "muxedAudioFormat":Landroidx/media2/exoplayer/external/Format;
    .end local v21    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/Format;>;"
    .local v0, "muxedAudioFormat":Landroidx/media2/exoplayer/external/Format;
    .local v1, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/Format;>;"
    :goto_9
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v10, v33

    move-object/from16 v6, v37

    move-object/from16 v7, v38

    move-object/from16 v5, v39

    move-object/from16 v11, v40

    .end local v0    # "muxedAudioFormat":Landroidx/media2/exoplayer/external/Format;
    .end local v1    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/Format;>;"
    .end local v5    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "sessionKeyDrmInitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/drm/DrmInitData;>;"
    .end local v7    # "closedCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .end local v10    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .end local v11    # "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .restart local v20    # "muxedAudioFormat":Landroidx/media2/exoplayer/external/Format;
    .restart local v21    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/Format;>;"
    .restart local v33    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .restart local v37    # "sessionKeyDrmInitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/drm/DrmInitData;>;"
    .restart local v38    # "closedCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .restart local v39    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v40    # "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    goto/16 :goto_0

    .line 381
    .end local v20    # "muxedAudioFormat":Landroidx/media2/exoplayer/external/Format;
    .end local v21    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/Format;>;"
    .end local v33    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .end local v37    # "sessionKeyDrmInitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/drm/DrmInitData;>;"
    .end local v38    # "closedCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .end local v39    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v40    # "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .restart local v0    # "muxedAudioFormat":Landroidx/media2/exoplayer/external/Format;
    .restart local v1    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/Format;>;"
    .restart local v5    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "sessionKeyDrmInitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/drm/DrmInitData;>;"
    .restart local v7    # "closedCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .restart local v10    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .restart local v11    # "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    :cond_d
    move-object/from16 v20, v0

    move-object/from16 v21, v1

    move-object/from16 v39, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move-object/from16 v33, v10

    move-object/from16 v40, v11

    .end local v0    # "muxedAudioFormat":Landroidx/media2/exoplayer/external/Format;
    .end local v1    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/Format;>;"
    .end local v5    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "sessionKeyDrmInitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/drm/DrmInitData;>;"
    .end local v7    # "closedCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .end local v10    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .end local v11    # "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .restart local v20    # "muxedAudioFormat":Landroidx/media2/exoplayer/external/Format;
    .restart local v21    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/Format;>;"
    .restart local v33    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .restart local v37    # "sessionKeyDrmInitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/drm/DrmInitData;>;"
    .restart local v38    # "closedCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .restart local v39    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v40    # "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 382
    .local v7, "deduplicatedVariants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v11, v0

    .line 383
    .local v11, "urlsInDeduplicatedVariants":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_10

    .line 384
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;

    .line 385
    .local v1, "variant":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;
    iget-object v3, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;->url:Landroid/net/Uri;

    invoke-virtual {v11, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 386
    iget-object v3, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;->format:Landroidx/media2/exoplayer/external/Format;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/Format;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    if-nez v3, :cond_e

    const/4 v3, 0x1

    goto :goto_b

    :cond_e
    const/4 v3, 0x0

    :goto_b
    invoke-static {v3}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 387
    new-instance v3, Landroidx/media2/exoplayer/external/source/hls/HlsTrackMetadataEntry;

    iget-object v4, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;->url:Landroid/net/Uri;

    .line 389
    invoke-virtual {v14, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {v3, v2, v2, v4}, Landroidx/media2/exoplayer/external/source/hls/HlsTrackMetadataEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    move-object v2, v3

    .line 390
    .local v2, "hlsMetadataEntry":Landroidx/media2/exoplayer/external/source/hls/HlsTrackMetadataEntry;
    iget-object v3, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;->format:Landroidx/media2/exoplayer/external/Format;

    new-instance v4, Landroidx/media2/exoplayer/external/metadata/Metadata;

    const/4 v5, 0x1

    new-array v6, v5, [Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    const/4 v5, 0x0

    aput-object v2, v6, v5

    invoke-direct {v4, v6}, Landroidx/media2/exoplayer/external/metadata/Metadata;-><init>([Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;)V

    .line 392
    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/Format;->copyWithMetadata(Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v3

    .line 391
    invoke-virtual {v1, v3}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;->copyWithFormat(Landroidx/media2/exoplayer/external/Format;)Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;

    move-result-object v3

    .line 390
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 385
    .end local v2    # "hlsMetadataEntry":Landroidx/media2/exoplayer/external/source/hls/HlsTrackMetadataEntry;
    :cond_f
    nop

    .line 383
    .end local v1    # "variant":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;
    :goto_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 396
    .end local v0    # "i":I
    :cond_10
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_d
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 397
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 398
    .local v1, "line":Ljava/lang/String;
    sget-object v3, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_GROUP_ID:Ljava/util/regex/Pattern;

    invoke-static {v1, v3, v15}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 399
    .local v3, "groupId":Ljava/lang/String;
    sget-object v4, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_NAME:Ljava/util/regex/Pattern;

    invoke-static {v1, v4, v15}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 400
    .local v4, "name":Ljava/lang/String;
    sget-object v5, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    invoke-static {v1, v5, v15}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    .line 401
    .local v5, "referenceUri":Ljava/lang/String;
    if-nez v5, :cond_11

    move-object v6, v2

    goto :goto_e

    :cond_11
    invoke-static {v13, v5}, Landroidx/media2/exoplayer/external/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 402
    .local v6, "uri":Landroid/net/Uri;
    :goto_e
    sget-object v10, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_LANGUAGE:Ljava/util/regex/Pattern;

    invoke-static {v1, v10, v15}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    .line 403
    .local v10, "language":Ljava/lang/String;
    invoke-static {v1}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseSelectionFlags(Ljava/lang/String;)I

    move-result v32

    .line 404
    .local v32, "selectionFlags":I
    invoke-static {v1, v15}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseRoleFlags(Ljava/lang/String;Ljava/util/Map;)I

    move-result v34

    .line 405
    .local v34, "roleFlags":I
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v19, 0x1

    add-int/lit8 v22, v22, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    add-int v2, v22, v23

    move-object/from16 v36, v5

    .end local v5    # "referenceUri":Ljava/lang/String;
    .local v36, "referenceUri":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 407
    .local v2, "formatId":Ljava/lang/String;
    new-instance v5, Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-object/from16 v53, v8

    move-object/from16 v54, v11

    const/4 v8, 0x1

    .end local v8    # "mediaTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "urlsInDeduplicatedVariants":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    .local v53, "mediaTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v54, "urlsInDeduplicatedVariants":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    new-array v11, v8, [Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    new-instance v8, Landroidx/media2/exoplayer/external/source/hls/HlsTrackMetadataEntry;

    .line 408
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v13

    invoke-direct {v8, v3, v4, v13}, Landroidx/media2/exoplayer/external/source/hls/HlsTrackMetadataEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    const/4 v13, 0x0

    aput-object v8, v11, v13

    invoke-direct {v5, v11}, Landroidx/media2/exoplayer/external/metadata/Metadata;-><init>([Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;)V

    .line 409
    .local v5, "metadata":Landroidx/media2/exoplayer/external/metadata/Metadata;
    sget-object v8, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_TYPE:Ljava/util/regex/Pattern;

    invoke-static {v1, v8, v15}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v11

    const v13, -0x392db8c5

    move-object/from16 v55, v14

    .end local v14    # "urlToVariantInfos":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/HlsTrackMetadataEntry$VariantInfo;>;>;"
    .local v55, "urlToVariantInfos":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/HlsTrackMetadataEntry$VariantInfo;>;>;"
    const/4 v14, 0x2

    if-eq v11, v13, :cond_16

    const v13, -0x13dc6572

    if-eq v11, v13, :cond_15

    const v13, 0x3bba3b6

    if-eq v11, v13, :cond_14

    const v13, 0x4de1c5b

    if-eq v11, v13, :cond_13

    :cond_12
    goto :goto_f

    :cond_13
    const-string v11, "VIDEO"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    const/16 v18, 0x0

    goto :goto_10

    :cond_14
    const-string v11, "AUDIO"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    const/16 v18, 0x1

    goto :goto_10

    :cond_15
    const-string v11, "CLOSED-CAPTIONS"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    const/4 v8, 0x3

    const/16 v18, 0x3

    goto :goto_10

    :cond_16
    const-string v11, "SUBTITLES"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    const/16 v18, 0x2

    goto :goto_10

    :goto_f
    const/16 v18, -0x1

    :goto_10
    packed-switch v18, :pswitch_data_0

    move-object/from16 v18, v1

    move-object/from16 v26, v10

    move-object/from16 v8, v33

    move-object/from16 v14, v40

    .end local v1    # "line":Ljava/lang/String;
    .end local v10    # "language":Ljava/lang/String;
    .end local v33    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .end local v40    # "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .local v8, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .local v14, "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .local v18, "line":Ljava/lang/String;
    .local v26, "language":Ljava/lang/String;
    goto/16 :goto_17

    .line 490
    .end local v8    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .end local v14    # "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .end local v18    # "line":Ljava/lang/String;
    .end local v26    # "language":Ljava/lang/String;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v10    # "language":Ljava/lang/String;
    .restart local v33    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .restart local v40    # "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    :pswitch_0
    sget-object v8, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_INSTREAM_ID:Ljava/util/regex/Pattern;

    invoke-static {v1, v8, v15}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    .line 493
    .local v8, "instreamId":Ljava/lang/String;
    const-string v11, "CC"

    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_17

    .line 494
    const-string v11, "application/cea-608"

    .line 495
    .local v11, "mimeType":Ljava/lang/String;
    invoke-virtual {v8, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    goto :goto_11

    .line 497
    .end local v11    # "mimeType":Ljava/lang/String;
    :cond_17
    const-string v11, "application/cea-708"

    .line 498
    .restart local v11    # "mimeType":Ljava/lang/String;
    const/4 v13, 0x7

    invoke-virtual {v8, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 500
    .local v13, "accessibilityChannel":I
    :goto_11
    if-nez v21, :cond_18

    .line 501
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v21, v14

    goto :goto_12

    .line 500
    :cond_18
    move-object/from16 v14, v21

    .line 503
    .end local v21    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/Format;>;"
    .local v14, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/Format;>;"
    :goto_12
    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, -0x1

    .line 504
    move-object/from16 v22, v2

    move-object/from16 v23, v4

    move-object/from16 v25, v11

    move/from16 v28, v32

    move/from16 v29, v34

    move-object/from16 v30, v10

    move/from16 v31, v13

    move-object/from16 v18, v8

    .end local v8    # "instreamId":Ljava/lang/String;
    .local v18, "instreamId":Ljava/lang/String;
    invoke-static/range {v22 .. v31}, Landroidx/media2/exoplayer/external/Format;->createTextContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v8

    .line 503
    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    move-object/from16 v18, v1

    move-object/from16 v21, v14

    move-object/from16 v8, v33

    move-object/from16 v14, v40

    goto/16 :goto_17

    .line 475
    .end local v11    # "mimeType":Ljava/lang/String;
    .end local v13    # "accessibilityChannel":I
    .end local v14    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/Format;>;"
    .end local v18    # "instreamId":Ljava/lang/String;
    .restart local v21    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/Format;>;"
    :pswitch_1
    const-string v24, "application/x-mpegURL"

    const-string v25, "text/vtt"

    const/16 v26, 0x0

    const/16 v27, -0x1

    .line 476
    move-object/from16 v22, v2

    move-object/from16 v23, v4

    move/from16 v28, v32

    move/from16 v29, v34

    move-object/from16 v30, v10

    invoke-static/range {v22 .. v30}, Landroidx/media2/exoplayer/external/Format;->createTextContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v8

    .line 486
    invoke-virtual {v8, v5}, Landroidx/media2/exoplayer/external/Format;->copyWithMetadata(Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v8

    .line 487
    .local v8, "format":Landroidx/media2/exoplayer/external/Format;
    new-instance v11, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;

    invoke-direct {v11, v6, v8, v3, v4}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;-><init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    move-object/from16 v18, v1

    move-object/from16 v8, v33

    move-object/from16 v14, v40

    goto/16 :goto_17

    .line 446
    .end local v8    # "format":Landroidx/media2/exoplayer/external/Format;
    :pswitch_2
    invoke-static {v12, v3}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->getVariantWithAudioGroup(Ljava/util/ArrayList;Ljava/lang/String;)Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;

    move-result-object v8

    .line 448
    .local v8, "variant":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;
    if-eqz v8, :cond_19

    .line 449
    iget-object v11, v8, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;->format:Landroidx/media2/exoplayer/external/Format;

    iget-object v11, v11, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    const/4 v13, 0x1

    invoke-static {v11, v13}, Landroidx/media2/exoplayer/external/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    goto :goto_13

    .line 450
    :cond_19
    const/4 v13, 0x1

    const/4 v11, 0x0

    :goto_13
    nop

    .line 451
    .local v11, "codecs":Ljava/lang/String;
    if-eqz v11, :cond_1a

    invoke-static {v11}, Landroidx/media2/exoplayer/external/util/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v44, v14

    goto :goto_14

    :cond_1a
    const/16 v44, 0x0

    .line 452
    .local v44, "sampleMimeType":Ljava/lang/String;
    :goto_14
    invoke-static {v1, v15}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseChannelsAttribute(Ljava/lang/String;Ljava/util/Map;)I

    move-result v14

    .line 453
    .local v14, "channelCount":I
    const-string v43, "application/x-mpegURL"

    const/16 v46, -0x1

    const/16 v48, -0x1

    const/16 v49, 0x0

    .line 454
    move-object/from16 v41, v2

    move-object/from16 v42, v4

    move-object/from16 v45, v11

    move/from16 v47, v14

    move/from16 v50, v32

    move/from16 v51, v34

    move-object/from16 v52, v10

    invoke-static/range {v41 .. v52}, Landroidx/media2/exoplayer/external/Format;->createAudioContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;IILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v13

    .line 467
    .local v13, "format":Landroidx/media2/exoplayer/external/Format;
    if-nez v6, :cond_1b

    .line 469
    move-object/from16 v20, v13

    move-object/from16 v18, v1

    move-object/from16 v8, v33

    move-object/from16 v14, v40

    goto/16 :goto_17

    .line 471
    :cond_1b
    move-object/from16 v18, v1

    .end local v1    # "line":Ljava/lang/String;
    .local v18, "line":Ljava/lang/String;
    new-instance v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;

    move-object/from16 v22, v8

    .end local v8    # "variant":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;
    .local v22, "variant":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;
    invoke-virtual {v13, v5}, Landroidx/media2/exoplayer/external/Format;->copyWithMetadata(Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v8

    invoke-direct {v1, v6, v8, v3, v4}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;-><init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v8, v33

    .end local v33    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .local v8, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    move-object/from16 v14, v40

    goto/16 :goto_17

    .line 411
    .end local v8    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .end local v11    # "codecs":Ljava/lang/String;
    .end local v13    # "format":Landroidx/media2/exoplayer/external/Format;
    .end local v14    # "channelCount":I
    .end local v18    # "line":Ljava/lang/String;
    .end local v22    # "variant":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;
    .end local v44    # "sampleMimeType":Ljava/lang/String;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v33    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    :pswitch_3
    move-object/from16 v18, v1

    move-object/from16 v8, v33

    .end local v1    # "line":Ljava/lang/String;
    .end local v33    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .restart local v8    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .restart local v18    # "line":Ljava/lang/String;
    invoke-static {v12, v3}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->getVariantWithVideoGroup(Ljava/util/ArrayList;Ljava/lang/String;)Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;

    move-result-object v1

    .line 412
    .local v1, "variant":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;
    const/4 v11, 0x0

    .line 413
    .restart local v11    # "codecs":Ljava/lang/String;
    const/4 v13, -0x1

    .line 414
    .local v13, "width":I
    const/16 v22, -0x1

    .line 415
    .local v22, "height":I
    const/high16 v23, -0x40800000    # -1.0f

    .line 416
    .local v23, "frameRate":F
    if-eqz v1, :cond_1c

    .line 417
    iget-object v14, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;->format:Landroidx/media2/exoplayer/external/Format;

    .line 418
    .local v14, "variantFormat":Landroidx/media2/exoplayer/external/Format;
    move-object/from16 v25, v1

    .end local v1    # "variant":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;
    .local v25, "variant":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;
    iget-object v1, v14, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    move-object/from16 v26, v10

    const/4 v10, 0x2

    .end local v10    # "language":Ljava/lang/String;
    .restart local v26    # "language":Ljava/lang/String;
    invoke-static {v1, v10}, Landroidx/media2/exoplayer/external/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 419
    .end local v11    # "codecs":Ljava/lang/String;
    .local v1, "codecs":Ljava/lang/String;
    iget v10, v14, Landroidx/media2/exoplayer/external/Format;->width:I

    .line 420
    .end local v13    # "width":I
    .local v10, "width":I
    iget v11, v14, Landroidx/media2/exoplayer/external/Format;->height:I

    .line 421
    .end local v22    # "height":I
    .local v11, "height":I
    iget v13, v14, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    move/from16 v22, v11

    move/from16 v23, v13

    goto :goto_15

    .line 416
    .end local v14    # "variantFormat":Landroidx/media2/exoplayer/external/Format;
    .end local v25    # "variant":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;
    .end local v26    # "language":Ljava/lang/String;
    .local v1, "variant":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;
    .local v10, "language":Ljava/lang/String;
    .local v11, "codecs":Ljava/lang/String;
    .restart local v13    # "width":I
    .restart local v22    # "height":I
    :cond_1c
    move-object/from16 v25, v1

    move-object/from16 v26, v10

    .end local v1    # "variant":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;
    .end local v10    # "language":Ljava/lang/String;
    .restart local v25    # "variant":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;
    .restart local v26    # "language":Ljava/lang/String;
    move-object v1, v11

    move v10, v13

    .line 423
    .end local v11    # "codecs":Ljava/lang/String;
    .end local v13    # "width":I
    .local v1, "codecs":Ljava/lang/String;
    .local v10, "width":I
    :goto_15
    if-eqz v1, :cond_1d

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v44, v11

    goto :goto_16

    :cond_1d
    const/16 v44, 0x0

    .line 424
    .restart local v44    # "sampleMimeType":Ljava/lang/String;
    :goto_16
    const-string v43, "application/x-mpegURL"

    const/16 v46, -0x1

    const/16 v50, 0x0

    .line 425
    move-object/from16 v41, v2

    move-object/from16 v42, v4

    move-object/from16 v45, v1

    move/from16 v47, v10

    move/from16 v48, v22

    move/from16 v49, v23

    move/from16 v51, v32

    move/from16 v52, v34

    invoke-static/range {v41 .. v52}, Landroidx/media2/exoplayer/external/Format;->createVideoContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFLjava/util/List;II)Landroidx/media2/exoplayer/external/Format;

    move-result-object v11

    .line 438
    invoke-virtual {v11, v5}, Landroidx/media2/exoplayer/external/Format;->copyWithMetadata(Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v11

    .line 439
    .local v11, "format":Landroidx/media2/exoplayer/external/Format;
    if-nez v6, :cond_1e

    move-object/from16 v14, v40

    goto :goto_17

    .line 442
    :cond_1e
    new-instance v13, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;

    invoke-direct {v13, v6, v11, v3, v4}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;-><init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v14, v40

    .end local v40    # "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .local v14, "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    nop

    .line 396
    .end local v1    # "codecs":Ljava/lang/String;
    .end local v2    # "formatId":Ljava/lang/String;
    .end local v3    # "groupId":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "metadata":Landroidx/media2/exoplayer/external/metadata/Metadata;
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v10    # "width":I
    .end local v11    # "format":Landroidx/media2/exoplayer/external/Format;
    .end local v22    # "height":I
    .end local v23    # "frameRate":F
    .end local v25    # "variant":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;
    .end local v26    # "language":Ljava/lang/String;
    .end local v32    # "selectionFlags":I
    .end local v34    # "roleFlags":I
    .end local v36    # "referenceUri":Ljava/lang/String;
    .end local v44    # "sampleMimeType":Ljava/lang/String;
    :goto_17
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v33, v8

    move-object/from16 v40, v14

    move-object/from16 v8, v53

    move-object/from16 v11, v54

    move-object/from16 v14, v55

    const/4 v2, 0x0

    move-object/from16 v13, p1

    goto/16 :goto_d

    .end local v18    # "line":Ljava/lang/String;
    .end local v53    # "mediaTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v54    # "urlsInDeduplicatedVariants":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    .end local v55    # "urlToVariantInfos":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/HlsTrackMetadataEntry$VariantInfo;>;>;"
    .local v8, "mediaTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v11, "urlsInDeduplicatedVariants":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    .local v14, "urlToVariantInfos":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/HlsTrackMetadataEntry$VariantInfo;>;>;"
    .restart local v33    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .restart local v40    # "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    :cond_1f
    move-object/from16 v53, v8

    move-object/from16 v54, v11

    move-object/from16 v55, v14

    move-object/from16 v8, v33

    move-object/from16 v14, v40

    .line 523
    .end local v0    # "i":I
    .end local v11    # "urlsInDeduplicatedVariants":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    .end local v33    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .end local v40    # "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .local v8, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .local v14, "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .restart local v53    # "mediaTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v54    # "urlsInDeduplicatedVariants":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    .restart local v55    # "urlToVariantInfos":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/HlsTrackMetadataEntry$VariantInfo;>;>;"
    if-eqz v17, :cond_20

    .line 524
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object/from16 v21, v0

    goto :goto_18

    .line 523
    :cond_20
    nop

    .line 527
    :goto_18
    new-instance v13, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;

    move-object v0, v13

    move-object/from16 v1, p1

    move-object/from16 v2, v39

    move-object v3, v7

    move-object v4, v14

    move-object/from16 v18, v39

    .end local v39    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v18, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v5, v8

    move-object/from16 v19, v37

    .end local v37    # "sessionKeyDrmInitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/drm/DrmInitData;>;"
    .local v19, "sessionKeyDrmInitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/drm/DrmInitData;>;"
    move-object v6, v9

    move-object v10, v8

    move-object/from16 v22, v53

    .end local v8    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .end local v53    # "mediaTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v10, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .local v22, "mediaTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v8, v20

    move-object/from16 v23, v9

    .end local v9    # "subtitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .local v23, "subtitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    move-object/from16 v9, v21

    move-object/from16 v24, v10

    .end local v10    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .local v24, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    move/from16 v10, v16

    move-object/from16 v25, v54

    .end local v54    # "urlsInDeduplicatedVariants":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    .local v25, "urlsInDeduplicatedVariants":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    move-object v11, v15

    move-object/from16 v26, v12

    .end local v12    # "variants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;>;"
    .local v26, "variants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;>;"
    move-object/from16 v12, v19

    move-object/from16 v27, v7

    move-object/from16 v7, v38

    .end local v38    # "closedCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .local v7, "closedCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .local v27, "deduplicatedVariants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;>;"
    invoke-direct/range {v0 .. v12}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/media2/exoplayer/external/Format;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V

    return-object v13

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseMediaPlaylist(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser$LineIterator;Ljava/lang/String;)Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;
    .locals 60
    .param p0, "masterPlaylist"    # Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;
    .param p1, "iterator"    # Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser$LineIterator;
    .param p2, "baseUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 564
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 565
    .local v1, "playlistType":I
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 566
    .local v2, "startOffsetUs":J
    const-wide/16 v4, 0x0

    .line 567
    .local v4, "mediaSequence":J
    const/4 v6, 0x1

    .line 568
    .local v6, "version":I
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 569
    .local v7, "targetDurationUs":J
    iget-boolean v9, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->hasIndependentSegments:Z

    .line 570
    .local v9, "hasIndependentSegmentsTag":Z
    const/4 v10, 0x0

    .line 571
    .local v10, "hasEndTag":Z
    const/4 v11, 0x0

    .line 572
    .local v11, "initializationSegment":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 573
    .local v12, "variableDefinitions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 574
    .local v13, "segments":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v14

    .line 576
    .local v15, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-wide/16 v16, 0x0

    .line 577
    .local v16, "segmentDurationUs":J
    const-string v14, ""

    .line 578
    .local v14, "segmentTitle":Ljava/lang/String;
    const/16 v18, 0x0

    .line 579
    .local v18, "hasDiscontinuitySequence":Z
    const/16 v19, 0x0

    .line 580
    .local v19, "playlistDiscontinuitySequence":I
    const/16 v20, 0x0

    .line 581
    .local v20, "relativeDiscontinuitySequence":I
    const-wide/16 v21, 0x0

    .line 582
    .local v21, "playlistStartTimeUs":J
    const-wide/16 v23, 0x0

    .line 583
    .local v23, "segmentStartTimeUs":J
    const-wide/16 v25, 0x0

    .line 584
    .local v25, "segmentByteRangeOffset":J
    const-wide/16 v27, -0x1

    .line 585
    .local v27, "segmentByteRangeLength":J
    const-wide/16 v29, 0x0

    .line 586
    .local v29, "segmentMediaSequence":J
    const/16 v31, 0x0

    .line 588
    .local v31, "hasGapTag":Z
    const/16 v32, 0x0

    .line 589
    .local v32, "playlistProtectionSchemes":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    const/16 v33, 0x0

    .line 590
    .local v33, "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    const/16 v34, 0x0

    .line 591
    .local v34, "fullSegmentEncryptionIV":Ljava/lang/String;
    new-instance v35, Ljava/util/TreeMap;

    invoke-direct/range {v35 .. v35}, Ljava/util/TreeMap;-><init>()V

    move-object/from16 v36, v35

    .line 592
    .local v36, "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;>;"
    const/16 v35, 0x0

    .line 593
    .local v35, "encryptionScheme":Ljava/lang/String;
    const/16 v37, 0x0

    move-object/from16 v39, v11

    move-object/from16 v40, v14

    move-wide/from16 v46, v16

    move/from16 v44, v20

    move-wide/from16 v48, v23

    move-wide/from16 v50, v25

    move-wide/from16 v52, v27

    move-wide/from16 v54, v29

    move/from16 v45, v31

    move-object/from16 v38, v32

    move-object/from16 v41, v33

    move-object/from16 v42, v34

    move-object/from16 v14, v35

    move-object/from16 v43, v37

    move-wide/from16 v34, v7

    move v11, v9

    move/from16 v37, v10

    move/from16 v7, v19

    move-wide v8, v4

    move v10, v6

    move/from16 v6, v18

    move-wide/from16 v4, v21

    .line 596
    .end local v9    # "hasIndependentSegmentsTag":Z
    .end local v16    # "segmentDurationUs":J
    .end local v18    # "hasDiscontinuitySequence":Z
    .end local v19    # "playlistDiscontinuitySequence":I
    .end local v20    # "relativeDiscontinuitySequence":I
    .end local v21    # "playlistStartTimeUs":J
    .end local v23    # "segmentStartTimeUs":J
    .end local v25    # "segmentByteRangeOffset":J
    .end local v27    # "segmentByteRangeLength":J
    .end local v29    # "segmentMediaSequence":J
    .end local v31    # "hasGapTag":Z
    .end local v32    # "playlistProtectionSchemes":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .end local v33    # "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    .end local v35    # "encryptionScheme":Ljava/lang/String;
    .local v4, "playlistStartTimeUs":J
    .local v6, "hasDiscontinuitySequence":Z
    .local v7, "playlistDiscontinuitySequence":I
    .local v8, "mediaSequence":J
    .local v10, "version":I
    .local v11, "hasIndependentSegmentsTag":Z
    .local v14, "encryptionScheme":Ljava/lang/String;
    .local v34, "targetDurationUs":J
    .local v37, "hasEndTag":Z
    .local v38, "playlistProtectionSchemes":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .local v39, "initializationSegment":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;
    .local v40, "segmentTitle":Ljava/lang/String;
    .local v41, "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    .local v42, "fullSegmentEncryptionIV":Ljava/lang/String;
    .local v43, "cachedDrmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .local v44, "relativeDiscontinuitySequence":I
    .local v45, "hasGapTag":Z
    .local v46, "segmentDurationUs":J
    .local v48, "segmentStartTimeUs":J
    .local v50, "segmentByteRangeOffset":J
    .local v52, "segmentByteRangeLength":J
    .local v54, "segmentMediaSequence":J
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser$LineIterator;->hasNext()Z

    move-result v16

    const-wide/16 v17, 0x0

    move/from16 v56, v11

    .end local v11    # "hasIndependentSegmentsTag":Z
    .local v56, "hasIndependentSegmentsTag":Z
    if-eqz v16, :cond_28

    .line 597
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser$LineIterator;->next()Ljava/lang/String;

    move-result-object v11

    .line 599
    .local v11, "line":Ljava/lang/String;
    move/from16 v57, v10

    .end local v10    # "version":I
    .local v57, "version":I
    const-string v10, "#EXT"

    invoke-virtual {v11, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 601
    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 599
    :cond_0
    nop

    .line 604
    :goto_1
    const-string v10, "#EXT-X-PLAYLIST-TYPE"

    invoke-virtual {v11, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 605
    sget-object v10, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_PLAYLIST_TYPE:Ljava/util/regex/Pattern;

    invoke-static {v11, v10, v12}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    .line 606
    .local v10, "playlistTypeString":Ljava/lang/String;
    move-object/from16 v33, v15

    .end local v15    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v33, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v15, "VOD"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 607
    const/4 v1, 0x1

    goto :goto_2

    .line 608
    :cond_1
    const-string v15, "EVENT"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 609
    const/4 v1, 0x2

    goto :goto_2

    .line 608
    :cond_2
    nop

    .line 611
    .end local v10    # "playlistTypeString":Ljava/lang/String;
    :goto_2
    move-object/from16 v15, v33

    move/from16 v11, v56

    move/from16 v10, v57

    goto :goto_0

    .end local v33    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    move-object/from16 v33, v15

    .end local v15    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v33    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v10, "#EXT-X-START"

    invoke-virtual {v11, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    const-wide v20, 0x412e848000000000L    # 1000000.0

    if-eqz v10, :cond_4

    .line 612
    sget-object v10, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_TIME_OFFSET:Ljava/util/regex/Pattern;

    invoke-static {v11, v10}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    move-result-wide v15

    move-wide/from16 v58, v8

    .end local v8    # "mediaSequence":J
    .local v58, "mediaSequence":J
    mul-double v8, v15, v20

    double-to-long v2, v8

    move-object/from16 v15, v33

    move/from16 v11, v56

    move/from16 v10, v57

    move-wide/from16 v8, v58

    goto :goto_0

    .line 613
    .end local v58    # "mediaSequence":J
    .restart local v8    # "mediaSequence":J
    :cond_4
    move-wide/from16 v58, v8

    .end local v8    # "mediaSequence":J
    .restart local v58    # "mediaSequence":J
    const-string v8, "#EXT-X-MAP"

    invoke-virtual {v11, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 614
    sget-object v8, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    invoke-static {v11, v8, v12}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    .line 615
    .local v8, "uri":Ljava/lang/String;
    sget-object v9, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_ATTR_BYTERANGE:Ljava/util/regex/Pattern;

    invoke-static {v11, v9, v12}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    .line 616
    .local v9, "byteRange":Ljava/lang/String;
    if-eqz v9, :cond_6

    .line 617
    const-string v10, "@"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 618
    .local v10, "splitByteRange":[Ljava/lang/String;
    const/4 v15, 0x0

    aget-object v15, v10, v15

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    .line 619
    .end local v52    # "segmentByteRangeLength":J
    .local v17, "segmentByteRangeLength":J
    array-length v15, v10

    move-object/from16 v24, v9

    const/4 v9, 0x1

    .end local v9    # "byteRange":Ljava/lang/String;
    .local v24, "byteRange":Ljava/lang/String;
    if-le v15, v9, :cond_5

    .line 620
    aget-object v9, v10, v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    move-wide/from16 v50, v15

    move-wide/from16 v52, v17

    goto :goto_3

    .line 619
    :cond_5
    move-wide/from16 v52, v17

    goto :goto_3

    .line 616
    .end local v10    # "splitByteRange":[Ljava/lang/String;
    .end local v17    # "segmentByteRangeLength":J
    .end local v24    # "byteRange":Ljava/lang/String;
    .restart local v9    # "byteRange":Ljava/lang/String;
    .restart local v52    # "segmentByteRangeLength":J
    :cond_6
    move-object/from16 v24, v9

    .line 623
    .end local v9    # "byteRange":Ljava/lang/String;
    .restart local v24    # "byteRange":Ljava/lang/String;
    :goto_3
    if-eqz v41, :cond_8

    if-eqz v42, :cond_7

    goto :goto_4

    .line 625
    :cond_7
    new-instance v9, Landroidx/media2/exoplayer/external/ParserException;

    const-string v10, "The encryption IV attribute must be present when an initialization segment is encrypted with METHOD=AES-128."

    invoke-direct {v9, v10}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 623
    :cond_8
    :goto_4
    nop

    .line 629
    new-instance v9, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;

    move-object/from16 v16, v9

    move-object/from16 v17, v8

    move-wide/from16 v18, v50

    move-wide/from16 v20, v52

    move-object/from16 v22, v41

    move-object/from16 v23, v42

    invoke-direct/range {v16 .. v23}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v39, v9

    .line 636
    const-wide/16 v50, 0x0

    .line 637
    const-wide/16 v52, -0x1

    .line 638
    .end local v8    # "uri":Ljava/lang/String;
    .end local v24    # "byteRange":Ljava/lang/String;
    move-object/from16 v15, v33

    move/from16 v11, v56

    move/from16 v10, v57

    move-wide/from16 v8, v58

    goto/16 :goto_0

    :cond_9
    const-string v8, "#EXT-X-TARGETDURATION"

    invoke-virtual {v11, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 639
    sget-object v8, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_TARGET_DURATION:Ljava/util/regex/Pattern;

    invoke-static {v11, v8}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v8

    int-to-long v8, v8

    const-wide/32 v15, 0xf4240

    mul-long v34, v8, v15

    move-object/from16 v15, v33

    move/from16 v11, v56

    move/from16 v10, v57

    move-wide/from16 v8, v58

    goto/16 :goto_0

    .line 640
    :cond_a
    const-string v8, "#EXT-X-MEDIA-SEQUENCE"

    invoke-virtual {v11, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 641
    sget-object v8, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_SEQUENCE:Ljava/util/regex/Pattern;

    invoke-static {v11, v8}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseLongAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)J

    move-result-wide v8

    .line 642
    .end local v58    # "mediaSequence":J
    .local v8, "mediaSequence":J
    move-wide/from16 v54, v8

    move-object/from16 v15, v33

    move/from16 v11, v56

    move/from16 v10, v57

    goto/16 :goto_0

    .line 643
    .end local v8    # "mediaSequence":J
    .restart local v58    # "mediaSequence":J
    :cond_b
    const-string v8, "#EXT-X-VERSION"

    invoke-virtual {v11, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 644
    sget-object v8, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_VERSION:Ljava/util/regex/Pattern;

    invoke-static {v11, v8}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v10

    move-object/from16 v15, v33

    move/from16 v11, v56

    move-wide/from16 v8, v58

    goto/16 :goto_0

    .line 645
    :cond_c
    const-string v8, "#EXT-X-DEFINE"

    invoke-virtual {v11, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 646
    sget-object v8, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_IMPORT:Ljava/util/regex/Pattern;

    invoke-static {v11, v8, v12}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    .line 647
    .local v8, "importName":Ljava/lang/String;
    if-eqz v8, :cond_e

    .line 648
    iget-object v9, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->variableDefinitions:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 649
    .local v9, "value":Ljava/lang/String;
    if-eqz v9, :cond_d

    .line 650
    invoke-virtual {v12, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 649
    :cond_d
    nop

    .line 654
    .end local v9    # "value":Ljava/lang/String;
    :goto_5
    goto :goto_6

    .line 655
    :cond_e
    sget-object v9, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_NAME:Ljava/util/regex/Pattern;

    .line 656
    invoke-static {v11, v9, v12}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_VALUE:Ljava/util/regex/Pattern;

    .line 657
    invoke-static {v11, v10, v12}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    .line 655
    invoke-virtual {v12, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    .end local v8    # "importName":Ljava/lang/String;
    :goto_6
    goto/16 :goto_f

    :cond_f
    const-string v8, "#EXTINF"

    invoke-virtual {v11, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 660
    sget-object v8, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_DURATION:Ljava/util/regex/Pattern;

    .line 661
    invoke-static {v11, v8}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    move-result-wide v8

    mul-double v8, v8, v20

    double-to-long v8, v8

    .line 662
    .end local v46    # "segmentDurationUs":J
    .local v8, "segmentDurationUs":J
    sget-object v10, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_TITLE:Ljava/util/regex/Pattern;

    const-string v15, ""

    invoke-static {v11, v10, v15, v12}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v40

    move-wide/from16 v46, v8

    move-object/from16 v15, v33

    move/from16 v11, v56

    move/from16 v10, v57

    move-wide/from16 v8, v58

    goto/16 :goto_0

    .line 663
    .end local v8    # "segmentDurationUs":J
    .restart local v46    # "segmentDurationUs":J
    :cond_10
    const-string v8, "#EXT-X-KEY"

    invoke-virtual {v11, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 664
    sget-object v8, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_METHOD:Ljava/util/regex/Pattern;

    invoke-static {v11, v8, v12}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    .line 665
    .local v8, "method":Ljava/lang/String;
    sget-object v9, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_KEYFORMAT:Ljava/util/regex/Pattern;

    const-string v10, "identity"

    .line 666
    invoke-static {v11, v9, v10, v12}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    .line 667
    .local v9, "keyFormat":Ljava/lang/String;
    const/4 v10, 0x0

    .line 668
    .end local v41    # "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    .local v10, "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    const/4 v15, 0x0

    .line 669
    .end local v42    # "fullSegmentEncryptionIV":Ljava/lang/String;
    .local v15, "fullSegmentEncryptionIV":Ljava/lang/String;
    const-string v0, "NONE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 670
    invoke-virtual/range {v36 .. v36}, Ljava/util/TreeMap;->clear()V

    .line 671
    const/4 v0, 0x0

    move-object/from16 v43, v0

    move-object/from16 v41, v10

    move-object/from16 v42, v15

    move-object/from16 v0, v36

    goto :goto_8

    .line 673
    :cond_11
    sget-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_IV:Ljava/util/regex/Pattern;

    invoke-static {v11, v0, v12}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 674
    .end local v15    # "fullSegmentEncryptionIV":Ljava/lang/String;
    .local v0, "fullSegmentEncryptionIV":Ljava/lang/String;
    const-string v15, "identity"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_13

    .line 675
    const-string v15, "AES-128"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_12

    .line 677
    sget-object v15, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    invoke-static {v11, v15, v12}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v42, v0

    move-object/from16 v41, v10

    move-object/from16 v0, v36

    goto :goto_8

    .line 675
    :cond_12
    move-object/from16 v42, v0

    move-object/from16 v41, v10

    move-object/from16 v0, v36

    goto :goto_8

    .line 683
    :cond_13
    if-nez v14, :cond_14

    .line 684
    invoke-static {v8}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseEncryptionScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto :goto_7

    .line 683
    :cond_14
    nop

    .line 686
    :goto_7
    invoke-static {v11, v9, v12}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseDrmSchemeData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    move-result-object v15

    .line 687
    .local v15, "schemeData":Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;
    if-eqz v15, :cond_15

    .line 688
    const/16 v16, 0x0

    .line 689
    .end local v43    # "cachedDrmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .local v16, "cachedDrmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    move-object/from16 v17, v0

    move-object/from16 v0, v36

    .end local v36    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;>;"
    .local v0, "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;>;"
    .local v17, "fullSegmentEncryptionIV":Ljava/lang/String;
    invoke-virtual {v0, v9, v15}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v41, v10

    move-object/from16 v43, v16

    move-object/from16 v42, v17

    goto :goto_8

    .line 687
    .end local v16    # "cachedDrmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .end local v17    # "fullSegmentEncryptionIV":Ljava/lang/String;
    .local v0, "fullSegmentEncryptionIV":Ljava/lang/String;
    .restart local v36    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;>;"
    .restart local v43    # "cachedDrmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    :cond_15
    move-object/from16 v17, v0

    move-object/from16 v0, v36

    .end local v36    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;>;"
    .local v0, "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;>;"
    .restart local v17    # "fullSegmentEncryptionIV":Ljava/lang/String;
    move-object/from16 v41, v10

    move-object/from16 v42, v17

    .line 693
    .end local v8    # "method":Ljava/lang/String;
    .end local v9    # "keyFormat":Ljava/lang/String;
    .end local v10    # "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    .end local v15    # "schemeData":Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;
    .end local v17    # "fullSegmentEncryptionIV":Ljava/lang/String;
    .restart local v41    # "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    .restart local v42    # "fullSegmentEncryptionIV":Ljava/lang/String;
    :goto_8
    move-object/from16 v36, v0

    move-object/from16 v15, v33

    move/from16 v11, v56

    move/from16 v10, v57

    move-wide/from16 v8, v58

    move-object/from16 v0, p0

    goto/16 :goto_0

    .end local v0    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;>;"
    .restart local v36    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;>;"
    :cond_16
    move-object/from16 v0, v36

    .end local v36    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;>;"
    .restart local v0    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;>;"
    const-string v8, "#EXT-X-BYTERANGE"

    invoke-virtual {v11, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 694
    sget-object v8, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_BYTERANGE:Ljava/util/regex/Pattern;

    invoke-static {v11, v8, v12}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    .line 695
    .local v8, "byteRange":Ljava/lang/String;
    const-string v9, "@"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 696
    .local v9, "splitByteRange":[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v10, v9, v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v52

    .line 697
    array-length v10, v9

    const/4 v15, 0x1

    if-le v10, v15, :cond_17

    .line 698
    aget-object v10, v9, v15

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    move-wide/from16 v50, v15

    goto :goto_9

    .line 697
    :cond_17
    nop

    .line 700
    .end local v8    # "byteRange":Ljava/lang/String;
    .end local v9    # "splitByteRange":[Ljava/lang/String;
    :goto_9
    move-object/from16 v36, v0

    move-object/from16 v15, v33

    move/from16 v11, v56

    move/from16 v10, v57

    move-wide/from16 v8, v58

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_18
    const-string v8, "#EXT-X-DISCONTINUITY-SEQUENCE"

    invoke-virtual {v11, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    const/16 v9, 0x3a

    if-eqz v8, :cond_19

    .line 701
    const/4 v6, 0x1

    .line 702
    invoke-virtual {v11, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, 0x1

    add-int/2addr v8, v9

    invoke-virtual {v11, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v36, v0

    move-object/from16 v15, v33

    move/from16 v11, v56

    move/from16 v10, v57

    move-wide/from16 v8, v58

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 703
    :cond_19
    const-string v8, "#EXT-X-DISCONTINUITY"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 704
    add-int/lit8 v44, v44, 0x1

    move-object/from16 v36, v0

    move-object/from16 v15, v33

    move/from16 v11, v56

    move/from16 v10, v57

    move-wide/from16 v8, v58

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 705
    :cond_1a
    const-string v8, "#EXT-X-PROGRAM-DATE-TIME"

    invoke-virtual {v11, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 706
    cmp-long v8, v4, v17

    if-nez v8, :cond_1b

    .line 707
    nop

    .line 708
    invoke-virtual {v11, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, 0x1

    add-int/2addr v8, v9

    invoke-virtual {v11, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroidx/media2/exoplayer/external/util/Util;->parseXsDateTime(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Landroidx/media2/exoplayer/external/C;->msToUs(J)J

    move-result-wide v8

    .line 709
    .local v8, "programDatetimeUs":J
    sub-long v4, v8, v48

    .line 710
    .end local v8    # "programDatetimeUs":J
    move-object/from16 v36, v0

    move-object/from16 v15, v33

    move/from16 v11, v56

    move/from16 v10, v57

    move-wide/from16 v8, v58

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 706
    :cond_1b
    move-object/from16 v36, v0

    goto/16 :goto_f

    .line 711
    :cond_1c
    const-string v8, "#EXT-X-GAP"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 712
    const/16 v45, 0x1

    move-object/from16 v36, v0

    move-object/from16 v15, v33

    move/from16 v11, v56

    move/from16 v10, v57

    move-wide/from16 v8, v58

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 713
    :cond_1d
    const-string v8, "#EXT-X-INDEPENDENT-SEGMENTS"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 714
    const/4 v8, 0x1

    move-object/from16 v36, v0

    move v11, v8

    move-object/from16 v15, v33

    move/from16 v10, v57

    move-wide/from16 v8, v58

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 715
    :cond_1e
    const-string v8, "#EXT-X-ENDLIST"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 716
    const/16 v37, 0x1

    move-object/from16 v36, v0

    move-object/from16 v15, v33

    move/from16 v11, v56

    move/from16 v10, v57

    move-wide/from16 v8, v58

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 717
    :cond_1f
    const-string v8, "#"

    invoke-virtual {v11, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_27

    .line 719
    if-nez v41, :cond_20

    .line 720
    const/4 v8, 0x0

    goto :goto_a

    .line 721
    :cond_20
    if-eqz v42, :cond_21

    .line 722
    move-object/from16 v8, v42

    goto :goto_a

    .line 724
    :cond_21
    invoke-static/range {v54 .. v55}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v8

    .line 727
    .local v8, "segmentEncryptionIV":Ljava/lang/String;
    :goto_a
    const-wide/16 v9, 0x1

    add-long v54, v54, v9

    .line 728
    const-wide/16 v9, -0x1

    cmp-long v15, v52, v9

    if-nez v15, :cond_22

    .line 729
    const-wide/16 v15, 0x0

    move-wide/from16 v50, v15

    goto :goto_b

    .line 728
    :cond_22
    nop

    .line 732
    :goto_b
    if-nez v43, :cond_25

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_25

    .line 733
    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v15

    const/4 v9, 0x0

    new-array v9, v9, [Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    invoke-interface {v15, v9}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    .line 734
    .local v9, "schemeDatas":[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;
    new-instance v10, Landroidx/media2/exoplayer/external/drm/DrmInitData;

    invoke-direct {v10, v14, v9}, Landroidx/media2/exoplayer/external/drm/DrmInitData;-><init>(Ljava/lang/String;[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)V

    .line 735
    .end local v43    # "cachedDrmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .local v10, "cachedDrmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    if-nez v38, :cond_24

    .line 736
    array-length v15, v9

    new-array v15, v15, [Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    .line 737
    .local v15, "playlistSchemeDatas":[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;
    const/16 v16, 0x0

    move-object/from16 v36, v0

    move/from16 v0, v16

    .local v0, "i":I
    .restart local v36    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;>;"
    :goto_c
    move-object/from16 v16, v10

    .end local v10    # "cachedDrmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .restart local v16    # "cachedDrmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    array-length v10, v9

    if-ge v0, v10, :cond_23

    .line 738
    aget-object v10, v9, v0

    move-object/from16 v17, v9

    .end local v9    # "schemeDatas":[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;
    .local v17, "schemeDatas":[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;
    const/4 v9, 0x0

    invoke-virtual {v10, v9}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->copyWithData([B)Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    move-result-object v9

    aput-object v9, v15, v0

    .line 737
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v10, v16

    move-object/from16 v9, v17

    goto :goto_c

    .end local v17    # "schemeDatas":[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;
    .restart local v9    # "schemeDatas":[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;
    :cond_23
    move-object/from16 v17, v9

    .line 740
    .end local v0    # "i":I
    .end local v9    # "schemeDatas":[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;
    .restart local v17    # "schemeDatas":[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;
    new-instance v0, Landroidx/media2/exoplayer/external/drm/DrmInitData;

    invoke-direct {v0, v14, v15}, Landroidx/media2/exoplayer/external/drm/DrmInitData;-><init>(Ljava/lang/String;[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)V

    move-object/from16 v38, v0

    move-object/from16 v43, v16

    goto :goto_d

    .line 735
    .end local v15    # "playlistSchemeDatas":[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;
    .end local v16    # "cachedDrmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .end local v17    # "schemeDatas":[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;
    .end local v36    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;>;"
    .local v0, "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;>;"
    .restart local v9    # "schemeDatas":[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;
    .restart local v10    # "cachedDrmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    :cond_24
    move-object/from16 v36, v0

    move-object/from16 v17, v9

    move-object/from16 v16, v10

    .end local v0    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;>;"
    .end local v9    # "schemeDatas":[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;
    .end local v10    # "cachedDrmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .restart local v16    # "cachedDrmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .restart local v17    # "schemeDatas":[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;
    .restart local v36    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;>;"
    move-object/from16 v43, v16

    goto :goto_d

    .line 732
    .end local v16    # "cachedDrmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .end local v17    # "schemeDatas":[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;
    .end local v36    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;>;"
    .restart local v0    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;>;"
    .restart local v43    # "cachedDrmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    :cond_25
    move-object/from16 v36, v0

    .line 744
    .end local v0    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;>;"
    .restart local v36    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;>;"
    :goto_d
    new-instance v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;

    move-object/from16 v16, v0

    .line 746
    invoke-static {v11, v12}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->replaceVariableReferences(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v18, v39

    move-object/from16 v19, v40

    move-wide/from16 v20, v46

    move/from16 v22, v44

    move-wide/from16 v23, v48

    move-object/from16 v25, v43

    move-object/from16 v26, v41

    move-object/from16 v27, v8

    move-wide/from16 v28, v50

    move-wide/from16 v30, v52

    move/from16 v32, v45

    invoke-direct/range {v16 .. v32}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;-><init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;Ljava/lang/String;JIJLandroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZ)V

    .line 744
    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 758
    add-long v48, v48, v46

    .line 759
    const-wide/16 v46, 0x0

    .line 760
    const-string v40, ""

    .line 761
    const-wide/16 v9, -0x1

    cmp-long v0, v52, v9

    if-eqz v0, :cond_26

    .line 762
    add-long v50, v50, v52

    goto :goto_e

    .line 761
    :cond_26
    nop

    .line 764
    :goto_e
    const-wide/16 v52, -0x1

    .line 765
    const/16 v45, 0x0

    .line 766
    .end local v8    # "segmentEncryptionIV":Ljava/lang/String;
    move-object/from16 v15, v33

    move/from16 v11, v56

    move/from16 v10, v57

    move-wide/from16 v8, v58

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 717
    .end local v36    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;>;"
    .restart local v0    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;>;"
    :cond_27
    move-object/from16 v36, v0

    .line 596
    .end local v0    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;>;"
    .end local v11    # "line":Ljava/lang/String;
    .restart local v36    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;>;"
    :goto_f
    move-object/from16 v15, v33

    move/from16 v11, v56

    move/from16 v10, v57

    move-wide/from16 v8, v58

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 768
    .end local v33    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v57    # "version":I
    .end local v58    # "mediaSequence":J
    .local v8, "mediaSequence":J
    .local v10, "version":I
    .local v15, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_28
    move-wide/from16 v58, v8

    move/from16 v57, v10

    move-object/from16 v33, v15

    const/4 v0, 0x1

    const/4 v9, 0x0

    .end local v8    # "mediaSequence":J
    .end local v10    # "version":I
    .end local v15    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v33    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v57    # "version":I
    .restart local v58    # "mediaSequence":J
    new-instance v8, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;

    cmp-long v10, v4, v17

    if-eqz v10, :cond_29

    const/16 v31, 0x1

    goto :goto_10

    :cond_29
    const/16 v31, 0x0

    :goto_10
    move-object v0, v14

    .end local v14    # "encryptionScheme":Ljava/lang/String;
    .local v0, "encryptionScheme":Ljava/lang/String;
    move-object v14, v8

    move-object/from16 v9, v33

    .end local v33    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v9, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v15, v1

    move-object/from16 v16, p2

    move-object/from16 v17, v9

    move-wide/from16 v18, v2

    move-wide/from16 v20, v4

    move/from16 v22, v6

    move/from16 v23, v7

    move-wide/from16 v24, v58

    move/from16 v26, v57

    move-wide/from16 v27, v34

    move/from16 v29, v56

    move/from16 v30, v37

    move-object/from16 v32, v38

    move-object/from16 v33, v13

    invoke-direct/range {v14 .. v33}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;-><init>(ILjava/lang/String;Ljava/util/List;JJZIJIJZZZLandroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/List;)V

    return-object v8
.end method

.method private static parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z
    .locals 3
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "defaultValue"    # Z

    .line 921
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 922
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 923
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "YES"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 925
    :cond_0
    return p2
.end method

.method private static parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 894
    .local p3, "variableDefinitions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 895
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p2

    .line 896
    .local v1, "value":Ljava/lang/String;
    :goto_0
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    .line 898
    :cond_1
    invoke-static {v1, p3}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->replaceVariableReferences(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 896
    :cond_2
    :goto_1
    nop

    .line 897
    move-object v2, v1

    .line 896
    :goto_2
    return-object v2
.end method

.method private static parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 886
    .local p2, "variableDefinitions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static parseRoleFlags(Ljava/lang/String;Ljava/util/Map;)I
    .locals 4
    .param p0, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 803
    .local p1, "variableDefinitions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_CHARACTERISTICS:Ljava/util/regex/Pattern;

    .line 804
    invoke-static {p0, v0, p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 805
    .local v0, "concatenatedCharacteristics":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 806
    const/4 v1, 0x0

    return v1

    .line 808
    :cond_0
    const-string v1, ","

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 809
    .local v1, "characteristics":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 810
    .local v2, "roleFlags":I
    const-string v3, "public.accessibility.describes-video"

    invoke-static {v1, v3}, Landroidx/media2/exoplayer/external/util/Util;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 811
    or-int/lit16 v2, v2, 0x200

    goto :goto_0

    .line 810
    :cond_1
    nop

    .line 813
    :goto_0
    const-string v3, "public.accessibility.transcribes-spoken-dialog"

    invoke-static {v1, v3}, Landroidx/media2/exoplayer/external/util/Util;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 814
    or-int/lit16 v2, v2, 0x1000

    goto :goto_1

    .line 813
    :cond_2
    nop

    .line 816
    :goto_1
    const-string v3, "public.accessibility.describes-music-and-sound"

    invoke-static {v1, v3}, Landroidx/media2/exoplayer/external/util/Util;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 817
    or-int/lit16 v2, v2, 0x400

    goto :goto_2

    .line 816
    :cond_3
    nop

    .line 819
    :goto_2
    const-string v3, "public.easy-to-read"

    invoke-static {v1, v3}, Landroidx/media2/exoplayer/external/util/Util;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 820
    or-int/lit16 v2, v2, 0x2000

    goto :goto_3

    .line 819
    :cond_4
    nop

    .line 822
    :goto_3
    return v2
.end method

.method private static parseSelectionFlags(Ljava/lang/String;)I
    .locals 3
    .param p0, "line"    # Ljava/lang/String;

    .line 788
    const/4 v0, 0x0

    .line 789
    .local v0, "flags":I
    sget-object v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_DEFAULT:Ljava/util/regex/Pattern;

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 790
    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 789
    :cond_0
    nop

    .line 792
    :goto_0
    sget-object v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_FORCED:Ljava/util/regex/Pattern;

    invoke-static {p0, v1, v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 793
    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 792
    :cond_1
    nop

    .line 795
    :goto_1
    sget-object v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_AUTOSELECT:Ljava/util/regex/Pattern;

    invoke-static {p0, v1, v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 796
    or-int/lit8 v0, v0, 0x4

    goto :goto_2

    .line 795
    :cond_2
    nop

    .line 798
    :goto_2
    return v0
.end method

.method private static parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 876
    .local p2, "variableDefinitions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 877
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 878
    return-object v0

    .line 880
    :cond_0
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    invoke-virtual {p1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x13

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Couldn\'t match "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static replaceVariableReferences(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 903
    .local p1, "variableDefinitions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_VARIABLE_REFERENCE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 905
    .local v0, "matcher":Ljava/util/regex/Matcher;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 906
    .local v1, "stringWithReplacements":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 907
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 908
    .local v2, "groupName":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 909
    nop

    .line 910
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 909
    invoke-virtual {v0, v1, v3}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_1

    .line 908
    :cond_0
    nop

    .line 914
    .end local v2    # "groupName":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 915
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 916
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static skipIgnorableWhitespace(Ljava/io/BufferedReader;ZI)I
    .locals 1
    .param p0, "reader"    # Ljava/io/BufferedReader;
    .param p1, "skipLinebreaks"    # Z
    .param p2, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    :goto_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    invoke-static {p2}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    invoke-static {p2}, Landroidx/media2/exoplayer/external/util/Util;->isLinebreak(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 258
    :cond_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result p2

    goto :goto_0

    .line 257
    :cond_1
    nop

    .line 260
    return p2
.end method


# virtual methods
.method public parse(Landroid/net/Uri;Ljava/io/InputStream;)Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylist;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 199
    .local v0, "reader":Ljava/io/BufferedReader;
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 202
    .local v1, "extraLines":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->checkPlaylistHeader(Ljava/io/BufferedReader;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 206
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "line":Ljava/lang/String;
    if-eqz v2, :cond_a

    .line 207
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 208
    .end local v3    # "line":Ljava/lang/String;
    .local v2, "line":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 210
    :cond_0
    const-string v3, "#EXT-X-STREAM-INF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 211
    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 212
    new-instance v3, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser$LineIterator;

    invoke-direct {v3, v1, v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser$LineIterator;-><init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseMasterPlaylist(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser$LineIterator;Ljava/lang/String;)Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 212
    return-object v3

    .line 213
    :cond_1
    :try_start_1
    const-string v3, "#EXT-X-TARGETDURATION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "#EXT-X-MEDIA-SEQUENCE"

    .line 214
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "#EXTINF"

    .line 215
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "#EXT-X-KEY"

    .line 216
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "#EXT-X-BYTERANGE"

    .line 217
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "#EXT-X-DISCONTINUITY"

    .line 218
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "#EXT-X-DISCONTINUITY-SEQUENCE"

    .line 219
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "#EXT-X-ENDLIST"

    .line 220
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 225
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 219
    :cond_3
    goto :goto_1

    .line 218
    :cond_4
    goto :goto_1

    .line 217
    :cond_5
    goto :goto_1

    .line 216
    :cond_6
    goto :goto_1

    .line 215
    :cond_7
    goto :goto_1

    .line 214
    :cond_8
    goto :goto_1

    .line 213
    :cond_9
    nop

    .line 221
    :goto_1
    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->masterPlaylist:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;

    new-instance v4, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser$LineIterator;

    invoke-direct {v4, v1, v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser$LineIterator;-><init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V

    .line 223
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 222
    invoke-static {v3, v4, v5}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseMediaPlaylist(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser$LineIterator;Ljava/lang/String;)Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 222
    return-object v3

    .line 229
    .end local v2    # "line":Ljava/lang/String;
    .restart local v3    # "line":Ljava/lang/String;
    :cond_a
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 230
    nop

    .line 231
    new-instance v2, Landroidx/media2/exoplayer/external/ParserException;

    const-string v4, "Failed to parse the playlist, could not identify any tags."

    invoke-direct {v2, v4}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 203
    .end local v3    # "line":Ljava/lang/String;
    :cond_b
    :try_start_2
    new-instance v2, Landroidx/media2/exoplayer/external/source/UnrecognizedInputFormatException;

    const-string v3, "Input does not start with the #EXTM3U header."

    invoke-direct {v2, v3, p1}, Landroidx/media2/exoplayer/external/source/UnrecognizedInputFormatException;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .end local v0    # "reader":Ljava/io/BufferedReader;
    .end local v1    # "extraLines":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/String;>;"
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "inputStream":Ljava/io/InputStream;
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 229
    .restart local v0    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "extraLines":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/String;>;"
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "inputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v2

    return-void
.end method

.method public bridge synthetic parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-virtual {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylist;

    move-result-object p1

    return-object p1
.end method
