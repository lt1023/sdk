.class public final Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;
.super Ljava/lang/Object;
.source "DefaultHlsExtractorFactory.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final AAC_FILE_EXTENSION:Ljava/lang/String; = ".aac"

.field public static final AC3_FILE_EXTENSION:Ljava/lang/String; = ".ac3"

.field public static final AC4_FILE_EXTENSION:Ljava/lang/String; = ".ac4"

.field public static final CMF_FILE_EXTENSION_PREFIX:Ljava/lang/String; = ".cmf"

.field public static final EC3_FILE_EXTENSION:Ljava/lang/String; = ".ec3"

.field public static final M4_FILE_EXTENSION_PREFIX:Ljava/lang/String; = ".m4"

.field public static final MP3_FILE_EXTENSION:Ljava/lang/String; = ".mp3"

.field public static final MP4_FILE_EXTENSION:Ljava/lang/String; = ".mp4"

.field public static final MP4_FILE_EXTENSION_PREFIX:Ljava/lang/String; = ".mp4"

.field public static final VTT_FILE_EXTENSION:Ljava/lang/String; = ".vtt"

.field public static final WEBVTT_FILE_EXTENSION:Ljava/lang/String; = ".webvtt"


# instance fields
.field private final exposeCea608WhenMissingDeclarations:Z

.field private final payloadReaderFactoryFlags:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 72
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;-><init>(IZ)V

    .line 73
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0
    .param p1, "payloadReaderFactoryFlags"    # I
    .param p2, "exposeCea608WhenMissingDeclarations"    # Z

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput p1, p0, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->payloadReaderFactoryFlags:I

    .line 88
    iput-boolean p2, p0, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->exposeCea608WhenMissingDeclarations:Z

    .line 89
    return-void
.end method

.method private static buildResult(Landroidx/media2/exoplayer/external/extractor/Extractor;)Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory$Result;
    .locals 3
    .param p0, "extractor"    # Landroidx/media2/exoplayer/external/extractor/Extractor;

    .line 304
    new-instance v0, Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory$Result;

    instance-of v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;

    if-nez v1, :cond_1

    instance-of v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;

    if-nez v1, :cond_1

    instance-of v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Extractor;

    if-nez v1, :cond_1

    instance-of v1, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 310
    :goto_1
    invoke-static {p0}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->isReusable(Landroidx/media2/exoplayer/external/extractor/Extractor;)Z

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory$Result;-><init>(Landroidx/media2/exoplayer/external/extractor/Extractor;ZZ)V

    .line 304
    return-object v0
.end method

