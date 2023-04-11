.class final Landroidx/media2/exoplayer/external/extractor/mkv/Sniffer;
.super Ljava/lang/Object;
.source "Sniffer.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final ID_EBML:I = 0x1a45dfa3

.field private static final SEARCH_LENGTH:I = 0x400


# instance fields
.field private peekLength:I

.field private final scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/Sniffer;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 46
    return-void
.end method

.method private readUint(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)J
    .locals 6
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/Sniffer;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 100
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/Sniffer;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 101
    .local v0, "value":I
    if-nez v0, :cond_0

    .line 102
    const-wide/high16 v1, -0x8000000000000000L

    return-wide v1

    .line 104
    :cond_0
    const/16 v1, 0x80

    .line 105
    .local v1, "mask":I
    const/4 v3, 0x0

    .line 106
    .local v3, "length":I
    :goto_0
    and-int v4, v0, v1

    if-nez v4, :cond_1

    .line 107
    shr-int/lit8 v1, v1, 0x1

    .line 108
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 110
    :cond_1
    xor-int/lit8 v4, v1, -0x1

    and-int/2addr v0, v4

    .line 111
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/mkv/Sniffer;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v4, v2, v3}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 112
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 113
    shl-int/lit8 v0, v0, 0x8

    .line 114
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/mkv/Sniffer;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    add-int/lit8 v5, v2, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v0, v4

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 116
    .end local v2    # "i":I
    :cond_2
    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/Sniffer;->peekLength:I

    add-int/lit8 v4, v3, 0x1

    add-int/2addr v2, v4

    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/Sniffer;->peekLength:I

    .line 117
    int-to-long v4, v0

    return-wide v4
.end method


