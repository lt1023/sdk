.class public final Landroidx/media2/exoplayer/external/extractor/Id3Peeker;
.super Ljava/lang/Object;
.source "Id3Peeker.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/Id3Peeker;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 41
    return-void
.end method


# virtual methods
.method public peekId3Data(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$FramePredicate;)Landroidx/media2/exoplayer/external/metadata/Metadata;
    .locals 8
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .param p2, "id3FramePredicate"    # Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$FramePredicate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, "peekedId3Bytes":I
    const/4 v1, 0x0

    .line 62
    .local v1, "metadata":Landroidx/media2/exoplayer/external/metadata/Metadata;
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/Id3Peeker;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {p1, v2, v4, v3}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    nop

    .line 67
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/Id3Peeker;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v2, v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 68
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/Id3Peeker;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v2

    const v5, 0x494433

    if-eq v2, v5, :cond_0

    .line 70
    goto :goto_2

    .line 72
    :cond_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/Id3Peeker;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 73
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/Id3Peeker;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v2

    .line 74
    .local v2, "framesLength":I
    add-int/lit8 v5, v2, 0xa

    .line 76
    .local v5, "tagLength":I
    if-nez v1, :cond_1

    .line 77
    new-array v6, v5, [B

    .line 78
    .local v6, "id3Data":[B
    iget-object v7, p0, Landroidx/media2/exoplayer/external/extractor/Id3Peeker;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v7, v7, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-static {v7, v4, v6, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    invoke-interface {p1, v6, v3, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 81
    new-instance v3, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;

    invoke-direct {v3, p2}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;-><init>(Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$FramePredicate;)V

    invoke-virtual {v3, v6, v5}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->decode([BI)Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-result-object v1

    .line 82
    .end local v6    # "id3Data":[B
    goto :goto_1

    .line 83
    :cond_1
    invoke-interface {p1, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 86
    :goto_1
    add-int/2addr v0, v5

    .line 87
    .end local v2    # "framesLength":I
    .end local v5    # "tagLength":I
    goto :goto_0

    .line 63
    :catch_0
    move-exception v2

    .line 65
    .local v2, "e":Ljava/io/EOFException;
    nop

    .line 89
    .end local v2    # "e":Ljava/io/EOFException;
    :goto_2
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    .line 90
    invoke-interface {p1, v0}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 91
    return-object v1
.end method