.method private static buildResultForSameExtractorType(Landroidx/media2/exoplayer/external/extractor/Extractor;Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/util/TimestampAdjuster;)Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory$Result;
    .locals 2
    .param p0, "previousExtractor"    # Landroidx/media2/exoplayer/external/extractor/Extractor;
    .param p1, "format"    # Landroidx/media2/exoplayer/external/Format;
    .param p2, "timestampAdjuster"    # Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    .line 288
    instance-of v0, p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;

    if-eqz v0, :cond_0

    .line 289
    new-instance v0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;

    iget-object v1, p1, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;-><init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/util/TimestampAdjuster;)V

    invoke-static {v0}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->buildResult(Landroidx/media2/exoplayer/external/extractor/Extractor;)Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory$Result;

    move-result-object v0

    return-object v0

    .line 290
    :cond_0
    instance-of v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;

    if-eqz v0, :cond_1

    .line 291
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;-><init>()V

    invoke-static {v0}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->buildResult(Landroidx/media2/exoplayer/external/extractor/Extractor;)Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory$Result;

    move-result-object v0

    return-object v0

    .line 292
    :cond_1
    instance-of v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;

    if-eqz v0, :cond_2

    .line 293
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;-><init>()V

    invoke-static {v0}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->buildResult(Landroidx/media2/exoplayer/external/extractor/Extractor;)Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory$Result;

    move-result-object v0

    return-object v0

    .line 294
    :cond_2
    instance-of v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Extractor;

    if-eqz v0, :cond_3

    .line 295
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Extractor;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Extractor;-><init>()V

    invoke-static {v0}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->buildResult(Landroidx/media2/exoplayer/external/extractor/Extractor;)Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory$Result;

    move-result-object v0

    return-object v0

    .line 296
    :cond_3
    instance-of v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;

    if-eqz v0, :cond_4

    .line 297
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;-><init>()V

    invoke-static {v0}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->buildResult(Landroidx/media2/exoplayer/external/extractor/Extractor;)Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory$Result;

    move-result-object v0

    return-object v0

    .line 299
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method private createExtractorByFileExtension(Landroid/net/Uri;Landroidx/media2/exoplayer/external/Format;Ljava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;Landroidx/media2/exoplayer/external/util/TimestampAdjuster;)Landroidx/media2/exoplayer/external/extractor/Extractor;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "format"    # Landroidx/media2/exoplayer/external/Format;
    .param p4, "drmInitData"    # Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .param p5, "timestampAdjuster"    # Landroidx/media2/exoplayer/external/util/TimestampAdjuster;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroidx/media2/exoplayer/external/Format;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            "Landroidx/media2/exoplayer/external/util/TimestampAdjuster;",
            ")",
            "Landroidx/media2/exoplayer/external/extractor/Extractor;"
        }
    .end annotation

    .line 196
    .local p3, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/Format;>;"
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "lastPathSegment":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 198
    const-string v0, ""

    goto :goto_0

    .line 197
    :cond_0
    nop

    .line 200
    :goto_0
    const-string v1, "text/vtt"

    iget-object v2, p2, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, ".webvtt"

    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, ".vtt"

    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_3

    .line 204
    :cond_1
    const-string v1, ".aac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 205
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;-><init>()V

    return-object v1

    .line 206
    :cond_2
    const-string v1, ".ac3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, ".ec3"

    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    .line 209
    :cond_3
    const-string v1, ".ac4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 210
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Extractor;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Extractor;-><init>()V

    return-object v1

    .line 211
    :cond_4
    const-string v1, ".mp3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 212
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;-><init>(IJ)V

    return-object v1

    .line 213
    :cond_5
    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, ".m4"

    .line 214
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, ".mp4"

    .line 215
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, ".cmf"

    .line 216
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    .line 220
    :cond_6
    iget v1, p0, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->payloadReaderFactoryFlags:I

    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->exposeCea608WhenMissingDeclarations:Z

    invoke-static {v1, v2, p2, p3, p5}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->createTsExtractor(IZLandroidx/media2/exoplayer/external/Format;Ljava/util/List;Landroidx/media2/exoplayer/external/util/TimestampAdjuster;)Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    move-result-object v1

    return-object v1

    .line 215
    :cond_7
    goto :goto_1

    .line 214
    :cond_8
    goto :goto_1

    .line 213
    :cond_9
    nop

    .line 217
    :goto_1
    invoke-static {p5, p4, p3}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->createFragmentedMp4Extractor(Landroidx/media2/exoplayer/external/util/TimestampAdjuster;Landroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/List;)Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;

    move-result-object v1

    return-object v1

    .line 206
    :cond_a
    nop

    .line 208
    :goto_2
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;-><init>()V

    return-object v1

    .line 201
    :cond_b
    goto :goto_3

    .line 200
    :cond_c
    nop

    .line 203
    :goto_3
    new-instance v1, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;

    iget-object v2, p2, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    invoke-direct {v1, v2, p5}, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;-><init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/util/TimestampAdjuster;)V

    return-object v1
.end method

.method private static createFragmentedMp4Extractor(Landroidx/media2/exoplayer/external/util/TimestampAdjuster;Landroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/List;)Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;
    .locals 7
    .param p0, "timestampAdjuster"    # Landroidx/media2/exoplayer/external/util/TimestampAdjuster;
    .param p1, "drmInitData"    # Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/util/TimestampAdjuster;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;)",
            "Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;"
        }
    .end annotation

    .line 278
    .local p2, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/Format;>;"
    new-instance v6, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;

    .line 283
    if-eqz p2, :cond_0

    move-object v5, p2

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v5, v0

    :goto_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;-><init>(ILandroidx/media2/exoplayer/external/util/TimestampAdjuster;Landroidx/media2/exoplayer/external/extractor/mp4/Track;Landroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/List;)V

    .line 278
    return-object v6
