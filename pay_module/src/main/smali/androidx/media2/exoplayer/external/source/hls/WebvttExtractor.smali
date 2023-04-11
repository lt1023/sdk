.class public final Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;
.super Ljava/lang/Object;
.source "WebvttExtractor.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/Extractor;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final HEADER_MAX_LENGTH:I = 0x9

.field private static final HEADER_MIN_LENGTH:I = 0x6

.field private static final LOCAL_TIMESTAMP:Ljava/util/regex/Pattern;

.field private static final MEDIA_TIMESTAMP:Ljava/util/regex/Pattern;


# instance fields
.field private final language:Ljava/lang/String;

.field private output:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

.field private sampleData:[B

.field private final sampleDataWrapper:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private sampleSize:I

.field private final timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-string v0, "LOCAL:([^,]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->LOCAL_TIMESTAMP:Ljava/util/regex/Pattern;

    .line 54
    const-string v0, "MPEGTS:(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->MEDIA_TIMESTAMP:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/util/TimestampAdjuster;)V
    .locals 1
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "timestampAdjuster"    # Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->language:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    .line 70
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->sampleDataWrapper:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 71
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->sampleData:[B

    .line 72
    return-void
.end method

.method private buildTrackOutput(J)Landroidx/media2/exoplayer/external/extractor/TrackOutput;
    .locals 10
    .param p1, "subsampleOffsetUs"    # J

    .line 185
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->output:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->track(II)Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    move-result-object v0

    .line 186
    .local v0, "trackOutput":Landroidx/media2/exoplayer/external/extractor/TrackOutput;
    const-string v2, "text/vtt"

    iget-object v6, p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->language:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-wide v8, p1

    invoke-static/range {v1 .. v9}, Landroidx/media2/exoplayer/external/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;J)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->format(Landroidx/media2/exoplayer/external/Format;)V

    .line 188
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->output:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->endTracks()V

    .line 189
    return-object v0
.end method

.method private processSample()V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 138
    move-object/from16 v0, p0

    new-instance v1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->sampleData:[B

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>([B)V

    .line 141
    .local v1, "webvttData":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    invoke-static {v1}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttParserUtil;->validateWebvttHeaderLine(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V

    .line 144
    const-wide/16 v2, 0x0

    .line 145
    .local v2, "vttTimestampUs":J
    const-wide/16 v4, 0x0

    .line 149
    .local v4, "tsTimestampUs":J
    :goto_0
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    .local v7, "line":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v8, 0x1

    if-nez v6, :cond_5

    .line 150
    const-string v6, "X-TIMESTAMP-MAP"

    invoke-virtual {v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 151
    sget-object v6, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->LOCAL_TIMESTAMP:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 152
    .local v6, "localTimestampMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-nez v9, :cond_1

    .line 153
    new-instance v8, Landroidx/media2/exoplayer/external/ParserException;

    const-string v9, "X-TIMESTAMP-MAP doesn\'t contain local timestamp: "

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_0
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v9, v10

    :goto_1
    invoke-direct {v8, v9}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 155
    :cond_1
    sget-object v9, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->MEDIA_TIMESTAMP:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 156
    .local v9, "mediaTimestampMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-nez v10, :cond_3

    .line 157
    new-instance v8, Landroidx/media2/exoplayer/external/ParserException;

    const-string v10, "X-TIMESTAMP-MAP doesn\'t contain media timestamp: "

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v10, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    :cond_2
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v10, v11

    :goto_2
    invoke-direct {v8, v10}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 159
    :cond_3
    invoke-virtual {v6, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttParserUtil;->parseTimestampUs(Ljava/lang/String;)J

    move-result-wide v2

    .line 160
    invoke-virtual {v9, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->ptsToUs(J)J

    move-result-wide v4

    .line 161
    .end local v6    # "localTimestampMatcher":Ljava/util/regex/Matcher;
    .end local v9    # "mediaTimestampMatcher":Ljava/util/regex/Matcher;
    goto :goto_0

    .line 150
    :cond_4
    goto :goto_0

    .line 165
    :cond_5
    invoke-static {v1}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttParserUtil;->findNextCueHeader(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 166
    .local v6, "cueHeaderMatcher":Ljava/util/regex/Matcher;
    if-nez v6, :cond_6

    .line 168
    const-wide/16 v8, 0x0

    invoke-direct {v0, v8, v9}, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->buildTrackOutput(J)Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 169
    return-void

    .line 172
    :cond_6
    invoke-virtual {v6, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttParserUtil;->parseTimestampUs(Ljava/lang/String;)J

    move-result-wide v8

    .line 173
    .local v8, "firstCueTimeUs":J
    iget-object v10, v0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    add-long v11, v8, v4

    sub-long/2addr v11, v2

    .line 174
    invoke-static {v11, v12}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->usToPts(J)J

    move-result-wide v11

    .line 173
    invoke-virtual {v10, v11, v12}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v10

    .line 175
    .local v10, "sampleTimeUs":J
    sub-long v14, v10, v8

    .line 177
    .local v14, "subsampleOffsetUs":J
    invoke-direct {v0, v14, v15}, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->buildTrackOutput(J)Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    move-result-object v12

    .line 179
    .local v12, "trackOutput":Landroidx/media2/exoplayer/external/extractor/TrackOutput;
    iget-object v13, v0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->sampleDataWrapper:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    move-object/from16 v20, v1

    .end local v1    # "webvttData":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .local v20, "webvttData":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->sampleData:[B

    move-wide/from16 v21, v2

    .end local v2    # "vttTimestampUs":J
    .local v21, "vttTimestampUs":J
    iget v2, v0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->sampleSize:I

    invoke-virtual {v13, v1, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset([BI)V

    .line 180
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->sampleDataWrapper:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget v2, v0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->sampleSize:I

    invoke-interface {v12, v1, v2}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 181
    const/16 v16, 0x1

    iget v1, v0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->sampleSize:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v13, v12

    move-wide v2, v14

    .end local v14    # "subsampleOffsetUs":J
    .local v2, "subsampleOffsetUs":J
    move-wide v14, v10

    move/from16 v17, v1

    invoke-interface/range {v13 .. v19}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;)V

    .line 182
    return-void
.end method


# virtual methods
.method public init(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;)V
    .locals 3
    .param p1, "output"    # Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    .line 97
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->output:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    .line 98
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/SeekMap$Unseekable;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p1, v0}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->seekMap(Landroidx/media2/exoplayer/external/extractor/SeekMap;)V

    .line 99
    return-void
.end method

.method public read(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;)I
    .locals 5
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Landroidx/media2/exoplayer/external/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 115
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    long-to-int v1, v0

    .line 118
    .local v1, "currentFileSize":I
    iget v0, p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->sampleSize:I

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->sampleData:[B

    array-length v3, v2

    const/4 v4, -0x1

    if-ne v0, v3, :cond_1

    .line 119
    nop

    .line 120
    if-eq v1, v4, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    array-length v0, v2

    :goto_0
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    .line 119
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->sampleData:[B

    goto :goto_1

    .line 118
    :cond_1
    nop

    .line 124
    :goto_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->sampleData:[B

    iget v2, p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->sampleSize:I

    array-length v3, v0

    sub-int/2addr v3, v2

    invoke-interface {p1, v0, v2, v3}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->read([BII)I

    move-result v0

    .line 125
    .local v0, "bytesRead":I
    if-eq v0, v4, :cond_4

    .line 126
    iget v2, p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->sampleSize:I

    add-int/2addr v2, v0

    iput v2, p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->sampleSize:I

    .line 127
    if-eq v1, v4, :cond_3

    iget v2, p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->sampleSize:I

    if-eq v2, v1, :cond_2

    goto :goto_2

    :cond_2
    goto :goto_3

    .line 128
    :cond_3
    :goto_2
    const/4 v2, 0x0

    return v2

    .line 125
    :cond_4
    nop

    .line 133
    :goto_3
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->processSample()V

    .line 134
    return v4
.end method

.method public release()V
    .locals 0

    .line 110
    return-void
.end method

.method public seek(JJ)V
    .locals 1
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .line 104
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public sniff(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z
    .locals 4
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->sampleData:[B

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BIIZ)Z

    .line 81
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->sampleDataWrapper:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->sampleData:[B

    invoke-virtual {v0, v3, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset([BI)V

    .line 82
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->sampleDataWrapper:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttParserUtil;->isWebvttHeaderLine(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const/4 v0, 0x1

    return v0

    .line 86
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->sampleData:[B

    const/4 v3, 0x3

    invoke-interface {p1, v0, v1, v3, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BIIZ)Z

    .line 91
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->sampleDataWrapper:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->sampleData:[B

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset([BI)V

    .line 92
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->sampleDataWrapper:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttParserUtil;->isWebvttHeaderLine(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Z

    move-result v0

    return v0
.end method
