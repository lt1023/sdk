.class public final Landroidx/media2/exoplayer/external/extractor/wav/WavExtractor;
.super Ljava/lang/Object;
.source "WavExtractor.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/Extractor;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final FACTORY:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

.field private static final MAX_INPUT_SIZE:I = 0x8000


# instance fields
.field private bytesPerFrame:I

.field private extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

.field private pendingBytes:I

.field private trackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

.field private wavHeader:Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/wav/WavExtractor$$Lambda$0;->$instance:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/wav/WavExtractor;->FACTORY:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final synthetic lambda$static$0$WavExtractor()[Landroidx/media2/exoplayer/external/extractor/Extractor;
    .locals 3

    .line 43
    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media2/exoplayer/external/extractor/Extractor;

    new-instance v1, Landroidx/media2/exoplayer/external/extractor/wav/WavExtractor;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/extractor/wav/WavExtractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public init(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;)V
    .locals 2
    .param p1, "output"    # Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    .line 61
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/wav/WavExtractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    .line 62
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->track(II)Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/wav/WavExtractor;->trackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/wav/WavExtractor;->wavHeader:Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;

    .line 64
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->endTracks()V

    .line 65
    return-void
.end method

.method public read(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;)I
    .locals 21
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Landroidx/media2/exoplayer/external/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 80
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/wav/WavExtractor;->wavHeader:Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;

    if-nez v2, :cond_1

    .line 81
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/wav/WavHeaderReader;->peek(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;

    move-result-object v2

    iput-object v2, v0, Landroidx/media2/exoplayer/external/extractor/wav/WavExtractor;->wavHeader:Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;

    .line 82
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/wav/WavExtractor;->wavHeader:Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;

    if-eqz v2, :cond_0

    .line 86
    const/4 v3, 0x0

    const-string v4, "audio/raw"

    const/4 v5, 0x0

    .line 87
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;->getBitrate()I

    move-result v6

    const v7, 0x8000

    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/wav/WavExtractor;->wavHeader:Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;->getNumChannels()I

    move-result v8

    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/wav/WavExtractor;->wavHeader:Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;

    .line 88
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;->getSampleRateHz()I

    move-result v9

    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/wav/WavExtractor;->wavHeader:Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;->getEncoding()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 86
    invoke-static/range {v3 .. v14}, Landroidx/media2/exoplayer/external/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v2

    .line 89
    .local v2, "format":Landroidx/media2/exoplayer/external/Format;
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/wav/WavExtractor;->trackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    invoke-interface {v3, v2}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->format(Landroidx/media2/exoplayer/external/Format;)V

    .line 90
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/wav/WavExtractor;->wavHeader:Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;->getBytesPerFrame()I

    move-result v3

    iput v3, v0, Landroidx/media2/exoplayer/external/extractor/wav/WavExtractor;->bytesPerFrame:I

    goto :goto_0

    .line 84
    .end local v2    # "format":Landroidx/media2/exoplayer/external/Format;
    :cond_0
    new-instance v2, Landroidx/media2/exoplayer/external/ParserException;

    const-string v3, "Unsupported or unrecognized wav header."

    invoke-direct {v2, v3}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    :cond_1
    nop

    .line 93
    :goto_0
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/wav/WavExtractor;->wavHeader:Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;->hasDataBounds()Z

    move-result v2

    if-nez v2, :cond_2

    .line 94
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/wav/WavExtractor;->wavHeader:Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;

    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/extractor/wav/WavHeaderReader;->skipToData(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;)V

    .line 95
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/wav/WavExtractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/wav/WavExtractor;->wavHeader:Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;

    invoke-interface {v2, v3}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->seekMap(Landroidx/media2/exoplayer/external/extractor/SeekMap;)V

    goto :goto_1

    .line 93
    :cond_2
    nop

    .line 98
    :goto_1
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/wav/WavExtractor;->wavHeader:Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;->getDataLimit()J

    move-result-wide v2

    .line 99
    .local v2, "dataLimit":J
    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    cmp-long v8, v2, v4

    if-eqz v8, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    invoke-static {v4}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 101
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    sub-long v4, v2, v4

    .line 102
    .local v4, "bytesLeft":J
    const-wide/16 v8, 0x0

    const/4 v10, -0x1

    cmp-long v11, v4, v8

    if-gtz v11, :cond_4

    .line 103
    return v10

    .line 106
    :cond_4
    const v8, 0x8000

    iget v9, v0, Landroidx/media2/exoplayer/external/extractor/wav/WavExtractor;->pendingBytes:I

    sub-int/2addr v8, v9

    int-to-long v8, v8

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v9, v8

    .line 107
    .local v9, "maxBytesToRead":I
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/wav/WavExtractor;->trackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    invoke-interface {v8, v1, v9, v6}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;IZ)I

    move-result v6

    .line 108
    .local v6, "bytesAppended":I
    if-eq v6, v10, :cond_5

    .line 109
    iget v8, v0, Landroidx/media2/exoplayer/external/extractor/wav/WavExtractor;->pendingBytes:I

    add-int/2addr v8, v6

    iput v8, v0, Landroidx/media2/exoplayer/external/extractor/wav/WavExtractor;->pendingBytes:I

    goto :goto_3

    .line 108
    :cond_5
    nop

    .line 113
    :goto_3
    iget v8, v0, Landroidx/media2/exoplayer/external/extractor/wav/WavExtractor;->pendingBytes:I

    iget v11, v0, Landroidx/media2/exoplayer/external/extractor/wav/WavExtractor;->bytesPerFrame:I

    div-int/2addr v8, v11

    .line 114
    .local v8, "pendingFrames":I
    if-lez v8, :cond_6

    .line 115
    iget-object v11, v0, Landroidx/media2/exoplayer/external/extractor/wav/WavExtractor;->wavHeader:Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;

    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v12

    iget v14, v0, Landroidx/media2/exoplayer/external/extractor/wav/WavExtractor;->pendingBytes:I

    int-to-long v14, v14

    sub-long/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;->getTimeUs(J)J

    move-result-wide v11

    .line 116
    .local v11, "timeUs":J
    iget v13, v0, Landroidx/media2/exoplayer/external/extractor/wav/WavExtractor;->bytesPerFrame:I

    mul-int v13, v13, v8

    .line 117
    .local v13, "size":I
    iget v14, v0, Landroidx/media2/exoplayer/external/extractor/wav/WavExtractor;->pendingBytes:I

    sub-int/2addr v14, v13

    iput v14, v0, Landroidx/media2/exoplayer/external/extractor/wav/WavExtractor;->pendingBytes:I

    .line 118
    iget-object v14, v0, Landroidx/media2/exoplayer/external/extractor/wav/WavExtractor;->trackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    const/16 v17, 0x1

    iget v15, v0, Landroidx/media2/exoplayer/external/extractor/wav/WavExtractor;->pendingBytes:I

    const/16 v20, 0x0

    move/from16 v19, v15

    move-wide v15, v11

    move/from16 v18, v13

    invoke-interface/range {v14 .. v20}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;)V

    goto :goto_4

    .line 114
    .end local v11    # "timeUs":J
    .end local v13    # "size":I
    :cond_6
    nop

    .line 121
    :goto_4
    if-ne v6, v10, :cond_7

    const/4 v7, -0x1

    nop

    :cond_7
    return v7
.end method

.method public release()V
    .locals 0

    .line 75
    return-void
.end method

.method public seek(JJ)V
    .locals 1
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/wav/WavExtractor;->pendingBytes:I

    .line 70
    return-void
.end method

.method public sniff(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z
    .locals 1
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 56
    invoke-static {p1}, Landroidx/media2/exoplayer/external/extractor/wav/WavHeaderReader;->peek(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