.end method

.method private static createTsExtractor(IZLandroidx/media2/exoplayer/external/Format;Ljava/util/List;Landroidx/media2/exoplayer/external/util/TimestampAdjuster;)Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;
    .locals 5
    .param p0, "userProvidedPayloadReaderFactoryFlags"    # I
    .param p1, "exposeCea608WhenMissingDeclarations"    # Z
    .param p2, "format"    # Landroidx/media2/exoplayer/external/Format;
    .param p4, "timestampAdjuster"    # Landroidx/media2/exoplayer/external/util/TimestampAdjuster;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Landroidx/media2/exoplayer/external/Format;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;",
            "Landroidx/media2/exoplayer/external/util/TimestampAdjuster;",
            ")",
            "Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;"
        }
    .end annotation

    .line 236
    .local p3, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/Format;>;"
    or-int/lit8 v0, p0, 0x10

    .line 239
    .local v0, "payloadReaderFactoryFlags":I
    if-eqz p3, :cond_0

    .line 241
    or-int/lit8 v0, v0, 0x20

    goto :goto_0

    .line 242
    :cond_0
    if-eqz p1, :cond_1

    .line 245
    const-string v1, "application/cea-608"

    const/4 v2, 0x0

    .line 247
    const/4 v3, 0x0

    invoke-static {v3, v1, v2, v3}, Landroidx/media2/exoplayer/external/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    .line 246
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    goto :goto_0

    .line 253
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    .line 255
    :goto_0
    iget-object v1, p2, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    .line 256
    .local v1, "codecs":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 260
    const-string v2, "audio/mp4a-latm"

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/MimeTypes;->getAudioMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 261
    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 260
    :cond_2
    nop

    .line 263
    :goto_1
    const-string/jumbo v2, "video/avc"

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/MimeTypes;->getVideoMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 264
    or-int/lit8 v0, v0, 0x4

    goto :goto_2

    .line 263
    :cond_3
    goto :goto_2

    .line 256
    :cond_4
    nop

    .line 268
    :goto_2
    new-instance v2, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    new-instance v3, Landroidx/media2/exoplayer/external/extractor/ts/DefaultTsPayloadReaderFactory;

    invoke-direct {v3, v0, p3}, Landroidx/media2/exoplayer/external/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(ILjava/util/List;)V

    const/4 v4, 0x2

    invoke-direct {v2, v4, p4, v3}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;-><init>(ILandroidx/media2/exoplayer/external/util/TimestampAdjuster;Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$Factory;)V

    return-object v2
.end method

