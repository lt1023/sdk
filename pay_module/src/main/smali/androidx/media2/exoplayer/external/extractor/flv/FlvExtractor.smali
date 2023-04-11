.class public final Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;
.super Ljava/lang/Object;
.source "FlvExtractor.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/Extractor;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor$States;
    }
.end annotation


# static fields
.field public static final FACTORY:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

.field private static final FLV_HEADER_SIZE:I = 0x9

.field private static final FLV_TAG:I = 0x464c56

.field private static final FLV_TAG_HEADER_SIZE:I = 0xb

.field private static final STATE_READING_FLV_HEADER:I = 0x1

.field private static final STATE_READING_TAG_DATA:I = 0x4

.field private static final STATE_READING_TAG_HEADER:I = 0x3

.field private static final STATE_SKIPPING_TO_TAG_HEADER:I = 0x2

.field private static final TAG_TYPE_AUDIO:I = 0x8

.field private static final TAG_TYPE_SCRIPT_DATA:I = 0x12

.field private static final TAG_TYPE_VIDEO:I = 0x9


# instance fields
.field private audioReader:Landroidx/media2/exoplayer/external/extractor/flv/AudioTagPayloadReader;

.field private bytesToNextTagHeader:I

.field private extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

.field private final headerBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private mediaTagTimestampOffsetUs:J

.field private final metadataReader:Landroidx/media2/exoplayer/external/extractor/flv/ScriptTagPayloadReader;

.field private outputSeekMap:Z

.field private final scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private state:I

.field private final tagData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private tagDataSize:I

.field private final tagHeaderBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private tagTimestampUs:J

.field private tagType:I

.field private videoReader:Landroidx/media2/exoplayer/external/extractor/flv/VideoTagPayloadReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor$$Lambda$0;->$instance:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->FACTORY:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 93
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->headerBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 94
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->tagHeaderBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 95
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->tagData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 96
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/flv/ScriptTagPayloadReader;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/extractor/flv/ScriptTagPayloadReader;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->metadataReader:Landroidx/media2/exoplayer/external/extractor/flv/ScriptTagPayloadReader;

    .line 97
    const/4 v0, 0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->state:I

    .line 98
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->mediaTagTimestampOffsetUs:J

    .line 99
    return-void
.end method

.method private ensureReadyForMediaOutput()V
    .locals 5

    .line 296
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->outputSeekMap:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_0

    .line 297
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    new-instance v3, Landroidx/media2/exoplayer/external/extractor/SeekMap$Unseekable;

    invoke-direct {v3, v1, v2}, Landroidx/media2/exoplayer/external/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v0, v3}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->seekMap(Landroidx/media2/exoplayer/external/extractor/SeekMap;)V

    .line 298
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->outputSeekMap:Z

    goto :goto_0

    .line 296
    :cond_0
    nop

    .line 300
    :goto_0
    iget-wide v3, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->mediaTagTimestampOffsetUs:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    .line 301
    nop

    .line 302
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->metadataReader:Landroidx/media2/exoplayer/external/extractor/flv/ScriptTagPayloadReader;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/flv/ScriptTagPayloadReader;->getDurationUs()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->tagTimestampUs:J

    neg-long v0, v0

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    :goto_1
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->mediaTagTimestampOffsetUs:J

    goto :goto_2

    .line 300
    :cond_2
    nop

    .line 304
    :goto_2
    return-void
.end method

