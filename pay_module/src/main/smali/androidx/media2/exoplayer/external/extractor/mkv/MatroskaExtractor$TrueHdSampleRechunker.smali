.class final Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;
.super Ljava/lang/Object;
.source "MatroskaExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TrueHdSampleRechunker"
.end annotation


# instance fields
.field private blockFlags:I

.field private chunkSize:I

.field private foundSyncframe:Z

.field private sampleCount:I

.field private final syncframePrefix:[B

.field private timeUs:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1654
    const/16 v0, 0xa

    new-array v0, v0, [B

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->syncframePrefix:[B

    .line 1655
    return-void
.end method


# virtual methods
.method public outputPendingSampleMetadata(Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;)V
    .locals 8
    .param p1, "track"    # Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    .line 1697
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->foundSyncframe:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->sampleCount:I

    if-lez v0, :cond_0

    .line 1698
    iget-object v1, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->timeUs:J

    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->blockFlags:I

    iget v5, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->chunkSize:I

    const/4 v6, 0x0

    iget-object v7, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;

    invoke-interface/range {v1 .. v7}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;)V

    .line 1699
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->sampleCount:I

    goto :goto_0

    .line 1697
    :cond_0
    nop

    .line 1701
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 1

    .line 1658
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->foundSyncframe:Z

    .line 1659
    return-void
.end method

.method public sampleMetadata(Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;J)V
    .locals 9
    .param p1, "track"    # Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;
    .param p2, "timeUs"    # J

    .line 1681
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->foundSyncframe:Z

    if-nez v0, :cond_0

    .line 1682
    return-void

    .line 1684
    :cond_0
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->sampleCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->sampleCount:I

    if-nez v0, :cond_1

    .line 1686
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->timeUs:J

    goto :goto_0

    .line 1684
    :cond_1
    nop

    .line 1688
    :goto_0
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->sampleCount:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_2

    .line 1690
    return-void

    .line 1692
    :cond_2
    iget-object v2, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iget-wide v3, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->timeUs:J

    iget v5, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->blockFlags:I

    iget v6, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->chunkSize:I

    const/4 v7, 0x0

    iget-object v8, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;

    invoke-interface/range {v2 .. v8}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;)V

    .line 1693
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->sampleCount:I

    .line 1694
    return-void
.end method

.method public startSample(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;II)V
    .locals 3
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .param p2, "blockFlags"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1663
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->foundSyncframe:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1664
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->syncframePrefix:[B

    const/16 v2, 0xa

    invoke-interface {p1, v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 1665
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    .line 1666
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->syncframePrefix:[B

    invoke-static {v0}, Landroidx/media2/exoplayer/external/audio/Ac3Util;->parseTrueHdSyncframeAudioSampleCount([B)I

    move-result v0

    if-nez v0, :cond_0

    .line 1667
    return-void

    .line 1669
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->foundSyncframe:Z

    .line 1670
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->sampleCount:I

    goto :goto_0

    .line 1663
    :cond_1
    nop

    .line 1672
    :goto_0
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->sampleCount:I

    if-nez v0, :cond_2

    .line 1674
    iput p2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->blockFlags:I

    .line 1675
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->chunkSize:I

    goto :goto_1

    .line 1672
    :cond_2
    nop

    .line 1677
    :goto_1
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->chunkSize:I

    add-int/2addr v0, p3

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->chunkSize:I

    .line 1678
    return-void
.end method
