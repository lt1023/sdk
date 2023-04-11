.class public final Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;
.super Ljava/lang/Object;
.source "Id3Reader.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final ID3_HEADER_SIZE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "Id3Reader"


# instance fields
.field private final id3Header:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

.field private sampleBytesRead:I

.field private sampleSize:I

.field private sampleTimeUs:J

.field private writingSample:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->id3Header:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 58
    return-void
.end method


# virtual methods
.method public consume(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V
    .locals 7
    .param p1, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 86
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->writingSample:Z

    if-nez v0, :cond_0

    .line 87
    return-void

    .line 89
    :cond_0
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    .line 90
    .local v0, "bytesAvailable":I
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->sampleBytesRead:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_4

    .line 92
    rsub-int/lit8 v1, v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 93
    .local v1, "headerBytesAvailable":I
    iget-object v3, p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v4

    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->id3Header:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v6, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->sampleBytesRead:I

    invoke-static {v3, v4, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    iget v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->sampleBytesRead:I

    add-int/2addr v3, v1

    if-ne v3, v2, :cond_3

    .line 97
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->id3Header:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 98
    const/16 v3, 0x49

    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->id3Header:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    if-ne v3, v5, :cond_2

    const/16 v3, 0x44

    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->id3Header:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    if-ne v3, v5, :cond_2

    const/16 v3, 0x33

    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->id3Header:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 99
    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    if-eq v3, v5, :cond_1

    goto :goto_0

    .line 104
    :cond_1
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->id3Header:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 105
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->id3Header:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v3

    add-int/2addr v3, v2

    iput v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->sampleSize:I

    goto :goto_1

    .line 98
    :cond_2
    nop

    .line 100
    :goto_0
    const-string v2, "Id3Reader"

    const-string v3, "Discarding invalid ID3 tag"

    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iput-boolean v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->writingSample:Z

    .line 102
    return-void

    .line 95
    :cond_3
    goto :goto_1

    .line 90
    .end local v1    # "headerBytesAvailable":I
    :cond_4
    nop

    .line 109
    :goto_1
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->sampleSize:I

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->sampleBytesRead:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 110
    .local v1, "bytesToWrite":I
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    invoke-interface {v2, p1, v1}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 111
    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->sampleBytesRead:I

    add-int/2addr v2, v1

    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->sampleBytesRead:I

    .line 112
    return-void
.end method

.method public createTracks(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 5
    .param p1, "extractorOutput"    # Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;
    .param p2, "idGenerator"    # Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .line 67
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 68
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x4

    invoke-interface {p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->track(II)Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 69
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "application/id3"

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-static {v1, v2, v3, v4, v3}, Landroidx/media2/exoplayer/external/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->format(Landroidx/media2/exoplayer/external/Format;)V

    .line 71
    return-void
.end method

.method public packetFinished()V
    .locals 8

    .line 116
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->writingSample:Z

    if-eqz v0, :cond_1

    iget v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->sampleSize:I

    if-eqz v5, :cond_1

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->sampleBytesRead:I

    if-eq v0, v5, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->sampleTimeUs:J

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;)V

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->writingSample:Z

    .line 121
    return-void

    .line 116
    :cond_1
    :goto_0
    nop

    .line 117
    return-void
.end method

.method public packetStarted(JI)V
    .locals 1
    .param p1, "pesTimeUs"    # J
    .param p3, "flags"    # I

    .line 75
    and-int/lit8 v0, p3, 0x4

    if-nez v0, :cond_0

    .line 76
    return-void

    .line 78
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->writingSample:Z

    .line 79
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->sampleTimeUs:J

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->sampleSize:I

    .line 81
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->sampleBytesRead:I

    .line 82
    return-void
.end method

.method public seek()V
    .locals 1

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->writingSample:Z

    .line 63
    return-void
.end method
