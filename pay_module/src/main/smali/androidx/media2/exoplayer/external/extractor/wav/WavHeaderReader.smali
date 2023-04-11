.class final Landroidx/media2/exoplayer/external/extractor/wav/WavHeaderReader;
.super Ljava/lang/Object;
.source "WavHeaderReader.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/wav/WavHeaderReader$ChunkHeader;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WavHeaderReader"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    return-void
.end method

.method public static peek(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;
    .locals 19
    .param p0, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 51
    move-object/from16 v0, p0

    invoke-static/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    new-instance v1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>(I)V

    .line 57
    .local v1, "scratch":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/extractor/wav/WavHeaderReader$ChunkHeader;->peek(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/extractor/wav/WavHeaderReader$ChunkHeader;

    move-result-object v3

    .line 58
    .local v3, "chunkHeader":Landroidx/media2/exoplayer/external/extractor/wav/WavHeaderReader$ChunkHeader;
    iget v4, v3, Landroidx/media2/exoplayer/external/extractor/wav/WavHeaderReader$ChunkHeader;->id:I

    const/4 v5, 0x0

    const v6, 0x52494646

    if-eq v4, v6, :cond_0

    .line 59
    return-object v5

    .line 62
    :cond_0
    iget-object v4, v1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-interface {v0, v4, v7, v6}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 63
    invoke-virtual {v1, v7}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 64
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 65
    .local v4, "riffFormat":I
    const v6, 0x57415645

    if-eq v4, v6, :cond_1

    .line 66
    const-string v2, "WavHeaderReader"

    const/16 v6, 0x24

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Unsupported RIFF format: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroidx/media2/exoplayer/external/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-object v5

    .line 71
    :cond_1
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/extractor/wav/WavHeaderReader$ChunkHeader;->peek(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/extractor/wav/WavHeaderReader$ChunkHeader;

    move-result-object v3

    .line 72
    :goto_0
    iget v6, v3, Landroidx/media2/exoplayer/external/extractor/wav/WavHeaderReader$ChunkHeader;->id:I

    const v8, 0x666d7420

    if-eq v6, v8, :cond_2

    .line 73
    iget-wide v8, v3, Landroidx/media2/exoplayer/external/extractor/wav/WavHeaderReader$ChunkHeader;->size:J

    long-to-int v6, v8

    invoke-interface {v0, v6}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 74
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/extractor/wav/WavHeaderReader$ChunkHeader;->peek(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/extractor/wav/WavHeaderReader$ChunkHeader;

    move-result-object v3

    goto :goto_0

    .line 77
    :cond_2
    iget-wide v8, v3, Landroidx/media2/exoplayer/external/extractor/wav/WavHeaderReader$ChunkHeader;->size:J

    const-wide/16 v10, 0x10

    cmp-long v6, v8, v10

    if-ltz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    invoke-static {v6}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 78
    iget-object v6, v1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-interface {v0, v6, v7, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 79
    invoke-virtual {v1, v7}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 80
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v6

    .line 81
    .local v6, "type":I
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v14

    .line 82
    .local v14, "numChannels":I
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLittleEndianUnsignedIntToInt()I

    move-result v15

    .line 83
    .local v15, "sampleRateHz":I
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLittleEndianUnsignedIntToInt()I

    move-result v16

    .line 84
    .local v16, "averageBytesPerSecond":I
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v13

    .line 85
    .local v13, "blockAlignment":I
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v12

    .line 87
    .local v12, "bitsPerSample":I
    mul-int v7, v14, v12

    div-int/lit8 v11, v7, 0x8

    .line 88
    .local v11, "expectedBlockAlignment":I
    if-ne v13, v11, :cond_5

    .line 93
    invoke-static {v6, v12}, Landroidx/media2/exoplayer/external/audio/WavUtil;->getEncodingForType(II)I

    move-result v17

    .line 94
    .local v17, "encoding":I
    if-nez v17, :cond_4

    .line 95
    const-string v2, "WavHeaderReader"

    const/16 v7, 0x40

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Unsupported WAV format: "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " bit/sample, type "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroidx/media2/exoplayer/external/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-object v5

    .line 100
    :cond_4
    iget-wide v7, v3, Landroidx/media2/exoplayer/external/extractor/wav/WavHeaderReader$ChunkHeader;->size:J

    long-to-int v5, v7

    sub-int/2addr v5, v2

    invoke-interface {v0, v5}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 102
    new-instance v2, Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;

    move-object v7, v2

    move v8, v14

    move v9, v15

    move/from16 v10, v16

    move v5, v11

    .end local v11    # "expectedBlockAlignment":I
    .local v5, "expectedBlockAlignment":I
    move v11, v13

    move/from16 v18, v12

    .end local v12    # "bitsPerSample":I
    .local v18, "bitsPerSample":I
    move v0, v13

    .end local v13    # "blockAlignment":I
    .local v0, "blockAlignment":I
    move/from16 v13, v17

    invoke-direct/range {v7 .. v13}, Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;-><init>(IIIIII)V

    return-object v2

    .line 89
    .end local v0    # "blockAlignment":I
    .end local v5    # "expectedBlockAlignment":I
    .end local v17    # "encoding":I
    .end local v18    # "bitsPerSample":I
    .restart local v11    # "expectedBlockAlignment":I
    .restart local v12    # "bitsPerSample":I
    .restart local v13    # "blockAlignment":I
    :cond_5
    move v5, v11

    move/from16 v18, v12

    move v0, v13

    .end local v11    # "expectedBlockAlignment":I
    .end local v12    # "bitsPerSample":I
    .end local v13    # "blockAlignment":I
    .restart local v0    # "blockAlignment":I
    .restart local v5    # "expectedBlockAlignment":I
    .restart local v18    # "bitsPerSample":I
    new-instance v2, Landroidx/media2/exoplayer/external/ParserException;

    const/16 v7, 0x37

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Expected block alignment: "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "; got: "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    return-void
.end method

.method public static skipToData(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;)V
    .locals 10
    .param p0, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .param p1, "wavHeader"    # Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 123
    invoke-static {p0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-interface {p0}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    .line 129
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>(I)V

    .line 131
    .local v0, "scratch":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    invoke-static {p0, v0}, Landroidx/media2/exoplayer/external/extractor/wav/WavHeaderReader$ChunkHeader;->peek(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/extractor/wav/WavHeaderReader$ChunkHeader;

    move-result-object v2

    .line 132
    .local v2, "chunkHeader":Landroidx/media2/exoplayer/external/extractor/wav/WavHeaderReader$ChunkHeader;
    const v3, 0x64617461

    .line 133
    .local v3, "data":I
    :goto_0
    iget v4, v2, Landroidx/media2/exoplayer/external/extractor/wav/WavHeaderReader$ChunkHeader;->id:I

    const v5, 0x64617461

    if-eq v4, v5, :cond_2

    .line 134
    const-string v4, "WavHeaderReader"

    iget v5, v2, Landroidx/media2/exoplayer/external/extractor/wav/WavHeaderReader$ChunkHeader;->id:I

    const/16 v6, 0x27

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Ignoring unknown WAV chunk: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-wide/16 v4, 0x8

    iget-wide v6, v2, Landroidx/media2/exoplayer/external/extractor/wav/WavHeaderReader$ChunkHeader;->size:J

    add-long/2addr v6, v4

    .line 137
    .local v6, "bytesToSkip":J
    const v4, 0x52494646

    .line 138
    .local v4, "riff":I
    iget v5, v2, Landroidx/media2/exoplayer/external/extractor/wav/WavHeaderReader$ChunkHeader;->id:I

    const v8, 0x52494646

    if-ne v5, v8, :cond_0

    .line 139
    const-wide/16 v6, 0xc

    goto :goto_1

    .line 138
    :cond_0
    nop

    .line 141
    :goto_1
    const-wide/32 v8, 0x7fffffff

    cmp-long v5, v6, v8

    if-gtz v5, :cond_1

    .line 144
    long-to-int v5, v6

    invoke-interface {p0, v5}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    .line 145
    invoke-static {p0, v0}, Landroidx/media2/exoplayer/external/extractor/wav/WavHeaderReader$ChunkHeader;->peek(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/extractor/wav/WavHeaderReader$ChunkHeader;

    move-result-object v2

    .line 146
    .end local v4    # "riff":I
    .end local v6    # "bytesToSkip":J
    goto :goto_0

    .line 142
    .restart local v4    # "riff":I
    .restart local v6    # "bytesToSkip":J
    :cond_1
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    iget v5, v2, Landroidx/media2/exoplayer/external/extractor/wav/WavHeaderReader$ChunkHeader;->id:I

    const/16 v8, 0x33

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Chunk is too large (~2GB+) to skip; id: "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    .end local v4    # "riff":I
    .end local v6    # "bytesToSkip":J
    :cond_2
    invoke-interface {p0, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    .line 150
    invoke-interface {p0}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    iget-wide v6, v2, Landroidx/media2/exoplayer/external/extractor/wav/WavHeaderReader$ChunkHeader;->size:J

    invoke-virtual {p1, v4, v5, v6, v7}, Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;->setDataBounds(JJ)V

    .line 151
    return-void
.end method