.method static final synthetic lambda$static$0$FlvExtractor()[Landroidx/media2/exoplayer/external/extractor/Extractor;
    .locals 3

    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media2/exoplayer/external/extractor/Extractor;

    new-instance v1, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private prepareTagData(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .locals 4
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 285
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->tagDataSize:I

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->tagData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->capacity()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 286
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->tagData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iget v3, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->tagDataSize:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset([BI)V

    goto :goto_0

    .line 288
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->tagData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 290
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->tagData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->tagDataSize:I

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setLimit(I)V

    .line 291
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->tagData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->tagDataSize:I

    invoke-interface {p1, v0, v2, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BII)V

    .line 292
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->tagData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    return-object v0
.end method

.method private readFlvHeader(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z
    .locals 9
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 188
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->headerBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v0, v2, v1, v3}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    return v2

    .line 193
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->headerBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 194
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->headerBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 195
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->headerBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 196
    .local v0, "flags":I
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 197
    .local v5, "hasAudio":Z
    :goto_0
    and-int/lit8 v6, v0, 0x1

    if-eqz v6, :cond_2

    const/4 v2, 0x1

    nop

    .line 198
    .local v2, "hasVideo":Z
    :cond_2
    if-eqz v5, :cond_3

    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->audioReader:Landroidx/media2/exoplayer/external/extractor/flv/AudioTagPayloadReader;

    if-nez v6, :cond_3

    .line 199
    new-instance v6, Landroidx/media2/exoplayer/external/extractor/flv/AudioTagPayloadReader;

    iget-object v7, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    const/16 v8, 0x8

    .line 200
    invoke-interface {v7, v8, v3}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->track(II)Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    move-result-object v7

    invoke-direct {v6, v7}, Landroidx/media2/exoplayer/external/extractor/flv/AudioTagPayloadReader;-><init>(Landroidx/media2/exoplayer/external/extractor/TrackOutput;)V

    iput-object v6, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->audioReader:Landroidx/media2/exoplayer/external/extractor/flv/AudioTagPayloadReader;

    goto :goto_1

    .line 198
    :cond_3
    nop

    .line 202
    :goto_1
    const/4 v6, 0x2

    if-eqz v2, :cond_4

    iget-object v7, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->videoReader:Landroidx/media2/exoplayer/external/extractor/flv/VideoTagPayloadReader;

    if-nez v7, :cond_4

    .line 203
    new-instance v7, Landroidx/media2/exoplayer/external/extractor/flv/VideoTagPayloadReader;

    iget-object v8, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    .line 204
    invoke-interface {v8, v1, v6}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->track(II)Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    move-result-object v8

    invoke-direct {v7, v8}, Landroidx/media2/exoplayer/external/extractor/flv/VideoTagPayloadReader;-><init>(Landroidx/media2/exoplayer/external/extractor/TrackOutput;)V

    iput-object v7, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->videoReader:Landroidx/media2/exoplayer/external/extractor/flv/VideoTagPayloadReader;

    goto :goto_2

    .line 202
    :cond_4
    nop

    .line 206
    :goto_2
    iget-object v7, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    invoke-interface {v7}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->endTracks()V

    .line 209
    iget-object v7, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->headerBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v7}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v7

    sub-int/2addr v7, v1

    add-int/2addr v7, v4

    iput v7, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    .line 210
    iput v6, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->state:I

    .line 211
    return v3
.end method

.method private readTagData(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z
    .locals 7
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 260
    const/4 v0, 0x1

    .line 261
    .local v0, "wasConsumed":Z
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->tagType:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->audioReader:Landroidx/media2/exoplayer/external/extractor/flv/AudioTagPayloadReader;

    if-eqz v1, :cond_0

    .line 262
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->ensureReadyForMediaOutput()V

    .line 263
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->audioReader:Landroidx/media2/exoplayer/external/extractor/flv/AudioTagPayloadReader;

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->prepareTagData(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    move-result-object v2

    iget-wide v3, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->mediaTagTimestampOffsetUs:J

    iget-wide v5, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->tagTimestampUs:J

    add-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Landroidx/media2/exoplayer/external/extractor/flv/AudioTagPayloadReader;->consume(Landroidx/media2/exoplayer/external/util/ParsableByteArray;J)V

    goto :goto_1

    .line 261
    :cond_0
    nop

    .line 264
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->tagType:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->videoReader:Landroidx/media2/exoplayer/external/extractor/flv/VideoTagPayloadReader;

    if-eqz v1, :cond_1

    .line 265
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->ensureReadyForMediaOutput()V

    .line 266
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->videoReader:Landroidx/media2/exoplayer/external/extractor/flv/VideoTagPayloadReader;

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->prepareTagData(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    move-result-object v2

    iget-wide v3, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->mediaTagTimestampOffsetUs:J

    iget-wide v5, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->tagTimestampUs:J

    add-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Landroidx/media2/exoplayer/external/extractor/flv/VideoTagPayloadReader;->consume(Landroidx/media2/exoplayer/external/util/ParsableByteArray;J)V

    goto :goto_1

    .line 264
    :cond_1
    nop

    .line 267
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->tagType:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_3

    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->outputSeekMap:Z

    if-nez v1, :cond_3

    .line 268
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->metadataReader:Landroidx/media2/exoplayer/external/extractor/flv/ScriptTagPayloadReader;

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->prepareTagData(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    move-result-object v2

    iget-wide v3, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->tagTimestampUs:J

    invoke-virtual {v1, v2, v3, v4}, Landroidx/media2/exoplayer/external/extractor/flv/ScriptTagPayloadReader;->consume(Landroidx/media2/exoplayer/external/util/ParsableByteArray;J)V

    .line 269
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->metadataReader:Landroidx/media2/exoplayer/external/extractor/flv/ScriptTagPayloadReader;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/extractor/flv/ScriptTagPayloadReader;->getDurationUs()J

    move-result-wide v1

    .line 270
    .local v1, "durationUs":J
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    .line 271
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    new-instance v4, Landroidx/media2/exoplayer/external/extractor/SeekMap$Unseekable;

    invoke-direct {v4, v1, v2}, Landroidx/media2/exoplayer/external/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v3, v4}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->seekMap(Landroidx/media2/exoplayer/external/extractor/SeekMap;)V

    .line 272
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->outputSeekMap:Z

    goto :goto_0

    .line 270
    :cond_2
    nop

    .line 274
    .end local v1    # "durationUs":J
    :goto_0
    goto :goto_1

    .line 267
    :cond_3
    nop

    .line 275
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->tagDataSize:I

    invoke-interface {p1, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    .line 276
    const/4 v0, 0x0

    .line 278
    :goto_1
    const/4 v1, 0x4

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    .line 279
    const/4 v1, 0x2

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->state:I

    .line 280
    return v0
.end method

.method private readTagHeader(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z
    .locals 6
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 236
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->tagHeaderBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xb

    invoke-interface {p1, v0, v2, v3, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    return v2

    .line 241
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->tagHeaderBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 242
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->tagHeaderBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->tagType:I

    .line 243
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->tagHeaderBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->tagDataSize:I

    .line 244
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->tagHeaderBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->tagTimestampUs:J

    .line 245
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->tagHeaderBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    int-to-long v2, v0

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->tagTimestampUs:J

    or-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    iput-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->tagTimestampUs:J

    .line 246
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->tagHeaderBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 247
    const/4 v0, 0x4

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->state:I

    .line 248
    return v1
.end method

.method private skipToTagHeader(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)V
    .locals 1
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 222
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    invoke-interface {p1, v0}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    .line 223
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    .line 224
    const/4 v0, 0x3

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->state:I

    .line 225
    return-void
.end method


# virtual methods
.method public init(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;)V
    .locals 0
    .param p1, "output"    # Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    .line 134
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    .line 135
    return-void
.end method

.method public read(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;)I
    .locals 2
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Landroidx/media2/exoplayer/external/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 153
    :goto_0
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->state:I

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_0

    .line 174
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 168
    :pswitch_0
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->readTagData(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    const/4 v0, 0x0

    return v0

    .line 168
    :cond_0
    goto :goto_0

    .line 163
    :pswitch_1
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->readTagHeader(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 164
    return v1

    .line 163
    :cond_1
    goto :goto_0

    .line 160
    :pswitch_2
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->skipToTagHeader(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)V

    .line 161
    goto :goto_0

    .line 155
    :pswitch_3
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->readFlvHeader(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 156
    return v1

    .line 155
    :cond_2
    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public release()V
    .locals 0

    .line 147
    return-void
.end method

.method public seek(JJ)V
    .locals 2
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .line 139
    const/4 v0, 0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->state:I

    .line 140
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->mediaTagTimestampOffsetUs:J

    .line 141
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    .line 142
    return-void
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

    .line 104
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-interface {p1, v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 105
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 106
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v0

    const v2, 0x464c56

    if-eq v0, v2, :cond_0

    .line 107
    return v1

    .line 111
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v2, 0x2

    invoke-interface {p1, v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 112
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 113
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    and-int/lit16 v0, v0, 0xfa

    if-eqz v0, :cond_1

    .line 114
    return v1

    .line 118
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v2, 0x4

    invoke-interface {p1, v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 119
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 120
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 122
    .local v0, "dataOffset":I
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    .line 123
    invoke-interface {p1, v0}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 126
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v3, v1, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 127
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v2, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 129
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    return v1
.end method