# virtual methods
.method public sniff(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z
    .locals 24
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 52
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getLength()J

    move-result-wide v2

    .line 53
    .local v2, "inputLength":J
    const-wide/16 v4, 0x400

    const-wide/16 v6, -0x1

    cmp-long v8, v2, v6

    if-eqz v8, :cond_1

    cmp-long v8, v2, v4

    if-lez v8, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    move-wide v4, v2

    goto :goto_1

    .line 53
    :cond_1
    :goto_0
    nop

    .line 54
    nop

    :goto_1
    long-to-int v5, v4

    .line 56
    .local v5, "bytesToSearch":I
    nop

    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mkv/Sniffer;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-interface {v1, v4, v9, v8}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 57
    nop

    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mkv/Sniffer;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v10

    .line 58
    .local v10, "tag":J
    nop

    iput v8, v0, Landroidx/media2/exoplayer/external/extractor/mkv/Sniffer;->peekLength:I

    .line 59
    :goto_2
    nop

    const-wide/32 v12, 0x1a45dfa3

    const/4 v4, 0x1

    cmp-long v8, v10, v12

    if-eqz v8, :cond_3

    .line 60
    nop

    iget v8, v0, Landroidx/media2/exoplayer/external/extractor/mkv/Sniffer;->peekLength:I

    add-int/2addr v8, v4

    iput v8, v0, Landroidx/media2/exoplayer/external/extractor/mkv/Sniffer;->peekLength:I

    if-ne v8, v5, :cond_2

    .line 61
    nop

    return v9

    .line 63
    :cond_2
    nop

    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/mkv/Sniffer;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v8, v8, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v8, v9, v4}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 64
    nop

    const/16 v4, 0x8

    shl-long v12, v10, v4

    const-wide/16 v14, -0x100

    and-long v10, v12, v14

    .line 65
    nop

    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mkv/Sniffer;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    aget-byte v4, v4, v9

    and-int/lit16 v4, v4, 0xff

    int-to-long v12, v4

    or-long/2addr v10, v12

    goto :goto_2

    .line 69
    :cond_3
    nop

    invoke-direct/range {p0 .. p1}, Landroidx/media2/exoplayer/external/extractor/mkv/Sniffer;->readUint(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)J

    move-result-wide v12

    .line 70
    .local v12, "headerSize":J
    nop

    iget v8, v0, Landroidx/media2/exoplayer/external/extractor/mkv/Sniffer;->peekLength:I

    int-to-long v14, v8

    .line 71
    .local v14, "headerStart":J
    nop

    const-wide/high16 v16, -0x8000000000000000L

    cmp-long v8, v12, v16

    if-eqz v8, :cond_b

    nop

    cmp-long v8, v2, v6

    if-eqz v8, :cond_4

    nop

    add-long v6, v14, v12

    cmp-long v8, v6, v2

    if-ltz v8, :cond_4

    nop

    move v8, v5

    goto :goto_7

    :cond_4
    nop

    .line 77
    :goto_3
    nop

    iget v6, v0, Landroidx/media2/exoplayer/external/extractor/mkv/Sniffer;->peekLength:I

    int-to-long v7, v6

    add-long v18, v14, v12

    cmp-long v20, v7, v18

    if-gez v20, :cond_9

    .line 78
    nop

    invoke-direct/range {p0 .. p1}, Landroidx/media2/exoplayer/external/extractor/mkv/Sniffer;->readUint(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)J

    move-result-wide v6

    .line 79
    .local v6, "id":J
    nop

    cmp-long v8, v6, v16

    if-nez v8, :cond_5

    .line 80
    nop

    return v9

    .line 82
    :cond_5
    nop

    move v8, v5

    .end local v5    # "bytesToSearch":I
    .local v8, "bytesToSearch":I
    invoke-direct/range {p0 .. p1}, Landroidx/media2/exoplayer/external/extractor/mkv/Sniffer;->readUint(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)J

    move-result-wide v4

    .line 83
    .local v4, "size":J
    nop

    const-wide/16 v19, 0x0

    cmp-long v21, v4, v19

    if-ltz v21, :cond_8

    nop

    const-wide/32 v21, 0x7fffffff

    cmp-long v23, v4, v21

    if-lez v23, :cond_6

    goto :goto_5

    .line 86
    :cond_6
    nop

    cmp-long v21, v4, v19

    if-eqz v21, :cond_7

    .line 87
    nop

    long-to-int v9, v4

    .line 88
    .local v9, "sizeInt":I
    nop

    invoke-interface {v1, v9}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 89
    nop

    iget v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/Sniffer;->peekLength:I

    add-int/2addr v1, v9

    iput v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/Sniffer;->peekLength:I

    goto :goto_4

    .line 86
    .end local v9    # "sizeInt":I
    :cond_7
    nop

    .line 91
    .end local v4    # "size":J
    .end local v6    # "id":J
    :goto_4
    nop

    move v5, v8

    move-object/from16 v1, p1

    const/4 v4, 0x1

    const/4 v9, 0x0

    goto :goto_3

    .line 83
    .restart local v4    # "size":J
    .restart local v6    # "id":J
    :cond_8
    :goto_5
    nop

    .line 84
    nop

    const/4 v1, 0x0

    return v1

    .line 92
    .end local v4    # "size":J
    .end local v6    # "id":J
    .end local v8    # "bytesToSearch":I
    .restart local v5    # "bytesToSearch":I
    :cond_9
    move v8, v5

    .end local v5    # "bytesToSearch":I
    .restart local v8    # "bytesToSearch":I
    nop

    int-to-long v4, v6

    add-long v6, v14, v12

    cmp-long v1, v4, v6

    if-nez v1, :cond_a

    nop

    const/16 v18, 0x1

    goto :goto_6

    :cond_a
    nop

    const/16 v18, 0x0

    :goto_6
    nop

    return v18

    .line 71
    .end local v8    # "bytesToSearch":I
    .restart local v5    # "bytesToSearch":I
    :cond_b
    move v8, v5

    .end local v5    # "bytesToSearch":I
    .restart local v8    # "bytesToSearch":I
    nop

    .line 73
    :goto_7
    nop

    const/4 v1, 0x0

    return v1
.end method
