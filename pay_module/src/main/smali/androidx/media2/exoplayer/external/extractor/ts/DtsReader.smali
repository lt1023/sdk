.class public final Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;
.super Ljava/lang/Object;
.source "DtsReader.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final HEADER_SIZE:I = 0x12

.field private static final STATE_FINDING_SYNC:I = 0x0

.field private static final STATE_READING_HEADER:I = 0x1

.field private static final STATE_READING_SAMPLE:I = 0x2


# instance fields
.field private bytesRead:I

.field private format:Landroidx/media2/exoplayer/external/Format;

.field private formatId:Ljava/lang/String;

.field private final headerScratchBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private final language:Ljava/lang/String;

.field private output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

.field private sampleDurationUs:J

.field private sampleSize:I

.field private state:I

.field private syncBytes:I

.field private timeUs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "language"    # Ljava/lang/String;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/16 v1, 0x12

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->headerScratchBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->state:I

    .line 71
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->language:Ljava/lang/String;

    .line 72
    return-void
.end method

.method private continueRead(Landroidx/media2/exoplayer/external/util/ParsableByteArray;[BI)Z
    .locals 2
    .param p1, "source"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p2, "target"    # [B
    .param p3, "targetLength"    # I

    .line 141
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->bytesRead:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 142
    .local v0, "bytesToRead":I
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->bytesRead:I

    invoke-virtual {p1, p2, v1, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 143
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->bytesRead:I

    .line 144
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->bytesRead:I

    if-ne v1, p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private parseHeader()V
    .locals 5

    .line 175
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->headerScratchBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    .line 176
    .local v0, "frameData":[B
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->format:Landroidx/media2/exoplayer/external/Format;

    if-nez v1, :cond_0

    .line 177
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->formatId:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->language:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/media2/exoplayer/external/audio/DtsUtil;->parseDtsFormat([BLjava/lang/String;Ljava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->format:Landroidx/media2/exoplayer/external/Format;

    .line 178
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->format:Landroidx/media2/exoplayer/external/Format;

    invoke-interface {v1, v2}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->format(Landroidx/media2/exoplayer/external/Format;)V

    goto :goto_0

    .line 176
    :cond_0
    nop

    .line 180
    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/audio/DtsUtil;->getDtsFrameSize([B)I

    move-result v1

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->sampleSize:I

    .line 183
    const-wide/32 v1, 0xf4240

    .line 184
    invoke-static {v0}, Landroidx/media2/exoplayer/external/audio/DtsUtil;->parseDtsAudioSampleCount([B)I

    move-result v3

    int-to-long v3, v3

    mul-long v3, v3, v1

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->format:Landroidx/media2/exoplayer/external/Format;

    iget v1, v1, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    int-to-long v1, v1

    div-long/2addr v3, v1

    long-to-int v1, v3

    int-to-long v1, v1

    iput-wide v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->sampleDurationUs:J

    .line 185
    return-void
.end method

.method private skipToNextSync(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Z
    .locals 5
    .param p1, "pesBuffer"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 155
    :goto_0
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 156
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->syncBytes:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->syncBytes:I

    .line 157
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->syncBytes:I

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    or-int/2addr v0, v2

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->syncBytes:I

    .line 158
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->syncBytes:I

    invoke-static {v0}, Landroidx/media2/exoplayer/external/audio/DtsUtil;->isSyncWord(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->headerScratchBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->syncBytes:I

    shr-int/lit8 v2, v2, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 160
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->headerScratchBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->syncBytes:I

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v0, v3

    .line 161
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->headerScratchBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v2, 0x2

    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->syncBytes:I

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 162
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->headerScratchBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v2, 0x3

    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->syncBytes:I

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 163
    const/4 v0, 0x4

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->bytesRead:I

    .line 164
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->syncBytes:I

    .line 165
    return v3

    .line 158
    :cond_0
    goto :goto_0

    .line 168
    :cond_1
    return v1
.end method


# virtual methods
.method public consume(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V
    .locals 10
    .param p1, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 95
    :goto_0
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_3

    .line 96
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->state:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 121
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 111
    :pswitch_0
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->sampleSize:I

    iget v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->bytesRead:I

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 112
    .local v0, "bytesToRead":I
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    invoke-interface {v2, p1, v0}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 113
    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->bytesRead:I

    add-int/2addr v2, v0

    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->bytesRead:I

    .line 114
    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->bytesRead:I

    iget v7, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->sampleSize:I

    if-ne v2, v7, :cond_0

    .line 115
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->timeUs:J

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;)V

    .line 116
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->timeUs:J

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->sampleDurationUs:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->timeUs:J

    .line 117
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->state:I

    goto :goto_0

    .line 114
    :cond_0
    goto :goto_0

    .line 103
    .end local v0    # "bytesToRead":I
    :pswitch_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->headerScratchBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/16 v2, 0x12

    invoke-direct {p0, p1, v0, v2}, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->continueRead(Landroidx/media2/exoplayer/external/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->parseHeader()V

    .line 105
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->headerScratchBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 106
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->headerScratchBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-interface {v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 107
    const/4 v0, 0x2

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->state:I

    goto :goto_0

    .line 103
    :cond_1
    goto :goto_0

    .line 98
    :pswitch_2
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->skipToNextSync(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    const/4 v0, 0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->state:I

    goto :goto_0

    .line 98
    :cond_2
    goto :goto_0

    .line 124
    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public createTracks(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 2
    .param p1, "extractorOutput"    # Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;
    .param p2, "idGenerator"    # Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .line 83
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 84
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->formatId:Ljava/lang/String;

    .line 85
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->track(II)Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 86
    return-void
.end method

.method public packetFinished()V
    .locals 0

    .line 129
    return-void
.end method

.method public packetStarted(JI)V
    .locals 0
    .param p1, "pesTimeUs"    # J
    .param p3, "flags"    # I

    .line 90
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->timeUs:J

    .line 91
    return-void
.end method

.method public seek()V
    .locals 1

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->state:I

    .line 77
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->bytesRead:I

    .line 78
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;->syncBytes:I

    .line 79
    return-void
.end method
