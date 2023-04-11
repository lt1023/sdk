.class final Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;
.super Ljava/lang/Object;
.source "OggPageHeader.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final EMPTY_PAGE_HEADER_SIZE:I = 0x1b

.field public static final MAX_PAGE_PAYLOAD:I = 0xfe01

.field public static final MAX_PAGE_SIZE:I = 0xff1b

.field public static final MAX_SEGMENT_COUNT:I = 0xff

.field private static final TYPE_OGGS:I = 0x4f676753


# instance fields
.field public bodySize:I

.field public granulePosition:J

.field public headerSize:I

.field public final laces:[I

.field public pageChecksum:J

.field public pageSegmentCount:I

.field public pageSequenceNumber:J

.field public revision:I

.field private final scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field public streamSerialNumber:J

.field public type:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/16 v0, 0xff

    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->laces:[I

    .line 59
    new-instance v1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {v1, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>(I)V

    iput-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    return-void
.end method


# virtual methods
.method public populate(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Z)Z
    .locals 9
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .param p2, "quiet"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset()V

    .line 90
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->reset()V

    .line 91
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    cmp-long v6, v0, v4

    if-eqz v6, :cond_1

    .line 92
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v4

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x1b

    cmp-long v6, v0, v4

    if-ltz v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 91
    :cond_1
    nop

    .line 92
    :goto_0
    const/4 v0, 0x1

    .line 93
    .local v0, "hasEnoughBytes":Z
    :goto_1
    if-eqz v0, :cond_8

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/16 v4, 0x1b

    invoke-interface {p1, v1, v3, v4, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_3

    .line 100
    :cond_2
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v5

    const-wide/32 v7, 0x4f676753

    cmp-long v1, v5, v7

    if-eqz v1, :cond_4

    .line 101
    if-eqz p2, :cond_3

    .line 102
    return v3

    .line 104
    :cond_3
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    const-string v2, "expected OggS capture pattern at begin of page"

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    :cond_4
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->revision:I

    .line 109
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->revision:I

    if-eqz v1, :cond_6

    .line 110
    if-eqz p2, :cond_5

    .line 111
    return v3

    .line 113
    :cond_5
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    const-string/jumbo v2, "unsupported bit stream revision"

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 116
    :cond_6
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->type:I

    .line 118
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLittleEndianLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->granulePosition:J

    .line 119
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v5

    iput-wide v5, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->streamSerialNumber:J

    .line 120
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v5

    iput-wide v5, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->pageSequenceNumber:J

    .line 121
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v5

    iput-wide v5, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->pageChecksum:J

    .line 122
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    .line 123
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    add-int/2addr v1, v4

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->headerSize:I

    .line 126
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset()V

    .line 127
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    invoke-interface {p1, v1, v3, v4}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 128
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v3, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    if-ge v1, v3, :cond_7

    .line 129
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->laces:[I

    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    aput v4, v3, v1

    .line 130
    iget v3, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->bodySize:I

    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->laces:[I

    aget v4, v4, v1

    add-int/2addr v3, v4

    iput v3, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->bodySize:I

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 133
    .end local v1    # "i":I
    :cond_7
    return v2

    .line 93
    :cond_8
    :goto_3
    nop

    .line 94
    if-eqz p2, :cond_9

    .line 95
    return v3

    .line 97
    :cond_9
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    return-void
.end method

.method public reset()V
    .locals 3

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->revision:I

    .line 66
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->type:I

    .line 67
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->granulePosition:J

    .line 68
    iput-wide v1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->streamSerialNumber:J

    .line 69
    iput-wide v1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->pageSequenceNumber:J

    .line 70
    iput-wide v1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->pageChecksum:J

    .line 71
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    .line 72
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->headerSize:I

    .line 73
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->bodySize:I

    .line 74
    return-void
.end method
