.class final Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;
.super Ljava/lang/Object;
.source "MatroskaExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Track"
.end annotation


# static fields
.field private static final DEFAULT_MAX_CLL:I = 0x3e8

.field private static final DEFAULT_MAX_FALL:I = 0xc8

.field private static final DISPLAY_UNIT_PIXELS:I = 0x0

.field private static final MAX_CHROMATICITY:I = 0xc350


# instance fields
.field public audioBitDepth:I

.field public channelCount:I

.field public codecDelayNs:J

.field public codecId:Ljava/lang/String;

.field public codecPrivate:[B

.field public colorRange:I

.field public colorSpace:I

.field public colorTransfer:I

.field public cryptoData:Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;

.field public defaultSampleDurationNs:I

.field public displayHeight:I

.field public displayUnit:I

.field public displayWidth:I

.field public drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

.field public flagDefault:Z

.field public flagForced:Z

.field public hasColorInfo:Z

.field public hasContentEncryption:Z

.field public height:I

.field private language:Ljava/lang/String;

.field public maxContentLuminance:I

.field public maxFrameAverageLuminance:I

.field public maxMasteringLuminance:F

.field public minMasteringLuminance:F

.field public nalUnitLengthFieldLength:I

.field public name:Ljava/lang/String;

.field public number:I

.field public output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

.field public primaryBChromaticityX:F

.field public primaryBChromaticityY:F

.field public primaryGChromaticityX:F

.field public primaryGChromaticityY:F

.field public primaryRChromaticityX:F

.field public primaryRChromaticityY:F

.field public projectionData:[B

.field public projectionPosePitch:F

.field public projectionPoseRoll:F

.field public projectionPoseYaw:F

.field public projectionType:I

.field public sampleRate:I

.field public sampleStrippedBytes:[B

.field public seekPreRollNs:J

.field public stereoMode:I

.field public trueHdSampleRechunker:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public type:I

.field public whitePointChromaticityX:F

.field public whitePointChromaticityY:F

.field public width:I


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 1704
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1731
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->width:I

    .line 1732
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->height:I

    .line 1733
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    .line 1734
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    .line 1735
    const/4 v1, 0x0

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->displayUnit:I

    .line 1736
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    .line 1737
    const/4 v2, 0x0

    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->projectionPoseYaw:F

    .line 1738
    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    .line 1739
    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->projectionPoseRoll:F

    .line 1740
    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->projectionData:[B

    .line 1741
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    .line 1743
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->hasColorInfo:Z

    .line 1744
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->colorSpace:I

    .line 1746
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->colorTransfer:I

    .line 1748
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->colorRange:I

    .line 1750
    const/16 v1, 0x3e8

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->maxContentLuminance:I

    .line 1751
    const/16 v1, 0xc8

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->maxFrameAverageLuminance:I

    .line 1752
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityX:F

    .line 1753
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityY:F

    .line 1754
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityX:F

    .line 1755
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityY:F

    .line 1756
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityX:F

    .line 1757
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityY:F

    .line 1758
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityX:F

    .line 1759
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityY:F

    .line 1760
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->maxMasteringLuminance:F

    .line 1761
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->minMasteringLuminance:F

    .line 1764
    const/4 v1, 0x1

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->channelCount:I

    .line 1765
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    .line 1766
    const/16 v0, 0x1f40

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->sampleRate:I

    .line 1767
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->codecDelayNs:J

    .line 1768
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->seekPreRollNs:J

    .line 1773
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->flagDefault:Z

    .line 1774
    const-string v0, "eng"

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$1;

    .line 1704
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;-><init>()V

    return-void
.end method

.method static synthetic access$202(Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;
    .param p1, "x1"    # Ljava/lang/String;

    .line 1704
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    return-object p1
.end method

.method private getHdrStaticInfo()[B
    .locals 5

    .line 2045
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityX:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityX:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityX:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityX:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->maxMasteringLuminance:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->minMasteringLuminance:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 2054
    :cond_0
    const/16 v0, 0x19

    new-array v0, v0, [B

    .line 2055
    .local v0, "hdrStaticInfoData":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2056
    .local v1, "hdrStaticInfo":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 2057
    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityX:F

    const v3, 0x47435000    # 50000.0f

    mul-float v2, v2, v3

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2058
    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityY:F

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2059
    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityX:F

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2060
    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityY:F

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2061
    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityX:F

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2062
    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityY:F

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2063
    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityX:F

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2064
    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityY:F

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2065
    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->maxMasteringLuminance:F

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2066
    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->minMasteringLuminance:F

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2067
    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->maxContentLuminance:I

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2068
    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->maxFrameAverageLuminance:I

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2069
    return-object v0

    .line 2045
    .end local v0    # "hdrStaticInfoData":[B
    .end local v1    # "hdrStaticInfo":Ljava/nio/ByteBuffer;
    :cond_1
    :goto_0
    nop

    .line 2051
    const/4 v0, 0x0

    return-object v0
.end method

.method private static parseFourCcPrivate(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroid/util/Pair;
    .locals 9
    .param p0, "buffer"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[B>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 2083
    const/16 v0, 0x10

    :try_start_0
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 2084
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v0

    .line 2085
    .local v0, "compression":J
    const-wide/32 v2, 0x58564944

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-nez v5, :cond_0

    .line 2086
    new-instance v2, Landroid/util/Pair;

    const-string/jumbo v3, "video/divx"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 2087
    :cond_0
    const-wide/32 v2, 0x33363248

    cmp-long v5, v0, v2

    if-nez v5, :cond_1

    .line 2088
    new-instance v2, Landroid/util/Pair;

    const-string/jumbo v3, "video/3gpp"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 2089
    :cond_1
    const-wide/32 v2, 0x31435657

    cmp-long v5, v0, v2

    if-nez v5, :cond_4

    .line 2092
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v2

    add-int/lit8 v2, v2, 0x14

    .line 2093
    .local v2, "startOffset":I
    iget-object v3, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    .line 2094
    .local v3, "bufferData":[B
    nop

    move v4, v2

    .local v4, "offset":I
    :goto_0
    nop

    array-length v5, v3

    nop

    add-int/lit8 v5, v5, -0x4

    if-ge v4, v5, :cond_3

    .line 2095
    nop

    aget-byte v5, v3, v4

    nop

    if-nez v5, :cond_2

    nop

    add-int/lit8 v5, v4, 0x1

    aget-byte v5, v3, v5

    nop

    if-nez v5, :cond_2

    nop

    add-int/lit8 v5, v4, 0x2

    aget-byte v5, v3, v5

    nop

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    nop

    add-int/lit8 v5, v4, 0x3

    aget-byte v5, v3, v5

    nop

    const/16 v6, 0xf

    if-ne v5, v6, :cond_2

    .line 2100
    nop

    array-length v5, v3

    nop

    invoke-static {v3, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    nop

    .line 2101
    .local v5, "initializationData":[B
    nop

    new-instance v6, Landroid/util/Pair;

    nop

    const-string/jumbo v7, "video/wvc1"

    nop

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    nop

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    nop

    return-object v6

    .line 2095
    .end local v5    # "initializationData":[B
    :cond_2
    nop

    .line 2094
    nop

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 2104
    .end local v4    # "offset":I
    nop

    new-instance v4, Landroidx/media2/exoplayer/external/ParserException;

    nop

    const-string v5, "Failed to find FourCC VC1 initialization data"

    nop

    invoke-direct {v4, v5}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    nop

    .end local p0    # "buffer":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    throw v4
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2089
    .end local v2    # "startOffset":I
    .end local v3    # "bufferData":[B
    .restart local p0    # "buffer":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    :cond_4
    nop

    .line 2108
    .end local v0    # "compression":J
    nop

    .line 2110
    nop

    const-string v0, "MatroskaExtractor"

    const-string v1, "Unknown FourCC. Setting mimeType to video/x-unknown"

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2111
    nop

    new-instance v0, Landroid/util/Pair;

    const-string/jumbo v1, "video/x-unknown"

    invoke-direct {v0, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 2106
    :catch_0
    move-exception v0

    nop

    .line 2107
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    nop

    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    const-string v2, "Error parsing FourCC private data"

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    return-void
.end method

.method private static parseMsAcmCodecPrivate(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Z
    .locals 8
    .param p0, "buffer"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 2173
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v0

    .line 2174
    .local v0, "formatTag":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2175
    return v1

    .line 2176
    :cond_0
    const v2, 0xfffe

    const/4 v3, 0x0

    if-ne v0, v2, :cond_3

    .line 2177
    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 2178
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLong()J

    move-result-wide v4

    invoke-static {}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->access$400()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_2

    .line 2179
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLong()J

    move-result-wide v4

    invoke-static {}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->access$400()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v2, v4, v6

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_0

    .line 2178
    :cond_2
    nop

    .line 2179
    :goto_0
    const/4 v1, 0x0

    .line 2178
    :goto_1
    return v1

    .line 2181
    :cond_3
    return v3

    .line 2183
    .end local v0    # "formatTag":I
    :catch_0
    move-exception v0

    .line 2184
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    const-string v2, "Error parsing MS/ACM codec private"

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static parseVorbisCodecPrivate([B)Ljava/util/List;
    .locals 8
    .param p0, "codecPrivate"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 2123
    const/4 v0, 0x0

    :try_start_0
    aget-byte v1, p0, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 2126
    const/4 v1, 0x1

    .line 2127
    .local v1, "offset":I
    nop

    move v3, v0

    .line 2128
    .local v3, "vorbisInfoLength":I
    :goto_0
    nop

    aget-byte v4, p0, v1

    nop

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 2129
    nop

    add-int/lit16 v3, v3, 0xff

    .line 2130
    nop

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2132
    :cond_0
    nop

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "offset":I
    .local v4, "offset":I
    aget-byte v1, p0, v1

    nop

    add-int/2addr v3, v1

    .line 2134
    nop

    nop

    move v1, v0

    .line 2135
    .local v1, "vorbisSkipLength":I
    :goto_1
    nop

    aget-byte v6, p0, v4

    nop

    if-ne v6, v5, :cond_1

    .line 2136
    nop

    add-int/lit16 v1, v1, 0xff

    .line 2137
    nop

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2139
    :cond_1
    nop

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "offset":I
    .local v5, "offset":I
    aget-byte v4, p0, v4

    nop

    add-int/2addr v1, v4

    .line 2141
    nop

    aget-byte v4, p0, v5

    nop

    const/4 v6, 0x1

    if-ne v4, v6, :cond_4

    .line 2144
    nop

    new-array v4, v3, [B

    nop

    .line 2145
    .local v4, "vorbisInfo":[B
    nop

    invoke-static {p0, v5, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2146
    nop

    add-int/2addr v5, v3

    .line 2147
    nop

    aget-byte v6, p0, v5

    nop

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    .line 2150
    nop

    add-int/2addr v5, v1

    .line 2151
    nop

    aget-byte v6, p0, v5

    nop

    const/4 v7, 0x5

    if-ne v6, v7, :cond_2

    .line 2154
    nop

    array-length v6, p0

    nop

    sub-int/2addr v6, v5

    new-array v6, v6, [B

    nop

    .line 2155
    .local v6, "vorbisBooks":[B
    nop

    array-length v7, p0

    nop

    sub-int/2addr v7, v5

    invoke-static {p0, v5, v6, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2156
    nop

    new-instance v0, Ljava/util/ArrayList;

    nop

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    nop

    .line 2157
    .local v0, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    nop

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2158
    nop

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2159
    nop

    return-object v0

    .line 2152
    .end local v0    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v6    # "vorbisBooks":[B
    :cond_2
    nop

    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    nop

    const-string v2, "Error parsing vorbis codec private"

    nop

    invoke-direct {v0, v2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    nop

    .end local p0    # "codecPrivate":[B
    throw v0

    .line 2148
    .restart local p0    # "codecPrivate":[B
    :cond_3
    nop

    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    nop

    const-string v2, "Error parsing vorbis codec private"

    nop

    invoke-direct {v0, v2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    nop

    .end local p0    # "codecPrivate":[B
    throw v0

    .line 2142
    .end local v4    # "vorbisInfo":[B
    .restart local p0    # "codecPrivate":[B
    :cond_4
    nop

    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    nop

    const-string v2, "Error parsing vorbis codec private"

    nop

    invoke-direct {v0, v2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    nop

    .end local p0    # "codecPrivate":[B
    throw v0

    .line 2124
    .end local v1    # "vorbisSkipLength":I
    .end local v3    # "vorbisInfoLength":I
    .end local v5    # "offset":I
    .restart local p0    # "codecPrivate":[B
    :cond_5
    nop

    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    nop

    const-string v1, "Error parsing vorbis codec private"

    nop

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    nop

    .end local p0    # "codecPrivate":[B
    throw v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2160
    .restart local p0    # "codecPrivate":[B
    :catch_0
    move-exception v0

    nop

    .line 2161
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    nop

    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    const-string v2, "Error parsing vorbis codec private"

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    return-void
.end method


# virtual methods
.method public initializeOutput(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;I)V
    .locals 28
    .param p1, "output"    # Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;
    .param p2, "trackId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 1783
    move-object/from16 v0, p0

    const/4 v1, -0x1

    .line 1784
    .local v1, "maxInputSize":I
    const/4 v2, -0x1

    .line 1785
    .local v2, "pcmEncoding":I
    const/4 v3, 0x0

    .line 1786
    .local v3, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x4

    const/4 v7, 0x1

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, -0x1

    sparse-switch v5, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v5, "A_OPUS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xc

    goto/16 :goto_1

    :sswitch_1
    const-string v5, "A_FLAC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x16

    goto/16 :goto_1

    :sswitch_2
    const-string v5, "A_EAC3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x11

    goto/16 :goto_1

    :sswitch_3
    const-string v5, "V_MPEG2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x3

    goto/16 :goto_1

    :sswitch_4
    const-string v5, "S_TEXT/UTF8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x19

    goto/16 :goto_1

    :sswitch_5
    const-string v5, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x8

    goto/16 :goto_1

    :sswitch_6
    const-string v5, "S_TEXT/ASS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x1a

    goto/16 :goto_1

    :sswitch_7
    const-string v5, "A_PCM/INT/LIT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x18

    goto/16 :goto_1

    :sswitch_8
    const-string v5, "A_DTS/EXPRESS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x14

    goto/16 :goto_1

    :sswitch_9
    const-string v5, "V_THEORA"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xa

    goto/16 :goto_1

    :sswitch_a
    const-string v5, "S_HDMV/PGS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x1c

    goto/16 :goto_1

    :sswitch_b
    const-string v5, "V_VP9"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto/16 :goto_1

    :sswitch_c
    const-string v5, "V_VP8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto/16 :goto_1

    :sswitch_d
    const-string v5, "V_AV1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    goto/16 :goto_1

    :sswitch_e
    const-string v5, "A_DTS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x13

    goto/16 :goto_1

    :sswitch_f
    const-string v5, "A_AC3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x10

    goto/16 :goto_1

    :sswitch_10
    const-string v5, "A_AAC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xd

    goto/16 :goto_1

    :sswitch_11
    const-string v5, "A_DTS/LOSSLESS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x15

    goto/16 :goto_1

    :sswitch_12
    const-string v5, "S_VOBSUB"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x1b

    goto/16 :goto_1

    :sswitch_13
    const-string v5, "V_MPEG4/ISO/AVC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x7

    goto/16 :goto_1

    :sswitch_14
    const-string v5, "V_MPEG4/ISO/ASP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    goto/16 :goto_1

    :sswitch_15
    const-string v5, "S_DVBSUB"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x1d

    goto :goto_1

    :sswitch_16
    const-string v5, "V_MS/VFW/FOURCC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x9

    goto :goto_1

    :sswitch_17
    const-string v5, "A_MPEG/L3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xf

    goto :goto_1

    :sswitch_18
    const-string v5, "A_MPEG/L2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xe

    goto :goto_1

    :sswitch_19
    const-string v5, "A_VORBIS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xb

    goto :goto_1

    :sswitch_1a
    const-string v5, "A_TRUEHD"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x12

    goto :goto_1

    :sswitch_1b
    const-string v5, "A_MS/ACM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x17

    goto :goto_1

    :sswitch_1c
    const-string v5, "V_MPEG4/ISO/SP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_1

    :sswitch_1d
    const-string v5, "V_MPEG4/ISO/AP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x6

    goto :goto_1

    :goto_0
    const/4 v4, -0x1

    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 1921
    move-object/from16 v9, p1

    new-instance v4, Landroidx/media2/exoplayer/external/ParserException;

    const-string v5, "Unrecognized codec identifier."

    invoke-direct {v4, v5}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1915
    :pswitch_0
    const-string v4, "application/dvbsubs"

    .line 1917
    .local v4, "mimeType":Ljava/lang/String;
    new-array v5, v6, [B

    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    aget-byte v8, v6, v9

    aput-byte v8, v5, v9

    aget-byte v8, v6, v7

    aput-byte v8, v5, v7

    aget-byte v7, v6, v11

    aput-byte v7, v5, v11

    aget-byte v6, v6, v10

    aput-byte v6, v5, v10

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 1919
    goto/16 :goto_4

    .line 1912
    .end local v4    # "mimeType":Ljava/lang/String;
    :pswitch_1
    const-string v4, "application/pgs"

    .line 1913
    .restart local v4    # "mimeType":Ljava/lang/String;
    goto/16 :goto_4

    .line 1908
    .end local v4    # "mimeType":Ljava/lang/String;
    :pswitch_2
    const-string v4, "application/vobsub"

    .line 1909
    .restart local v4    # "mimeType":Ljava/lang/String;
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 1910
    goto/16 :goto_4

    .line 1905
    .end local v4    # "mimeType":Ljava/lang/String;
    :pswitch_3
    const-string v4, "text/x-ssa"

    .line 1906
    .restart local v4    # "mimeType":Ljava/lang/String;
    goto/16 :goto_4

    .line 1902
    .end local v4    # "mimeType":Ljava/lang/String;
    :pswitch_4
    const-string v4, "application/x-subrip"

    .line 1903
    .restart local v4    # "mimeType":Ljava/lang/String;
    goto/16 :goto_4

    .line 1892
    .end local v4    # "mimeType":Ljava/lang/String;
    :pswitch_5
    const-string v4, "audio/raw"

    .line 1893
    .restart local v4    # "mimeType":Ljava/lang/String;
    iget v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-static {v5}, Landroidx/media2/exoplayer/external/util/Util;->getPcmEncoding(I)I

    move-result v2

    .line 1894
    if-nez v2, :cond_1

    .line 1895
    const/4 v2, -0x1

    .line 1896
    const-string v4, "audio/x-unknown"

    .line 1897
    const-string v5, "MatroskaExtractor"

    iget v6, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x3c

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Unsupported PCM bit depth: "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ". Setting mimeType to "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1894
    :cond_1
    goto/16 :goto_4

    .line 1877
    .end local v4    # "mimeType":Ljava/lang/String;
    :pswitch_6
    const-string v4, "audio/raw"

    .line 1878
    .restart local v4    # "mimeType":Ljava/lang/String;
    new-instance v5, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-direct {v5, v6}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>([B)V

    invoke-static {v5}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->parseMsAcmCodecPrivate(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1879
    iget v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-static {v5}, Landroidx/media2/exoplayer/external/util/Util;->getPcmEncoding(I)I

    move-result v2

    .line 1880
    if-nez v2, :cond_2

    .line 1881
    const/4 v2, -0x1

    .line 1882
    const-string v4, "audio/x-unknown"

    .line 1883
    const-string v5, "MatroskaExtractor"

    iget v6, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x3c

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Unsupported PCM bit depth: "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ". Setting mimeType to "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1880
    :cond_2
    goto/16 :goto_4

    .line 1887
    :cond_3
    const-string v4, "audio/x-unknown"

    .line 1888
    const-string v5, "MatroskaExtractor"

    const-string v6, "Non-PCM MS/ACM is unsupported. Setting mimeType to "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_4
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v6, v7

    :goto_2
    invoke-static {v5, v6}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1890
    goto/16 :goto_4

    .line 1873
    .end local v4    # "mimeType":Ljava/lang/String;
    :pswitch_7
    const-string v4, "audio/flac"

    .line 1874
    .restart local v4    # "mimeType":Ljava/lang/String;
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 1875
    goto/16 :goto_4

    .line 1870
    .end local v4    # "mimeType":Ljava/lang/String;
    :pswitch_8
    const-string v4, "audio/vnd.dts.hd"

    .line 1871
    .restart local v4    # "mimeType":Ljava/lang/String;
    goto/16 :goto_4

    .line 1867
    .end local v4    # "mimeType":Ljava/lang/String;
    :pswitch_9
    const-string v4, "audio/vnd.dts"

    .line 1868
    .restart local v4    # "mimeType":Ljava/lang/String;
    goto/16 :goto_4

    .line 1862
    .end local v4    # "mimeType":Ljava/lang/String;
    :pswitch_a
    const-string v4, "audio/true-hd"

    .line 1863
    .restart local v4    # "mimeType":Ljava/lang/String;
    new-instance v5, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;

    invoke-direct {v5}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;-><init>()V

    iput-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;

    .line 1864
    goto/16 :goto_4

    .line 1859
    .end local v4    # "mimeType":Ljava/lang/String;
    :pswitch_b
    const-string v4, "audio/eac3"

    .line 1860
    .restart local v4    # "mimeType":Ljava/lang/String;
    goto/16 :goto_4

    .line 1856
    .end local v4    # "mimeType":Ljava/lang/String;
    :pswitch_c
    const-string v4, "audio/ac3"

    .line 1857
    .restart local v4    # "mimeType":Ljava/lang/String;
    goto/16 :goto_4

    .line 1852
    .end local v4    # "mimeType":Ljava/lang/String;
    :pswitch_d
    const-string v4, "audio/mpeg"

    .line 1853
    .restart local v4    # "mimeType":Ljava/lang/String;
    const/16 v1, 0x1000

    .line 1854
    goto/16 :goto_4

    .line 1848
    .end local v4    # "mimeType":Ljava/lang/String;
    :pswitch_e
    const-string v4, "audio/mpeg-L2"

    .line 1849
    .restart local v4    # "mimeType":Ljava/lang/String;
    const/16 v1, 0x1000

    .line 1850
    goto/16 :goto_4

    .line 1844
    .end local v4    # "mimeType":Ljava/lang/String;
    :pswitch_f
    const-string v4, "audio/mp4a-latm"

    .line 1845
    .restart local v4    # "mimeType":Ljava/lang/String;
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 1846
    goto/16 :goto_4

    .line 1834
    .end local v4    # "mimeType":Ljava/lang/String;
    :pswitch_10
    const-string v4, "audio/opus"

    .line 1835
    .restart local v4    # "mimeType":Ljava/lang/String;
    const/16 v1, 0x1680

    .line 1836
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v10}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v5

    .line 1837
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1838
    nop

    .line 1839
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    iget-wide v6, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->codecDelayNs:J

    invoke-virtual {v5, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    .line 1838
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1840
    nop

    .line 1841
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    iget-wide v6, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->seekPreRollNs:J

    invoke-virtual {v5, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    .line 1840
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1842
    goto/16 :goto_4

    .line 1829
    .end local v4    # "mimeType":Ljava/lang/String;
    :pswitch_11
    const-string v4, "audio/vorbis"

    .line 1830
    .restart local v4    # "mimeType":Ljava/lang/String;
    const/16 v1, 0x2000

    .line 1831
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-static {v5}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->parseVorbisCodecPrivate([B)Ljava/util/List;

    move-result-object v3

    .line 1832
    goto :goto_4

    .line 1826
    .end local v4    # "mimeType":Ljava/lang/String;
    :pswitch_12
    const-string/jumbo v4, "video/x-unknown"

    .line 1827
    .restart local v4    # "mimeType":Ljava/lang/String;
    goto :goto_4

    .line 1819
    .end local v4    # "mimeType":Ljava/lang/String;
    :pswitch_13
    new-instance v4, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-direct {v4, v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>([B)V

    invoke-static {v4}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->parseFourCcPrivate(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v4

    .line 1820
    .local v4, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<[B>;>;"
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 1821
    .local v5, "mimeType":Ljava/lang/String;
    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v3, v6

    check-cast v3, Ljava/util/List;

    .line 1822
    move-object v4, v5

    goto :goto_4

    .line 1813
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<[B>;>;"
    .end local v5    # "mimeType":Ljava/lang/String;
    :pswitch_14
    const-string/jumbo v4, "video/hevc"

    .line 1814
    .local v4, "mimeType":Ljava/lang/String;
    new-instance v5, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-direct {v5, v6}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>([B)V

    invoke-static {v5}, Landroidx/media2/exoplayer/external/video/HevcConfig;->parse(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/video/HevcConfig;

    move-result-object v5

    .line 1815
    .local v5, "hevcConfig":Landroidx/media2/exoplayer/external/video/HevcConfig;
    iget-object v3, v5, Landroidx/media2/exoplayer/external/video/HevcConfig;->initializationData:Ljava/util/List;

    .line 1816
    iget v6, v5, Landroidx/media2/exoplayer/external/video/HevcConfig;->nalUnitLengthFieldLength:I

    iput v6, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    .line 1817
    goto :goto_4

    .line 1807
    .end local v4    # "mimeType":Ljava/lang/String;
    .end local v5    # "hevcConfig":Landroidx/media2/exoplayer/external/video/HevcConfig;
    :pswitch_15
    const-string/jumbo v4, "video/avc"

    .line 1808
    .restart local v4    # "mimeType":Ljava/lang/String;
    new-instance v5, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-direct {v5, v6}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>([B)V

    invoke-static {v5}, Landroidx/media2/exoplayer/external/video/AvcConfig;->parse(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/video/AvcConfig;

    move-result-object v5

    .line 1809
    .local v5, "avcConfig":Landroidx/media2/exoplayer/external/video/AvcConfig;
    iget-object v3, v5, Landroidx/media2/exoplayer/external/video/AvcConfig;->initializationData:Ljava/util/List;

    .line 1810
    iget v6, v5, Landroidx/media2/exoplayer/external/video/AvcConfig;->nalUnitLengthFieldLength:I

    iput v6, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    .line 1811
    goto :goto_4

    .line 1802
    .end local v4    # "mimeType":Ljava/lang/String;
    .end local v5    # "avcConfig":Landroidx/media2/exoplayer/external/video/AvcConfig;
    :pswitch_16
    const-string/jumbo v4, "video/mp4v-es"

    .line 1804
    .restart local v4    # "mimeType":Ljava/lang/String;
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    if-nez v5, :cond_5

    const/4 v5, 0x0

    goto :goto_3

    :cond_5
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    :goto_3
    move-object v3, v5

    .line 1805
    goto :goto_4

    .line 1797
    .end local v4    # "mimeType":Ljava/lang/String;
    :pswitch_17
    const-string/jumbo v4, "video/mpeg2"

    .line 1798
    .restart local v4    # "mimeType":Ljava/lang/String;
    goto :goto_4

    .line 1794
    .end local v4    # "mimeType":Ljava/lang/String;
    :pswitch_18
    const-string/jumbo v4, "video/av01"

    .line 1795
    .restart local v4    # "mimeType":Ljava/lang/String;
    goto :goto_4

    .line 1791
    .end local v4    # "mimeType":Ljava/lang/String;
    :pswitch_19
    const-string/jumbo v4, "video/x-vnd.on2.vp9"

    .line 1792
    .restart local v4    # "mimeType":Ljava/lang/String;
    goto :goto_4

    .line 1788
    .end local v4    # "mimeType":Ljava/lang/String;
    :pswitch_1a
    const-string/jumbo v4, "video/x-vnd.on2.vp8"

    .line 1789
    .restart local v4    # "mimeType":Ljava/lang/String;
    nop

    .line 1926
    :goto_4
    const/4 v5, 0x0

    .line 1927
    .local v5, "selectionFlags":I
    iget-boolean v6, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->flagDefault:Z

    or-int/2addr v5, v6

    .line 1928
    iget-boolean v6, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->flagForced:Z

    if-eqz v6, :cond_6

    const/4 v9, 0x2

    nop

    :cond_6
    or-int/2addr v5, v9

    .line 1931
    invoke-static {v4}, Landroidx/media2/exoplayer/external/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1932
    const/4 v6, 0x1

    .line 1933
    .local v6, "type":I
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    const/16 v16, -0x1

    iget v7, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->channelCount:I

    iget v8, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->sampleRate:I

    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    iget-object v10, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    move-object v14, v4

    move/from16 v17, v1

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v9

    move/from16 v23, v5

    move-object/from16 v24, v10

    invoke-static/range {v13 .. v24}, Landroidx/media2/exoplayer/external/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v7

    goto/16 :goto_c

    .line 1936
    .end local v6    # "type":I
    :cond_7
    invoke-static {v4}, Landroidx/media2/exoplayer/external/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 1937
    const/4 v6, 0x2

    .line 1938
    .restart local v6    # "type":I
    iget v7, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->displayUnit:I

    if-nez v7, :cond_a

    .line 1939
    iget v7, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    if-ne v7, v12, :cond_8

    iget v7, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->width:I

    nop

    :cond_8
    iput v7, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    .line 1940
    iget v7, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    if-ne v7, v12, :cond_9

    iget v7, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->height:I

    nop

    :cond_9
    iput v7, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    goto :goto_5

    .line 1938
    :cond_a
    nop

    .line 1942
    :goto_5
    const/high16 v7, -0x40800000    # -1.0f

    .line 1943
    .local v7, "pixelWidthHeightRatio":F
    iget v8, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    if-eq v8, v12, :cond_b

    iget v9, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    if-eq v9, v12, :cond_b

    .line 1944
    iget v10, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->height:I

    mul-int v10, v10, v8

    int-to-float v8, v10

    iget v10, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->width:I

    mul-int v10, v10, v9

    int-to-float v9, v10

    div-float/2addr v8, v9

    move v7, v8

    goto :goto_6

    .line 1943
    :cond_b
    nop

    .line 1946
    :goto_6
    const/4 v8, 0x0

    .line 1947
    .local v8, "colorInfo":Landroidx/media2/exoplayer/external/video/ColorInfo;
    iget-boolean v9, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->hasColorInfo:Z

    if-eqz v9, :cond_c

    .line 1948
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->getHdrStaticInfo()[B

    move-result-object v9

    .line 1949
    .local v9, "hdrStaticInfo":[B
    new-instance v10, Landroidx/media2/exoplayer/external/video/ColorInfo;

    iget v11, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->colorSpace:I

    iget v12, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->colorRange:I

    iget v13, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->colorTransfer:I

    invoke-direct {v10, v11, v12, v13, v9}, Landroidx/media2/exoplayer/external/video/ColorInfo;-><init>(III[B)V

    move-object v8, v10

    goto :goto_7

    .line 1947
    .end local v9    # "hdrStaticInfo":[B
    :cond_c
    nop

    .line 1951
    :goto_7
    const/4 v9, -0x1

    .line 1953
    .local v9, "rotationDegrees":I
    const-string v10, "htc_video_rotA-000"

    iget-object v11, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 1954
    const/4 v9, 0x0

    goto :goto_8

    .line 1955
    :cond_d
    const-string v10, "htc_video_rotA-090"

    iget-object v11, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 1956
    const/16 v9, 0x5a

    goto :goto_8

    .line 1957
    :cond_e
    const-string v10, "htc_video_rotA-180"

    iget-object v11, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 1958
    const/16 v9, 0xb4

    goto :goto_8

    .line 1959
    :cond_f
    const-string v10, "htc_video_rotA-270"

    iget-object v11, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 1960
    const/16 v9, 0x10e

    goto :goto_8

    .line 1959
    :cond_10
    nop

    .line 1962
    :goto_8
    iget v10, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    if-nez v10, :cond_18

    iget v10, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->projectionPoseYaw:F

    .line 1963
    const/4 v11, 0x0

    invoke-static {v10, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v10

    if-nez v10, :cond_17

    iget v10, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    .line 1964
    invoke-static {v10, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v10

    if-nez v10, :cond_16

    .line 1966
    iget v10, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->projectionPoseRoll:F

    invoke-static {v10, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v10

    if-nez v10, :cond_11

    .line 1967
    const/4 v9, 0x0

    goto :goto_a

    .line 1968
    :cond_11
    iget v10, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    const/high16 v11, 0x42b40000    # 90.0f

    invoke-static {v10, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v10

    if-nez v10, :cond_12

    .line 1969
    const/16 v9, 0x5a

    goto :goto_a

    .line 1970
    :cond_12
    iget v10, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    const/high16 v11, -0x3ccc0000    # -180.0f

    invoke-static {v10, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v10

    if-eqz v10, :cond_15

    iget v10, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    const/high16 v11, 0x43340000    # 180.0f

    .line 1971
    invoke-static {v10, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v10

    if-nez v10, :cond_13

    goto :goto_9

    .line 1973
    :cond_13
    iget v10, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    const/high16 v11, -0x3d4c0000    # -90.0f

    invoke-static {v10, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v10

    if-nez v10, :cond_14

    .line 1974
    const/16 v9, 0x10e

    goto :goto_a

    .line 1973
    :cond_14
    goto :goto_a

    .line 1970
    :cond_15
    nop

    .line 1972
    :goto_9
    const/16 v9, 0xb4

    goto :goto_a

    .line 1964
    :cond_16
    goto :goto_a

    .line 1963
    :cond_17
    goto :goto_a

    .line 1962
    :cond_18
    nop

    .line 1977
    :goto_a
    nop

    .line 1979
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const/16 v16, -0x1

    iget v10, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->width:I

    iget v11, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->height:I

    const/high16 v20, -0x40800000    # -1.0f

    iget-object v12, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->projectionData:[B

    iget v14, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    iget-object v15, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    .line 1978
    move/from16 v25, v14

    move-object v14, v4

    move-object/from16 v27, v15

    const/4 v15, 0x0

    move/from16 v17, v1

    move/from16 v18, v10

    move/from16 v19, v11

    move-object/from16 v21, v3

    move/from16 v22, v9

    move/from16 v23, v7

    move-object/from16 v24, v12

    move-object/from16 v26, v8

    invoke-static/range {v13 .. v27}, Landroidx/media2/exoplayer/external/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILandroidx/media2/exoplayer/external/video/ColorInfo;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v7

    .line 1994
    .end local v8    # "colorInfo":Landroidx/media2/exoplayer/external/video/ColorInfo;
    .end local v9    # "rotationDegrees":I
    .local v7, "format":Landroidx/media2/exoplayer/external/Format;
    goto/16 :goto_c

    .end local v6    # "type":I
    .end local v7    # "format":Landroidx/media2/exoplayer/external/Format;
    :cond_19
    const-string v6, "application/x-subrip"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 1995
    const/4 v6, 0x3

    .line 1996
    .restart local v6    # "type":I
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    invoke-static {v7, v4, v5, v8, v9}, Landroidx/media2/exoplayer/external/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v7

    goto/16 :goto_c

    .line 1998
    .end local v6    # "type":I
    :cond_1a
    const-string v6, "text/x-ssa"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 1999
    const/4 v6, 0x3

    .line 2000
    .restart local v6    # "type":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v11}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v7

    .line 2001
    invoke-static {}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->access$300()[B

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2002
    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2003
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    const/16 v16, -0x1

    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    const/16 v19, -0x1

    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    const-wide v21, 0x7fffffffffffffffL

    move-object v14, v4

    move/from16 v17, v5

    move-object/from16 v18, v7

    move-object/from16 v20, v8

    move-object/from16 v23, v3

    invoke-static/range {v13 .. v23}, Landroidx/media2/exoplayer/external/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroidx/media2/exoplayer/external/drm/DrmInitData;JLjava/util/List;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v7

    goto :goto_c

    .line 2006
    .end local v6    # "type":I
    :cond_1b
    const-string v6, "application/vobsub"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1e

    const-string v6, "application/pgs"

    .line 2007
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1d

    const-string v6, "application/dvbsubs"

    .line 2008
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    goto :goto_b

    .line 2021
    :cond_1c
    new-instance v6, Landroidx/media2/exoplayer/external/ParserException;

    const-string v7, "Unexpected MIME type."

    invoke-direct {v6, v7}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2007
    :cond_1d
    goto :goto_b

    .line 2006
    :cond_1e
    nop

    .line 2009
    :goto_b
    const/4 v6, 0x3

    .line 2010
    .restart local v6    # "type":I
    nop

    .line 2012
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    const/16 v16, -0x1

    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    .line 2011
    move-object v14, v4

    move/from16 v17, v5

    move-object/from16 v18, v3

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    invoke-static/range {v13 .. v20}, Landroidx/media2/exoplayer/external/Format;->createImageSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v7

    .line 2024
    .restart local v7    # "format":Landroidx/media2/exoplayer/external/Format;
    :goto_c
    iget v8, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->number:I

    move-object/from16 v9, p1

    invoke-interface {v9, v8, v6}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->track(II)Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    move-result-object v8

    iput-object v8, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 2025
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    invoke-interface {v8, v7}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->format(Landroidx/media2/exoplayer/external/Format;)V

    .line 2026
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ce7f5de -> :sswitch_1d
        -0x7ce7f3b0 -> :sswitch_1c
        -0x76567dc0 -> :sswitch_1b
        -0x6a615338 -> :sswitch_1a
        -0x672350af -> :sswitch_19
        -0x585f4fce -> :sswitch_18
        -0x585f4fcd -> :sswitch_17
        -0x51dc40b2 -> :sswitch_16
        -0x37a9c464 -> :sswitch_15
        -0x2016c535 -> :sswitch_14
        -0x2016c4e5 -> :sswitch_13
        -0x19552dbd -> :sswitch_12
        -0x1538b2ba -> :sswitch_11
        0x3c02325 -> :sswitch_10
        0x3c02353 -> :sswitch_f
        0x3c030c5 -> :sswitch_e
        0x4e81333 -> :sswitch_d
        0x4e86155 -> :sswitch_c
        0x4e86156 -> :sswitch_b
        0x5e8da3e -> :sswitch_a
        0x1a8350d6 -> :sswitch_9
        0x2056f406 -> :sswitch_8
        0x2b453ce4 -> :sswitch_7
        0x2c0618eb -> :sswitch_6
        0x32fdf009 -> :sswitch_5
        0x54c61e47 -> :sswitch_4
        0x6bd6c624 -> :sswitch_3
        0x7446132a -> :sswitch_2
        0x7446b0a6 -> :sswitch_1
        0x744ad97d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public outputPendingSampleMetadata()V
    .locals 1

    .line 2030
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;

    if-eqz v0, :cond_0

    .line 2031
    invoke-virtual {v0, p0}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->outputPendingSampleMetadata(Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;)V

    goto :goto_0

    .line 2030
    :cond_0
    nop

    .line 2033
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 1

    .line 2037
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;

    if-eqz v0, :cond_0

    .line 2038
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->reset()V

    goto :goto_0

    .line 2037
    :cond_0
    nop

    .line 2040
    :goto_0
    return-void
.end method
