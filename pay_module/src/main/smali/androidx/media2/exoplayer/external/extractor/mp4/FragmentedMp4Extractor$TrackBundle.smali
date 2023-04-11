.class final Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
.super Ljava/lang/Object;
.source "FragmentedMp4Extractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TrackBundle"
.end annotation


# instance fields
.field public currentSampleInTrackRun:I

.field public currentSampleIndex:I

.field public currentTrackRunIndex:I

.field private final defaultInitializationVector:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field public defaultSampleValues:Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;

.field private final encryptionSignalByte:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field public firstSampleToOutputIndex:I

.field public final fragment:Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;

.field public final output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

.field public track:Landroidx/media2/exoplayer/external/extractor/mp4/Track;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/extractor/TrackOutput;)V
    .locals 2
    .param p1, "output"    # Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 1459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1460
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 1461
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;

    .line 1462
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->encryptionSignalByte:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 1463
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultInitializationVector:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 1464
    return-void
.end method

.method static synthetic access$000(Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 1444
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->skipSampleEncryptionData()V

    return-void
.end method

.method static synthetic access$100(Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;)Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 1444
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getEncryptionBoxIfEncrypted()Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;

    move-result-object v0

    return-object v0
.end method

.method private getEncryptionBoxIfEncrypted()Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;
    .locals 3

    .line 1588
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->header:Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;

    iget v0, v0, Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    .line 1590
    .local v0, "sampleDescriptionIndex":I
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->trackEncryptionBox:Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;

    if-eqz v1, :cond_0

    .line 1591
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->trackEncryptionBox:Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;

    goto :goto_0

    .line 1592
    :cond_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->track:Landroidx/media2/exoplayer/external/extractor/mp4/Track;

    invoke-virtual {v1, v0}, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->getSampleDescriptionEncryptionBox(I)Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;

    move-result-object v1

    :goto_0
    nop

    .line 1593
    .local v1, "encryptionBox":Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;
    if-eqz v1, :cond_1

    iget-boolean v2, v1, Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;->isEncrypted:Z

    if-eqz v2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method private skipSampleEncryptionData()V
    .locals 4

    .line 1573
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getEncryptionBoxIfEncrypted()Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;

    move-result-object v0

    .line 1574
    .local v0, "encryptionBox":Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;
    if-nez v0, :cond_0

    .line 1575
    return-void

    .line 1578
    :cond_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleEncryptionData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 1579
    .local v1, "sampleEncryptionData":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;->perSampleIvSize:I

    if-eqz v2, :cond_1

    .line 1580
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;->perSampleIvSize:I

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    .line 1579
    :cond_1
    nop

    .line 1582
    :goto_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;

    iget v3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    invoke-virtual {v2, v3}, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1583
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    mul-int/lit8 v2, v2, 0x6

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_1

    .line 1582
    :cond_2
    nop

    .line 1585
    :goto_1
    return-void
.end method


# virtual methods
.method public init(Landroidx/media2/exoplayer/external/extractor/mp4/Track;Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;)V
    .locals 2
    .param p1, "track"    # Landroidx/media2/exoplayer/external/extractor/mp4/Track;
    .param p2, "defaultSampleValues"    # Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;

    .line 1467
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/extractor/mp4/Track;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->track:Landroidx/media2/exoplayer/external/extractor/mp4/Track;

    .line 1468
    invoke-static {p2}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultSampleValues:Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;

    .line 1469
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iget-object v1, p1, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->format:Landroidx/media2/exoplayer/external/Format;

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->format(Landroidx/media2/exoplayer/external/Format;)V

    .line 1470
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->reset()V

    .line 1471
    return-void
.end method

.method public next()Z
    .locals 4

    .line 1516
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    .line 1517
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    .line 1518
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->trunLength:[I

    iget v3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    aget v2, v2, v3

    if-ne v0, v2, :cond_0

    .line 1519
    add-int/2addr v3, v1

    iput v3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    .line 1520
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    .line 1521
    return v0

    .line 1523
    :cond_0
    return v1
.end method

.method public outputSampleEncryptionData()I
    .locals 9

    .line 1532
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getEncryptionBoxIfEncrypted()Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;

    move-result-object v0

    .line 1533
    .local v0, "encryptionBox":Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1534
    return v1

    .line 1539
    :cond_0
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;->perSampleIvSize:I

    if-eqz v2, :cond_1

    .line 1540
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleEncryptionData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 1541
    .local v2, "initializationVectorData":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    iget v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;->perSampleIvSize:I

    move v8, v3

    move-object v3, v2

    move v2, v8

    goto :goto_0

    .line 1544
    .end local v2    # "initializationVectorData":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    :cond_1
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;->defaultInitializationVector:[B

    .line 1545
    .local v2, "initVectorData":[B
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultInitializationVector:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    array-length v4, v2

    invoke-virtual {v3, v2, v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset([BI)V

    .line 1546
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultInitializationVector:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 1547
    .local v3, "initializationVectorData":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    array-length v2, v2

    .line 1550
    .local v2, "vectorSize":I
    :goto_0
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;

    iget v5, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable(I)Z

    move-result v4

    .line 1553
    .local v4, "subsampleEncryption":Z
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->encryptionSignalByte:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    if-eqz v4, :cond_2

    const/16 v6, 0x80

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    or-int/2addr v6, v2

    int-to-byte v6, v6

    aput-byte v6, v5, v1

    .line 1554
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->encryptionSignalByte:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v5, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1555
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->encryptionSignalByte:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/4 v6, 0x1

    invoke-interface {v1, v5, v6}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 1557
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    invoke-interface {v1, v3, v2}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 1559
    if-nez v4, :cond_3

    .line 1560
    add-int/lit8 v1, v2, 0x1

    return v1

    .line 1563
    :cond_3
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleEncryptionData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 1564
    .local v1, "subsampleEncryptionData":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    .line 1565
    .local v5, "subsampleCount":I
    const/4 v6, -0x2

    invoke-virtual {v1, v6}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 1566
    mul-int/lit8 v6, v5, 0x6

    add-int/lit8 v6, v6, 0x2

    .line 1567
    .local v6, "subsampleDataLength":I
    iget-object v7, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    invoke-interface {v7, v1, v6}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 1568
    add-int/lit8 v7, v2, 0x1

    add-int/2addr v7, v6

    return v7
.end method

.method public reset()V
    .locals 1

    .line 1482
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->reset()V

    .line 1483
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    .line 1484
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    .line 1485
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    .line 1486
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->firstSampleToOutputIndex:I

    .line 1487
    return-void
.end method

.method public seek(J)V
    .locals 6
    .param p1, "timeUs"    # J

    .line 1496
    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/C;->usToMs(J)J

    move-result-wide v0

    .line 1497
    .local v0, "timeMs":J
    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    .line 1498
    .local v2, "searchIndex":I
    :goto_0
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;

    iget v3, v3, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleCount:I

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;

    .line 1499
    invoke-virtual {v3, v2}, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->getSamplePresentationTime(I)J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-gez v5, :cond_1

    .line 1500
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_0

    .line 1501
    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->firstSampleToOutputIndex:I

    goto :goto_1

    .line 1500
    :cond_0
    nop

    .line 1503
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1499
    :cond_1
    goto :goto_2

    .line 1498
    :cond_2
    nop

    .line 1505
    :goto_2
    return-void
.end method

.method public updateDrmInitData(Landroidx/media2/exoplayer/external/drm/DrmInitData;)V
    .locals 5
    .param p1, "drmInitData"    # Landroidx/media2/exoplayer/external/drm/DrmInitData;

    .line 1474
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->track:Landroidx/media2/exoplayer/external/extractor/mp4/Track;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->header:Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;

    iget v1, v1, Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    .line 1475
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->getSampleDescriptionEncryptionBox(I)Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;

    move-result-object v0

    .line 1476
    .local v0, "encryptionBox":Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1477
    .local v1, "schemeType":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->track:Landroidx/media2/exoplayer/external/extractor/mp4/Track;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->format:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {p1, v1}, Landroidx/media2/exoplayer/external/drm/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/Format;->copyWithDrmInitData(Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v3

    invoke-interface {v2, v3}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->format(Landroidx/media2/exoplayer/external/Format;)V

    .line 1478
    return-void
.end method
