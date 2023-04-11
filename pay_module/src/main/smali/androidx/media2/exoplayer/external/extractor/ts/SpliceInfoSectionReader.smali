.class public final Landroidx/media2/exoplayer/external/extractor/ts/SpliceInfoSectionReader;
.super Ljava/lang/Object;
.source "SpliceInfoSectionReader.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/ts/SectionPayloadReader;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private formatDeclared:Z

.field private output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

.field private timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V
    .locals 8
    .param p1, "sectionData"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 53
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/SpliceInfoSectionReader;->formatDeclared:Z

    if-nez v0, :cond_1

    .line 54
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/SpliceInfoSectionReader;->timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->getTimestampOffsetUs()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 56
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/SpliceInfoSectionReader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    const/4 v1, 0x0

    const-string v2, "application/x-scte35"

    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/SpliceInfoSectionReader;->timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    .line 59
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->getTimestampOffsetUs()J

    move-result-wide v3

    .line 58
    invoke-static {v1, v2, v3, v4}, Landroidx/media2/exoplayer/external/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;J)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->format(Landroidx/media2/exoplayer/external/Format;)V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/SpliceInfoSectionReader;->formatDeclared:Z

    goto :goto_0

    .line 53
    :cond_1
    nop

    .line 62
    :goto_0
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    .line 63
    .local v0, "sampleSize":I
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/SpliceInfoSectionReader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 64
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/SpliceInfoSectionReader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/SpliceInfoSectionReader;->timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->getLastAdjustedTimestampUs()J

    move-result-wide v2

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v5, v0

    invoke-interface/range {v1 .. v7}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;)V

    .line 66
    return-void
.end method

.method public init(Landroidx/media2/exoplayer/external/util/TimestampAdjuster;Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 5
    .param p1, "timestampAdjuster"    # Landroidx/media2/exoplayer/external/util/TimestampAdjuster;
    .param p2, "extractorOutput"    # Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;
    .param p3, "idGenerator"    # Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .line 44
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/SpliceInfoSectionReader;->timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    .line 45
    invoke-virtual {p3}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 46
    invoke-virtual {p3}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x4

    invoke-interface {p2, v0, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->track(II)Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/SpliceInfoSectionReader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 47
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/SpliceInfoSectionReader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    invoke-virtual {p3}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "application/x-scte35"

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-static {v1, v2, v3, v4, v3}, Landroidx/media2/exoplayer/external/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->format(Landroidx/media2/exoplayer/external/Format;)V

    .line 49
    return-void
.end method