.method private static isReusable(Landroidx/media2/exoplayer/external/extractor/Extractor;)Z
    .locals 1
    .param p0, "previousExtractor"    # Landroidx/media2/exoplayer/external/extractor/Extractor;

    .line 327
    instance-of v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    if-nez v0, :cond_1

    instance-of v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static sniffQuietly(Landroidx/media2/exoplayer/external/extractor/Extractor;Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z
    .locals 2
    .param p0, "extractor"    # Landroidx/media2/exoplayer/external/extractor/Extractor;
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 315
    const/4 v0, 0x0

    .line 317
    .local v0, "result":Z
    :try_start_0
    invoke-interface {p0, p1}, Landroidx/media2/exoplayer/external/extractor/Extractor;->sniff(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 321
    :goto_0
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    .line 322
    goto :goto_1

    .line 321
    :catchall_0
    move-exception v1

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    throw v1

    .line 318
    :catch_0
    move-exception v1

    goto :goto_0

    .line 323
    :goto_1
    return v0
.end method


# virtual methods
.method public createExtractor(Landroidx/media2/exoplayer/external/extractor/Extractor;Landroid/net/Uri;Landroidx/media2/exoplayer/external/Format;Ljava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;Landroidx/media2/exoplayer/external/util/TimestampAdjuster;Ljava/util/Map;Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory$Result;
    .locals 6
    .param p1, "previousExtractor"    # Landroidx/media2/exoplayer/external/extractor/Extractor;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "format"    # Landroidx/media2/exoplayer/external/Format;
    .param p5, "drmInitData"    # Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .param p6, "timestampAdjuster"    # Landroidx/media2/exoplayer/external/util/TimestampAdjuster;
    .param p8, "extractorInput"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/extractor/Extractor;",
            "Landroid/net/Uri;",
            "Landroidx/media2/exoplayer/external/Format;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            "Landroidx/media2/exoplayer/external/util/TimestampAdjuster;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroidx/media2/exoplayer/external/extractor/ExtractorInput;",
            ")",
            "Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory$Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    .local p4, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/Format;>;"
    .local p7, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz p1, :cond_3

    .line 105
    invoke-static {p1}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->isReusable(Landroidx/media2/exoplayer/external/extractor/Extractor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-static {p1}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->buildResult(Landroidx/media2/exoplayer/external/extractor/Extractor;)Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory$Result;

    move-result-object v0

    return-object v0

    .line 108
    :cond_0
    nop

    .line 109
    invoke-static {p1, p3, p6}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->buildResultForSameExtractorType(Landroidx/media2/exoplayer/external/extractor/Extractor;Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/util/TimestampAdjuster;)Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory$Result;

    move-result-object v0

    .line 110
    .local v0, "result":Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory$Result;
    if-nez v0, :cond_2

    .line 111
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unexpected previousExtractor type: "

    .line 112
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_0
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    :cond_2
    goto :goto_1

    .line 103
    .end local v0    # "result":Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory$Result;
    :cond_3
    nop

    .line 118
    :goto_1
    nop

    .line 119
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->createExtractorByFileExtension(Landroid/net/Uri;Landroidx/media2/exoplayer/external/Format;Ljava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;Landroidx/media2/exoplayer/external/util/TimestampAdjuster;)Landroidx/media2/exoplayer/external/extractor/Extractor;

    move-result-object v0

    .line 121
    .local v0, "extractorByFileExtension":Landroidx/media2/exoplayer/external/extractor/Extractor;
    invoke-interface {p8}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    .line 122
    invoke-static {v0, p8}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->sniffQuietly(Landroidx/media2/exoplayer/external/extractor/Extractor;Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 123
    invoke-static {v0}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->buildResult(Landroidx/media2/exoplayer/external/extractor/Extractor;)Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory$Result;

    move-result-object v1

    return-object v1

    .line 129
    :cond_4
    instance-of v1, v0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;

    if-nez v1, :cond_6

    .line 130
    new-instance v1, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;

    iget-object v2, p3, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    invoke-direct {v1, v2, p6}, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;-><init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/util/TimestampAdjuster;)V

    .line 131
    .local v1, "webvttExtractor":Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;
    invoke-static {v1, p8}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->sniffQuietly(Landroidx/media2/exoplayer/external/extractor/Extractor;Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 132
    invoke-static {v1}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->buildResult(Landroidx/media2/exoplayer/external/extractor/Extractor;)Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory$Result;

    move-result-object v2

    return-object v2

    .line 131
    :cond_5
    goto :goto_2

    .line 129
    .end local v1    # "webvttExtractor":Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;
    :cond_6
    nop

    .line 136
    :goto_2
    instance-of v1, v0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;

    if-nez v1, :cond_8

    .line 137
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;-><init>()V

    .line 138
    .local v1, "adtsExtractor":Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;
    invoke-static {v1, p8}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->sniffQuietly(Landroidx/media2/exoplayer/external/extractor/Extractor;Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 139
    invoke-static {v1}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->buildResult(Landroidx/media2/exoplayer/external/extractor/Extractor;)Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory$Result;

    move-result-object v2

    return-object v2

    .line 138
    :cond_7
    goto :goto_3

    .line 136
    .end local v1    # "adtsExtractor":Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;
    :cond_8
    nop

    .line 143
    :goto_3
    instance-of v1, v0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;

    if-nez v1, :cond_a

    .line 144
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;-><init>()V

    .line 145
    .local v1, "ac3Extractor":Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;
    invoke-static {v1, p8}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->sniffQuietly(Landroidx/media2/exoplayer/external/extractor/Extractor;Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 146
    invoke-static {v1}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->buildResult(Landroidx/media2/exoplayer/external/extractor/Extractor;)Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory$Result;

    move-result-object v2

    return-object v2

    .line 145
    :cond_9
    goto :goto_4

    .line 143
    .end local v1    # "ac3Extractor":Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;
    :cond_a
    nop

    .line 150
    :goto_4
    instance-of v1, v0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Extractor;

    if-nez v1, :cond_c

    .line 151
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Extractor;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Extractor;-><init>()V

    .line 152
    .local v1, "ac4Extractor":Landroidx/media2/exoplayer/external/extractor/ts/Ac4Extractor;
    invoke-static {v1, p8}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->sniffQuietly(Landroidx/media2/exoplayer/external/extractor/Extractor;Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 153
    invoke-static {v1}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->buildResult(Landroidx/media2/exoplayer/external/extractor/Extractor;)Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory$Result;

    move-result-object v2

    return-object v2

    .line 152
    :cond_b
    goto :goto_5

    .line 150
    .end local v1    # "ac4Extractor":Landroidx/media2/exoplayer/external/extractor/ts/Ac4Extractor;
    :cond_c
    nop

    .line 157
    :goto_5
    instance-of v1, v0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;

    if-nez v1, :cond_e

    .line 158
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;-><init>(IJ)V

    .line 160
    .local v1, "mp3Extractor":Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;
    invoke-static {v1, p8}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->sniffQuietly(Landroidx/media2/exoplayer/external/extractor/Extractor;Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 161
    invoke-static {v1}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->buildResult(Landroidx/media2/exoplayer/external/extractor/Extractor;)Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory$Result;

    move-result-object v2

    return-object v2

    .line 160
    :cond_d
    goto :goto_6

    .line 157
    .end local v1    # "mp3Extractor":Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;
    :cond_e
    nop

    .line 165
    :goto_6
    instance-of v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;

    if-nez v1, :cond_10

    .line 166
    nop

    .line 167
    invoke-static {p6, p5, p4}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->createFragmentedMp4Extractor(Landroidx/media2/exoplayer/external/util/TimestampAdjuster;Landroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/List;)Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;

    move-result-object v1

    .line 168
    .local v1, "fragmentedMp4Extractor":Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;
    invoke-static {v1, p8}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->sniffQuietly(Landroidx/media2/exoplayer/external/extractor/Extractor;Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 169
    invoke-static {v1}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->buildResult(Landroidx/media2/exoplayer/external/extractor/Extractor;)Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory$Result;

    move-result-object v2

    return-object v2

    .line 168
    :cond_f
    goto :goto_7

    .line 165
    .end local v1    # "fragmentedMp4Extractor":Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;
    :cond_10
    nop

    .line 173
    :goto_7
    instance-of v1, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    if-nez v1, :cond_12

    .line 174
    iget v1, p0, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->payloadReaderFactoryFlags:I

    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->exposeCea608WhenMissingDeclarations:Z

    .line 175
    invoke-static {v1, v2, p3, p4, p6}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->createTsExtractor(IZLandroidx/media2/exoplayer/external/Format;Ljava/util/List;Landroidx/media2/exoplayer/external/util/TimestampAdjuster;)Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    move-result-object v1

    .line 181
    .local v1, "tsExtractor":Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;
    invoke-static {v1, p8}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->sniffQuietly(Landroidx/media2/exoplayer/external/extractor/Extractor;Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 182
    invoke-static {v1}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->buildResult(Landroidx/media2/exoplayer/external/extractor/Extractor;)Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory$Result;

    move-result-object v2

    return-object v2

    .line 181
    :cond_11
    goto :goto_8

    .line 173
    .end local v1    # "tsExtractor":Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;
    :cond_12
    nop

    .line 187
    :goto_8
    invoke-static {v0}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->buildResult(Landroidx/media2/exoplayer/external/extractor/Extractor;)Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory$Result;

    move-result-object v1

    return-object v1
.end method
