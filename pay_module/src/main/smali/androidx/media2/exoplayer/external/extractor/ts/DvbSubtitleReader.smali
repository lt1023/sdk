.class public final Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;
.super Ljava/lang/Object;
.source "DvbSubtitleReader.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private bytesToCheck:I

.field private final outputs:[Landroidx/media2/exoplayer/external/extractor/TrackOutput;

.field private sampleBytesWritten:I

.field private sampleTimeUs:J

.field private final subtitleInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$DvbSubtitleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private writingSample:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$DvbSubtitleInfo;",
            ">;)V"
        }
    .end annotation

    .line 53
    .local p1, "subtitleInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$DvbSubtitleInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;->subtitleInfos:Ljava/util/List;

    .line 55
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;->outputs:[Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 56
    return-void
.end method

.method private checkNextByte(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Z
    .locals 2
    .param p1, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p2, "expectedValue"    # I

    .line 126
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 127
    return v1

    .line 129
    :cond_0
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 130
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;->writingSample:Z

    goto :goto_0

    .line 129
    :cond_1
    nop

    .line 132
    :goto_0
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;->bytesToCheck:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;->bytesToCheck:I

    .line 133
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;->writingSample:Z

    return v0
.end method


# virtual methods
.method public consume(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V
    .locals 6
    .param p1, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 106
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;->writingSample:Z

    if-eqz v0, :cond_3

    .line 107
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;->bytesToCheck:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/16 v0, 0x20

    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;->checkNextByte(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    return-void

    .line 107
    :cond_0
    nop

    .line 111
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;->bytesToCheck:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-direct {p0, p1, v1}, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;->checkNextByte(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    return-void

    .line 111
    :cond_1
    nop

    .line 115
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 116
    .local v0, "dataPosition":I
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    .line 117
    .local v2, "bytesAvailable":I
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;->outputs:[Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    array-length v4, v3

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v5, v3, v1

    .line 118
    .local v5, "output":Landroidx/media2/exoplayer/external/extractor/TrackOutput;
    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 119
    invoke-interface {v5, p1, v2}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 117
    .end local v5    # "output":Landroidx/media2/exoplayer/external/extractor/TrackOutput;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    :cond_2
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;->sampleBytesWritten:I

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;->sampleBytesWritten:I

    goto :goto_1

    .line 106
    .end local v0    # "dataPosition":I
    .end local v2    # "bytesAvailable":I
    :cond_3
    nop

    .line 123
    :goto_1
    return-void
.end method

.method public createTracks(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 11
    .param p1, "extractorOutput"    # Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;
    .param p2, "idGenerator"    # Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .line 65
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;->outputs:[Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 66
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;->subtitleInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$DvbSubtitleInfo;

    .line 67
    .local v1, "subtitleInfo":Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$DvbSubtitleInfo;
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 68
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v2

    const/4 v3, 0x3

    invoke-interface {p1, v2, v3}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->track(II)Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    move-result-object v2

    .line 69
    .local v2, "output":Landroidx/media2/exoplayer/external/extractor/TrackOutput;
    nop

    .line 71
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "application/dvbsubs"

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    iget-object v8, v1, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$DvbSubtitleInfo;->initializationData:[B

    .line 76
    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    iget-object v9, v1, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$DvbSubtitleInfo;->language:Ljava/lang/String;

    const/4 v10, 0x0

    .line 70
    invoke-static/range {v3 .. v10}, Landroidx/media2/exoplayer/external/Format;->createImageSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v3

    .line 69
    invoke-interface {v2, v3}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->format(Landroidx/media2/exoplayer/external/Format;)V

    .line 79
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;->outputs:[Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    aput-object v2, v3, v0

    .line 65
    .end local v1    # "subtitleInfo":Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$DvbSubtitleInfo;
    .end local v2    # "output":Landroidx/media2/exoplayer/external/extractor/TrackOutput;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public packetFinished()V
    .locals 12

    .line 96
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;->writingSample:Z

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;->outputs:[Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v11, v0, v3

    .line 98
    .local v11, "output":Landroidx/media2/exoplayer/external/extractor/TrackOutput;
    iget-wide v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;->sampleTimeUs:J

    const/4 v7, 0x1

    iget v8, p0, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;->sampleBytesWritten:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v11

    invoke-interface/range {v4 .. v10}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;)V

    .line 97
    .end local v11    # "output":Landroidx/media2/exoplayer/external/extractor/TrackOutput;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 100
    :cond_0
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;->writingSample:Z

    goto :goto_1

    .line 96
    :cond_1
    nop

    .line 102
    :goto_1
    return-void
.end method

.method public packetStarted(JI)V
    .locals 1
    .param p1, "pesTimeUs"    # J
    .param p3, "flags"    # I

    .line 85
    and-int/lit8 v0, p3, 0x4

    if-nez v0, :cond_0

    .line 86
    return-void

    .line 88
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;->writingSample:Z

    .line 89
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;->sampleTimeUs:J

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;->sampleBytesWritten:I

    .line 91
    const/4 v0, 0x2

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;->bytesToCheck:I

    .line 92
    return-void
.end method

.method public seek()V
    .locals 1

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;->writingSample:Z

    .line 61
    return-void
.end method
