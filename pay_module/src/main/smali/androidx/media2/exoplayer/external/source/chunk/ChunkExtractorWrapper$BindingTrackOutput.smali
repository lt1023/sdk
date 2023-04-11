.class final Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;
.super Ljava/lang/Object;
.source "ChunkExtractorWrapper.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/TrackOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BindingTrackOutput"
.end annotation


# instance fields
.field private final dummyTrackOutput:Landroidx/media2/exoplayer/external/extractor/DummyTrackOutput;

.field private endTimeUs:J

.field private final id:I

.field private final manifestFormat:Landroidx/media2/exoplayer/external/Format;

.field public sampleFormat:Landroidx/media2/exoplayer/external/Format;

.field private trackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

.field private final type:I


# direct methods
.method public constructor <init>(IILandroidx/media2/exoplayer/external/Format;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "type"    # I
    .param p3, "manifestFormat"    # Landroidx/media2/exoplayer/external/Format;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput p1, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->id:I

    .line 180
    iput p2, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->type:I

    .line 181
    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->manifestFormat:Landroidx/media2/exoplayer/external/Format;

    .line 182
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/DummyTrackOutput;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/extractor/DummyTrackOutput;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->dummyTrackOutput:Landroidx/media2/exoplayer/external/extractor/DummyTrackOutput;

    .line 183
    return-void
.end method


# virtual methods
.method public bind(Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;J)V
    .locals 2
    .param p1, "trackOutputProvider"    # Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;
    .param p2, "endTimeUs"    # J

    .line 186
    if-nez p1, :cond_0

    .line 187
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->dummyTrackOutput:Landroidx/media2/exoplayer/external/extractor/DummyTrackOutput;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->trackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 188
    return-void

    .line 190
    :cond_0
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->endTimeUs:J

    .line 191
    iget v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->id:I

    iget v1, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->type:I

    invoke-interface {p1, v0, v1}, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;->track(II)Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->trackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 192
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->sampleFormat:Landroidx/media2/exoplayer/external/Format;

    if-eqz v0, :cond_1

    .line 193
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->trackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    invoke-interface {v1, v0}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->format(Landroidx/media2/exoplayer/external/Format;)V

    goto :goto_0

    .line 192
    :cond_1
    nop

    .line 195
    :goto_0
    return-void
.end method

.method public format(Landroidx/media2/exoplayer/external/Format;)V
    .locals 2
    .param p1, "format"    # Landroidx/media2/exoplayer/external/Format;

    .line 199
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->manifestFormat:Landroidx/media2/exoplayer/external/Format;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/Format;->copyWithManifestFormatInfo(Landroidx/media2/exoplayer/external/Format;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    goto :goto_0

    .line 200
    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->sampleFormat:Landroidx/media2/exoplayer/external/Format;

    .line 201
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->trackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->sampleFormat:Landroidx/media2/exoplayer/external/Format;

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->format(Landroidx/media2/exoplayer/external/Format;)V

    .line 202
    return-void
.end method

.method public sampleData(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;IZ)I
    .locals 1
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .param p2, "length"    # I
    .param p3, "allowEndOfInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 207
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->trackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;IZ)I

    move-result v0

    return v0
.end method

.method public sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V
    .locals 1
    .param p1, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p2, "length"    # I

    .line 212
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->trackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    invoke-interface {v0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 213
    return-void
.end method

.method public sampleMetadata(JIIILandroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;)V
    .locals 8
    .param p1, "timeUs"    # J
    .param p3, "flags"    # I
    .param p4, "size"    # I
    .param p5, "offset"    # I
    .param p6, "cryptoData"    # Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;

    .line 218
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->endTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 219
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->dummyTrackOutput:Landroidx/media2/exoplayer/external/extractor/DummyTrackOutput;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->trackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    goto :goto_0

    .line 218
    :cond_0
    nop

    .line 221
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->trackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;)V

    .line 222
    return-void
.end method
