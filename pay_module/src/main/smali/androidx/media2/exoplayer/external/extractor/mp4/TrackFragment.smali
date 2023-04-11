.class final Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;
.super Ljava/lang/Object;
.source "TrackFragment.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field public atomPosition:J

.field public auxiliaryDataPosition:J

.field public dataPosition:J

.field public definesEncryptionData:Z

.field public header:Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;

.field public nextFragmentDecodeTime:J

.field public sampleCompositionTimeOffsetTable:[I

.field public sampleCount:I

.field public sampleDecodingTimeTable:[J

.field public sampleEncryptionData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field public sampleEncryptionDataLength:I

.field public sampleEncryptionDataNeedsFill:Z

.field public sampleHasSubsampleEncryptionTable:[Z

.field public sampleIsSyncFrameTable:[Z

.field public sampleSizeTable:[I

.field public trackEncryptionBox:Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;

.field public trunCount:I

.field public trunDataPosition:[J

.field public trunLength:[I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fillEncryptionData(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)V
    .locals 3
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 179
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleEncryptionData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleEncryptionDataLength:I

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BII)V

    .line 180
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleEncryptionData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 181
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    .line 182
    return-void
.end method

.method public fillEncryptionData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V
    .locals 3
    .param p1, "source"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 190
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleEncryptionData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleEncryptionDataLength:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 191
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleEncryptionData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 192
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    .line 193
    return-void
.end method

.method public getSamplePresentationTime(I)J
    .locals 5
    .param p1, "index"    # I

    .line 196
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleDecodingTimeTable:[J

    aget-wide v1, v0, p1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleCompositionTimeOffsetTable:[I

    aget v0, v0, p1

    int-to-long v3, v0

    add-long/2addr v1, v3

    return-wide v1
.end method

.method public initEncryptionData(I)V
    .locals 1
    .param p1, "length"    # I

    .line 165
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleEncryptionData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v0

    if-ge v0, p1, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    .line 166
    :cond_1
    :goto_0
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {v0, p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleEncryptionData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 168
    :goto_1
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleEncryptionDataLength:I

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    .line 170
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    .line 171
    return-void
.end method

.method public initTables(II)V
    .locals 2
    .param p1, "trunCount"    # I
    .param p2, "sampleCount"    # I

    .line 137
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->trunCount:I

    .line 138
    iput p2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleCount:I

    .line 139
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->trunLength:[I

    if-eqz v0, :cond_1

    array-length v0, v0

    if-ge v0, p1, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    .line 140
    :cond_1
    :goto_0
    new-array v0, p1, [J

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->trunDataPosition:[J

    .line 141
    new-array v0, p1, [I

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->trunLength:[I

    .line 143
    :goto_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    if-eqz v0, :cond_3

    array-length v0, v0

    if-ge v0, p2, :cond_2

    goto :goto_2

    :cond_2
    goto :goto_3

    .line 146
    :cond_3
    :goto_2
    mul-int/lit8 v0, p2, 0x7d

    div-int/lit8 v0, v0, 0x64

    .line 147
    .local v0, "tableSize":I
    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    .line 148
    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleCompositionTimeOffsetTable:[I

    .line 149
    new-array v1, v0, [J

    iput-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleDecodingTimeTable:[J

    .line 150
    new-array v1, v0, [Z

    iput-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    .line 151
    new-array v1, v0, [Z

    iput-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    .line 153
    .end local v0    # "tableSize":I
    :goto_3
    return-void
.end method

.method public reset()V
    .locals 3

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->trunCount:I

    .line 122
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    .line 123
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    .line 124
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->trackEncryptionBox:Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;

    .line 126
    return-void
.end method

.method public sampleHasSubsampleEncryptionTable(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 201
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
