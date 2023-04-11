.class public final Landroidx/media2/exoplayer/external/extractor/rawcc/RawCcExtractor;
.super Ljava/lang/Object;
.source "RawCcExtractor.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/Extractor;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final HEADER_ID:I = 0x52434301

.field private static final HEADER_SIZE:I = 0x8

.field private static final SCRATCH_SIZE:I = 0x9

.field private static final STATE_READING_HEADER:I = 0x0

.field private static final STATE_READING_SAMPLES:I = 0x2

.field private static final STATE_READING_TIMESTAMP_AND_COUNT:I = 0x1

.field private static final TIMESTAMP_SIZE_V0:I = 0x4

.field private static final TIMESTAMP_SIZE_V1:I = 0x8


# instance fields
.field private final dataScratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private final format:Landroidx/media2/exoplayer/external/Format;

.field private parserState:I

.field private remainingSampleCount:I

.field private sampleBytesWritten:I

.field private timestampUs:J

.field private trackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

.field private version:I


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/Format;)V
    .locals 2
    .param p1, "format"    # Landroidx/media2/exoplayer/external/Format;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/rawcc/RawCcExtractor;->format:Landroidx/media2/exoplayer/external/Format;

    .line 66
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/rawcc/RawCcExtractor;->dataScratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/rawcc/RawCcExtractor;->parserState:I

    .line 68
    return-void
.end method

.method private parseHeader(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z
    .locals 4
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/rawcc/RawCcExtractor;->dataScratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset()V

    .line 127
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/rawcc/RawCcExtractor;->dataScratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-interface {p1, v0, v2, v3, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/rawcc/RawCcExtractor;->dataScratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v0

    const v2, 0x52434301

    if-ne v0, v2, :cond_0

    .line 131
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/rawcc/RawCcExtractor;->dataScratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/rawcc/RawCcExtractor;->version:I

    .line 133
    return v1

    .line 129
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Input not RawCC"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_1
    return v2
.end method

.method private parseSamples(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)V
    .locals 8
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 163
    :goto_0
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/rawcc/RawCcExtractor;->remainingSampleCount:I

    if-lez v0, :cond_0

    .line 164
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/rawcc/RawCcExtractor;->dataScratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset()V

    .line 165
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/rawcc/RawCcExtractor;->dataScratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-interface {p1, v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BII)V

    .line 167
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/rawcc/RawCcExtractor;->trackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/rawcc/RawCcExtractor;->dataScratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-interface {v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 168
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/rawcc/RawCcExtractor;->sampleBytesWritten:I

    add-int/2addr v0, v2

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/rawcc/RawCcExtractor;->sampleBytesWritten:I

    .line 163
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/rawcc/RawCcExtractor;->remainingSampleCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/rawcc/RawCcExtractor;->remainingSampleCount:I

    goto :goto_0

    .line 171
    :cond_0
    iget v5, p0, Landroidx/media2/exoplayer/external/extractor/rawcc/RawCcExtractor;->sampleBytesWritten:I

    if-lez v5, :cond_1

    .line 172
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/rawcc/RawCcExtractor;->trackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/rawcc/RawCcExtractor;->timestampUs:J

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;)V

    goto :goto_1

    .line 171
    :cond_1
    nop

    .line 174
    :goto_1
    return-void
.end method

.method private parseTimestampAndSampleCount(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z
    .locals 7
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/rawcc/RawCcExtractor;->dataScratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset()V

    .line 142
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/rawcc/RawCcExtractor;->version:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 143
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/rawcc/RawCcExtractor;->dataScratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v3, 0x5

    invoke-interface {p1, v0, v2, v3, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    return v2

    .line 147
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/rawcc/RawCcExtractor;->dataScratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    const-wide/16 v5, 0x2d

    div-long/2addr v3, v5

    iput-wide v3, p0, Landroidx/media2/exoplayer/external/extractor/rawcc/RawCcExtractor;->timestampUs:J

    goto :goto_0

    .line 148
    :cond_1
    if-ne v0, v1, :cond_3

    .line 149
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/rawcc/RawCcExtractor;->dataScratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/16 v3, 0x9

    invoke-interface {p1, v0, v2, v3, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 150
    return v2

    .line 152
    :cond_2
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/rawcc/RawCcExtractor;->dataScratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroidx/media2/exoplayer/external/extractor/rawcc/RawCcExtractor;->timestampUs:J

    .line 157
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/rawcc/RawCcExtractor;->dataScratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/rawcc/RawCcExtractor;->remainingSampleCount:I

    .line 158
    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/rawcc/RawCcExtractor;->sampleBytesWritten:I

    .line 159
    return v1

    .line 154
    :cond_3
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    const/16 v2, 0x27

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unsupported version number: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public init(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;)V
    .locals 3
    .param p1, "output"    # Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    .line 72
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/SeekMap$Unseekable;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p1, v0}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->seekMap(Landroidx/media2/exoplayer/external/extractor/SeekMap;)V

    .line 73
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-interface {p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->track(II)Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/rawcc/RawCcExtractor;->trackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 74
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->endTracks()V

    .line 75
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/rawcc/RawCcExtractor;->trackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/rawcc/RawCcExtractor;->format:Landroidx/media2/exoplayer/external/Format;

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->format(Landroidx/media2/exoplayer/external/Format;)V

    .line 76
    return-void
.end method

.method public read(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;)I
    .locals 4
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Landroidx/media2/exoplayer/external/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 89
    :goto_0
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/rawcc/RawCcExtractor;->parserState:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    .line 110
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 106
    :pswitch_0
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/rawcc/RawCcExtractor;->parseSamples(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)V

    .line 107
    iput v3, p0, Landroidx/media2/exoplayer/external/extractor/rawcc/RawCcExtractor;->parserState:I

    .line 108
    return v2

    .line 98
    :pswitch_1
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/rawcc/RawCcExtractor;->parseTimestampAndSampleCount(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const/4 v0, 0x2

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/rawcc/RawCcExtractor;->parserState:I

    goto :goto_0

    .line 101
    :cond_0
    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/rawcc/RawCcExtractor;->parserState:I

    .line 102
    return v1

    .line 91
    :pswitch_2
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/rawcc/RawCcExtractor;->parseHeader(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iput v3, p0, Landroidx/media2/exoplayer/external/extractor/rawcc/RawCcExtractor;->parserState:I

    goto :goto_0

    .line 94
    :cond_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public release()V
    .locals 0

    .line 123
    return-void
.end method

.method public seek(JJ)V
    .locals 1
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/rawcc/RawCcExtractor;->parserState:I

    .line 118
    return-void
.end method

.method public sniff(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z
    .locals 3
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/rawcc/RawCcExtractor;->dataScratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset()V

    .line 81
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/rawcc/RawCcExtractor;->dataScratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-interface {p1, v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 82
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/rawcc/RawCcExtractor;->dataScratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v0

    const v2, 0x52434301

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1
.end method
