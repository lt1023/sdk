.class public final Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;
.super Ljava/lang/Object;
.source "Ac3Extractor.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/Extractor;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final AC3_SYNC_WORD:I = 0xb77

.field public static final FACTORY:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

.field private static final ID3_TAG:I = 0x494433

.field private static final MAX_SNIFF_BYTES:I = 0x2000

.field private static final MAX_SYNC_FRAME_SIZE:I = 0xae2


# instance fields
.field private final firstSampleTimestampUs:J

.field private final reader:Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;

.field private final sampleData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private startedPacket:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor$$Lambda$0;->$instance:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;->FACTORY:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 62
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;-><init>(J)V

    .line 63
    return-void
.end method

.method public constructor <init>(J)V
    .locals 2
    .param p1, "firstSampleTimestampUs"    # J

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;->firstSampleTimestampUs:J

    .line 67
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;->reader:Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;

    .line 68
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/16 v1, 0xae2

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;->sampleData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 69
    return-void
.end method

.method static final synthetic lambda$static$0$Ac3Extractor()[Landroidx/media2/exoplayer/external/extractor/Extractor;
    .locals 3

    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media2/exoplayer/external/extractor/Extractor;

    new-instance v1, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public init(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;)V
    .locals 4
    .param p1, "output"    # Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    .line 120
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;->reader:Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;

    new-instance v1, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->createTracks(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 121
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->endTracks()V

    .line 122
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/SeekMap$Unseekable;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p1, v0}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->seekMap(Landroidx/media2/exoplayer/external/extractor/SeekMap;)V

    .line 123
    return-void
.end method

.method public read(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;)I
    .locals 6
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Landroidx/media2/exoplayer/external/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;->sampleData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v1, 0x0

    const/16 v2, 0xae2

    invoke-interface {p1, v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->read([BII)I

    move-result v0

    .line 140
    .local v0, "bytesRead":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 141
    return v2

    .line 145
    :cond_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;->sampleData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v2, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 146
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;->sampleData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v2, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setLimit(I)V

    .line 148
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;->startedPacket:Z

    if-nez v2, :cond_1

    .line 150
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;->reader:Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;

    iget-wide v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;->firstSampleTimestampUs:J

    const/4 v5, 0x4

    invoke-virtual {v2, v3, v4, v5}, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->packetStarted(JI)V

    .line 151
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;->startedPacket:Z

    goto :goto_0

    .line 148
    :cond_1
    nop

    .line 155
    :goto_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;->reader:Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;->sampleData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v2, v3}, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->consume(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V

    .line 156
    return v1
.end method

.method public release()V
    .locals 0

    .line 134
    return-void
.end method

.method public seek(JJ)V
    .locals 1
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;->startedPacket:Z

    .line 128
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;->reader:Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->seek()V

    .line 129
    return-void
.end method

.method public sniff(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z
    .locals 8
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 76
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>(I)V

    .line 77
    .local v0, "scratch":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    const/4 v2, 0x0

    .line 79
    .local v2, "startPosition":I
    :goto_0
    iget-object v3, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v4, 0x0

    invoke-interface {p1, v3, v4, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 80
    invoke-virtual {v0, v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 81
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v3

    const v5, 0x494433

    if-eq v3, v5, :cond_4

    .line 82
    nop

    .line 89
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    .line 90
    invoke-interface {p1, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 92
    move v1, v2

    .line 93
    .local v1, "headerPosition":I
    const/4 v3, 0x0

    .line 95
    .local v3, "validFramesCount":I
    :goto_1
    iget-object v5, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v6, 0x6

    invoke-interface {p1, v5, v4, v6}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 96
    invoke-virtual {v0, v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 97
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    .line 98
    .local v5, "syncBytes":I
    const/16 v6, 0xb77

    if-eq v5, v6, :cond_1

    .line 99
    const/4 v3, 0x0

    .line 100
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    .line 101
    add-int/lit8 v1, v1, 0x1

    sub-int v6, v1, v2

    const/16 v7, 0x2000

    if-lt v6, v7, :cond_0

    .line 102
    return v4

    .line 104
    :cond_0
    invoke-interface {p1, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_2

    .line 106
    :cond_1
    add-int/lit8 v3, v3, 0x1

    const/4 v6, 0x4

    if-lt v3, v6, :cond_2

    .line 107
    const/4 v4, 0x1

    return v4

    .line 109
    :cond_2
    iget-object v6, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-static {v6}, Landroidx/media2/exoplayer/external/audio/Ac3Util;->parseAc3SyncframeSize([B)I

    move-result v6

    .line 110
    .local v6, "frameSize":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    .line 111
    return v4

    .line 113
    :cond_3
    add-int/lit8 v7, v6, -0x6

    invoke-interface {p1, v7}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 115
    .end local v5    # "syncBytes":I
    .end local v6    # "frameSize":I
    :goto_2
    goto :goto_1

    .line 84
    .end local v1    # "headerPosition":I
    .end local v3    # "validFramesCount":I
    :cond_4
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 85
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v3

    .line 86
    .local v3, "length":I
    add-int/lit8 v4, v3, 0xa

    add-int/2addr v2, v4

    .line 87
    invoke-interface {p1, v3}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 88
    .end local v3    # "length":I
    goto :goto_0
.end method
