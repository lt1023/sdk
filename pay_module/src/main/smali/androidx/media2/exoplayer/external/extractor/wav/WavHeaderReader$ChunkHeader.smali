.class final Landroidx/media2/exoplayer/external/extractor/wav/WavHeaderReader$ChunkHeader;
.super Ljava/lang/Object;
.source "WavHeaderReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/wav/WavHeaderReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ChunkHeader"
.end annotation


# static fields
.field public static final SIZE_IN_BYTES:I = 0x8


# instance fields
.field public final id:I

.field public final size:J


# direct methods
.method private constructor <init>(IJ)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "size"    # J

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/wav/WavHeaderReader$ChunkHeader;->id:I

    .line 170
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/extractor/wav/WavHeaderReader$ChunkHeader;->size:J

    .line 171
    return-void
.end method

.method public static peek(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/extractor/wav/WavHeaderReader$ChunkHeader;
    .locals 4
    .param p0, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .param p1, "scratch"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 184
    iget-object v0, p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-interface {p0, v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 185
    invoke-virtual {p1, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 187
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 188
    .local v0, "id":I
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v1

    .line 190
    .local v1, "size":J
    new-instance v3, Landroidx/media2/exoplayer/external/extractor/wav/WavHeaderReader$ChunkHeader;

    invoke-direct {v3, v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/wav/WavHeaderReader$ChunkHeader;-><init>(IJ)V

    return-object v3
.end method
