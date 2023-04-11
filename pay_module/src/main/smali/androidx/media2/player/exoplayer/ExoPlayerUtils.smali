.class Landroidx/media2/player/exoplayer/ExoPlayerUtils;
.super Ljava/lang/Object;
.source "ExoPlayerUtils.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final sExtractorsFactory:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 79
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;-><init>()V

    .line 80
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;->setAdtsExtractorFlags(I)Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;

    move-result-object v0

    sput-object v0, Landroidx/media2/player/exoplayer/ExoPlayerUtils;->sExtractorsFactory:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    .line 79
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    return-void
.end method

.method public static createUnclippedMediaSource(Landroid/content/Context;Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;Landroidx/media2/common/MediaItem;)Landroidx/media2/exoplayer/external/source/MediaSource;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dataSourceFactory"    # Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;
    .param p2, "mediaItem"    # Landroidx/media2/common/MediaItem;

    .line 88
    instance-of v0, p2, Landroidx/media2/common/UriMediaItem;

    if-eqz v0, :cond_6

    .line 89
    move-object v0, p2

    check-cast v0, Landroidx/media2/common/UriMediaItem;

    invoke-virtual {v0}, Landroidx/media2/common/UriMediaItem;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 90
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->inferContentType(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 91
    new-instance v1, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;

    invoke-direct {v1, p1}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;-><init>(Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;)V

    .line 92
    invoke-virtual {v1, p2}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->setTag(Ljava/lang/Object;)Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;

    move-result-object v1

    .line 93
    invoke-virtual {v1, v0}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;

    move-result-object v1

    .line 91
    return-object v1

    .line 95
    :cond_0
    const-string v1, "android.resource"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 96
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 98
    .local v1, "path":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    .line 99
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v5, "\\d+"

    invoke-virtual {v2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_2

    .line 99
    :cond_1
    goto :goto_0

    .line 98
    :cond_2
    nop

    .line 102
    :goto_0
    const-string v2, "^/"

    const-string v5, ""

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "host":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_3
    const-string v6, ""

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 105
    .local v5, "resourceName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "raw"

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v5, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 108
    .end local v5    # "resourceName":Ljava/lang/String;
    .local v2, "resourceIdentifier":I
    :goto_2
    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    invoke-static {v3}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 109
    invoke-static {v2}, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->buildRawResourceUri(I)Landroid/net/Uri;

    move-result-object v0

    goto :goto_4

    .line 95
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "resourceIdentifier":I
    :cond_5
    nop

    .line 111
    :goto_4
    new-instance v1, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;

    invoke-direct {v1, p1}, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;-><init>(Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;)V

    sget-object v2, Landroidx/media2/player/exoplayer/ExoPlayerUtils;->sExtractorsFactory:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    .line 112
    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->setExtractorsFactory(Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;)Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;

    move-result-object v1

    .line 113
    invoke-virtual {v1, p2}, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->setTag(Ljava/lang/Object;)Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;

    move-result-object v1

    .line 114
    invoke-virtual {v1, v0}, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Landroidx/media2/exoplayer/external/source/ExtractorMediaSource;

    move-result-object v1

    .line 111
    return-object v1

    .line 116
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_6
    instance-of v0, p2, Landroidx/media2/common/FileMediaItem;

    if-eqz v0, :cond_7

    .line 117
    new-instance v0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;

    invoke-direct {v0, p1}, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;-><init>(Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;)V

    sget-object v1, Landroidx/media2/player/exoplayer/ExoPlayerUtils;->sExtractorsFactory:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    .line 118
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->setExtractorsFactory(Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;)Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;

    move-result-object v0

    .line 119
    invoke-virtual {v0, p2}, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->setTag(Ljava/lang/Object;)Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;

    move-result-object v0

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 120
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Landroidx/media2/exoplayer/external/source/ExtractorMediaSource;

    move-result-object v0

    .line 117
    return-object v0

    .line 121
    :cond_7
    instance-of v0, p2, Landroidx/media2/common/CallbackMediaItem;

    if-eqz v0, :cond_8

    .line 122
    move-object v0, p2

    check-cast v0, Landroidx/media2/common/CallbackMediaItem;

    .line 123
    .local v0, "callbackMediaItem":Landroidx/media2/common/CallbackMediaItem;
    nop

    .line 124
    invoke-virtual {v0}, Landroidx/media2/common/CallbackMediaItem;->getDataSourceCallback()Landroidx/media2/common/DataSourceCallback;

    move-result-object v1

    .line 123
    invoke-static {v1}, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource;->getFactory(Landroidx/media2/common/DataSourceCallback;)Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;

    move-result-object p1

    .line 125
    new-instance v1, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;

    invoke-direct {v1, p1}, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;-><init>(Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;)V

    sget-object v2, Landroidx/media2/player/exoplayer/ExoPlayerUtils;->sExtractorsFactory:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    .line 126
    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->setExtractorsFactory(Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;)Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;

    move-result-object v1

    .line 127
    invoke-virtual {v1, p2}, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->setTag(Ljava/lang/Object;)Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;

    move-result-object v1

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 128
    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Landroidx/media2/exoplayer/external/source/ExtractorMediaSource;

    move-result-object v1

    .line 125
    return-object v1

    .line 130
    .end local v0    # "callbackMediaItem":Landroidx/media2/common/CallbackMediaItem;
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public static getAudioAttributes(Landroidx/media/AudioAttributesCompat;)Landroidx/media2/exoplayer/external/audio/AudioAttributes;
    .locals 2
    .param p0, "audioAttributesCompat"    # Landroidx/media/AudioAttributesCompat;

    .line 136
    new-instance v0, Landroidx/media2/exoplayer/external/audio/AudioAttributes$Builder;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/audio/AudioAttributes$Builder;-><init>()V

    .line 137
    invoke-virtual {p0}, Landroidx/media/AudioAttributesCompat;->getContentType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/audio/AudioAttributes$Builder;->setContentType(I)Landroidx/media2/exoplayer/external/audio/AudioAttributes$Builder;

    move-result-object v0

    .line 138
    invoke-virtual {p0}, Landroidx/media/AudioAttributesCompat;->getFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/audio/AudioAttributes$Builder;->setFlags(I)Landroidx/media2/exoplayer/external/audio/AudioAttributes$Builder;

    move-result-object v0

    .line 139
    invoke-virtual {p0}, Landroidx/media/AudioAttributesCompat;->getUsage()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/audio/AudioAttributes$Builder;->setUsage(I)Landroidx/media2/exoplayer/external/audio/AudioAttributes$Builder;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/audio/AudioAttributes$Builder;->build()Landroidx/media2/exoplayer/external/audio/AudioAttributes;

    move-result-object v0

    .line 136
    return-object v0
.end method

.method public static getAudioAttributesCompat(Landroidx/media2/exoplayer/external/audio/AudioAttributes;)Landroidx/media/AudioAttributesCompat;
    .locals 2
    .param p0, "audioAttributes"    # Landroidx/media2/exoplayer/external/audio/AudioAttributes;

    .line 145
    new-instance v0, Landroidx/media/AudioAttributesCompat$Builder;

    invoke-direct {v0}, Landroidx/media/AudioAttributesCompat$Builder;-><init>()V

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->contentType:I

    .line 146
    invoke-virtual {v0, v1}, Landroidx/media/AudioAttributesCompat$Builder;->setContentType(I)Landroidx/media/AudioAttributesCompat$Builder;

    move-result-object v0

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->flags:I

    .line 147
    invoke-virtual {v0, v1}, Landroidx/media/AudioAttributesCompat$Builder;->setFlags(I)Landroidx/media/AudioAttributesCompat$Builder;

    move-result-object v0

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->usage:I

    .line 148
    invoke-virtual {v0, v1}, Landroidx/media/AudioAttributesCompat$Builder;->setUsage(I)Landroidx/media/AudioAttributesCompat$Builder;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Landroidx/media/AudioAttributesCompat$Builder;->build()Landroidx/media/AudioAttributesCompat;

    move-result-object v0

    .line 145
    return-object v0
.end method

.method public static getError(Landroidx/media2/exoplayer/external/ExoPlaybackException;)I
    .locals 2
    .param p0, "exception"    # Landroidx/media2/exoplayer/external/ExoPlaybackException;

    .line 177
    iget v0, p0, Landroidx/media2/exoplayer/external/ExoPlaybackException;->type:I

    if-nez v0, :cond_3

    .line 178
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->getSourceException()Ljava/io/IOException;

    move-result-object v0

    .line 179
    .local v0, "sourceException":Ljava/io/IOException;
    instance-of v1, v0, Landroidx/media2/exoplayer/external/ParserException;

    if-eqz v1, :cond_0

    .line 180
    const/16 v1, -0x3ef

    return v1

    .line 182
    :cond_0
    instance-of v1, v0, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;

    if-eqz v1, :cond_2

    .line 183
    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/net/SocketTimeoutException;

    if-eqz v1, :cond_1

    .line 184
    const/16 v1, -0x6e

    return v1

    .line 183
    :cond_1
    goto :goto_0

    .line 182
    :cond_2
    nop

    .line 186
    :goto_0
    const/16 v1, -0x3ec

    return v1

    .line 189
    .end local v0    # "sourceException":Ljava/io/IOException;
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public static getExoPlayerTrackType(I)I
    .locals 1
    .param p0, "trackType"    # I

    .line 194
    packed-switch p0, :pswitch_data_0

    .line 205
    :pswitch_0
    const/4 v0, -0x1

    return v0

    .line 202
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 200
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 196
    :pswitch_3
    const/4 v0, 0x1

    return v0

    .line 198
    :pswitch_4
    const/4 v0, 0x2

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getMediaFormat(Landroidx/media2/exoplayer/external/Format;)Landroid/media/MediaFormat;
    .locals 10
    .param p0, "format"    # Landroidx/media2/exoplayer/external/Format;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 232
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 233
    .local v0, "mediaFormat":Landroid/media/MediaFormat;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    .line 234
    .local v1, "mimeType":Ljava/lang/String;
    const-string v2, "mime"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v2

    .line 236
    .local v2, "trackType":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 237
    const-string v3, "channel-count"

    iget v4, p0, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    invoke-virtual {v0, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 238
    const-string v3, "sample-rate"

    iget v4, p0, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    invoke-virtual {v0, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 239
    iget-object v3, p0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 240
    const-string v3, "language"

    iget-object v4, p0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 239
    :cond_0
    goto/16 :goto_7

    .line 242
    :cond_1
    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    .line 243
    const-string/jumbo v3, "width"

    iget v4, p0, Landroidx/media2/exoplayer/external/Format;->width:I

    invoke-static {v0, v3, v4}, Landroidx/media2/exoplayer/external/mediacodec/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 244
    const-string v3, "height"

    iget v4, p0, Landroidx/media2/exoplayer/external/Format;->height:I

    invoke-static {v0, v3, v4}, Landroidx/media2/exoplayer/external/mediacodec/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 245
    const-string v3, "frame-rate"

    iget v4, p0, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    invoke-static {v0, v3, v4}, Landroidx/media2/exoplayer/external/mediacodec/MediaFormatUtil;->maybeSetFloat(Landroid/media/MediaFormat;Ljava/lang/String;F)V

    .line 247
    const-string v3, "rotation-degrees"

    iget v4, p0, Landroidx/media2/exoplayer/external/Format;->rotationDegrees:I

    invoke-static {v0, v3, v4}, Landroidx/media2/exoplayer/external/mediacodec/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 249
    iget-object v3, p0, Landroidx/media2/exoplayer/external/Format;->colorInfo:Landroidx/media2/exoplayer/external/video/ColorInfo;

    invoke-static {v0, v3}, Landroidx/media2/exoplayer/external/mediacodec/MediaFormatUtil;->maybeSetColorInfo(Landroid/media/MediaFormat;Landroidx/media2/exoplayer/external/video/ColorInfo;)V

    goto/16 :goto_7

    .line 250
    :cond_2
    const/4 v5, 0x3

    if-ne v2, v5, :cond_c

    .line 251
    iget v5, p0, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    const/4 v6, 0x4

    const/4 v7, 0x0

    if-ne v5, v6, :cond_3

    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    .line 252
    .local v5, "isAutoselect":Z
    :goto_0
    iget v6, p0, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    if-ne v6, v3, :cond_4

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    .line 253
    .local v6, "isDefault":Z
    :goto_1
    iget v8, p0, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    if-ne v8, v4, :cond_5

    const/4 v4, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    .line 254
    .local v4, "isForced":Z
    :goto_2
    const-string v8, "is-autoselect"

    if-eqz v5, :cond_6

    const/4 v9, 0x1

    goto :goto_3

    :cond_6
    const/4 v9, 0x0

    :goto_3
    invoke-virtual {v0, v8, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 255
    const-string v8, "is-default"

    if-eqz v6, :cond_7

    const/4 v9, 0x1

    goto :goto_4

    :cond_7
    const/4 v9, 0x0

    :goto_4
    invoke-virtual {v0, v8, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 256
    const-string v8, "is-forced-subtitle"

    if-eqz v4, :cond_8

    goto :goto_5

    :cond_8
    const/4 v3, 0x0

    :goto_5
    invoke-virtual {v0, v8, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 257
    iget-object v3, p0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    if-nez v3, :cond_9

    .line 258
    const-string v3, "language"

    const-string/jumbo v7, "und"

    invoke-virtual {v0, v3, v7}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 260
    :cond_9
    const-string v3, "language"

    iget-object v7, p0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    invoke-virtual {v0, v3, v7}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :goto_6
    const-string v3, "application/cea-608"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 264
    const-string v3, "mime"

    const-string v7, "text/cea-608"

    invoke-virtual {v0, v3, v7}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 265
    :cond_a
    const-string v3, "application/cea-708"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 266
    const-string v3, "mime"

    const-string v7, "text/cea-708"

    invoke-virtual {v0, v3, v7}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 265
    :cond_b
    goto :goto_7

    .line 250
    .end local v4    # "isForced":Z
    .end local v5    # "isAutoselect":Z
    .end local v6    # "isDefault":Z
    :cond_c
    nop

    .line 269
    :goto_7
    return-object v0
.end method

.method public static getPlaybackParameters(Landroidx/media2/player/PlaybackParams;)Landroidx/media2/exoplayer/external/PlaybackParameters;
    .locals 5
    .param p0, "playbackParams2"    # Landroidx/media2/player/PlaybackParams;

    .line 154
    invoke-virtual {p0}, Landroidx/media2/player/PlaybackParams;->getSpeed()Ljava/lang/Float;

    move-result-object v0

    .line 155
    .local v0, "speed":Ljava/lang/Float;
    invoke-virtual {p0}, Landroidx/media2/player/PlaybackParams;->getPitch()Ljava/lang/Float;

    move-result-object v1

    .line 156
    .local v1, "pitch":Ljava/lang/Float;
    new-instance v2, Landroidx/media2/exoplayer/external/PlaybackParameters;

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    goto :goto_0

    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    nop

    :cond_1
    invoke-direct {v2, v4, v3}, Landroidx/media2/exoplayer/external/PlaybackParameters;-><init>(FF)V

    return-object v2
.end method

.method public static getSeekParameters(I)Landroidx/media2/exoplayer/external/SeekParameters;
    .locals 1
    .param p0, "seekMode"    # I

    .line 161
    packed-switch p0, :pswitch_data_0

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 163
    :pswitch_0
    sget-object v0, Landroidx/media2/exoplayer/external/SeekParameters;->EXACT:Landroidx/media2/exoplayer/external/SeekParameters;

    return-object v0

    .line 165
    :pswitch_1
    sget-object v0, Landroidx/media2/exoplayer/external/SeekParameters;->CLOSEST_SYNC:Landroidx/media2/exoplayer/external/SeekParameters;

    return-object v0

    .line 167
    :pswitch_2
    sget-object v0, Landroidx/media2/exoplayer/external/SeekParameters;->NEXT_SYNC:Landroidx/media2/exoplayer/external/SeekParameters;

    return-object v0

    .line 169
    :pswitch_3
    sget-object v0, Landroidx/media2/exoplayer/external/SeekParameters;->PREVIOUS_SYNC:Landroidx/media2/exoplayer/external/SeekParameters;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getTrackType(I)I
    .locals 1
    .param p0, "exoPlayerTrackType"    # I

    .line 211
    packed-switch p0, :pswitch_data_0

    .line 225
    const/4 v0, 0x0

    return v0

    .line 219
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 217
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 215
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 213
    :pswitch_3
    const/4 v0, 0x2

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
