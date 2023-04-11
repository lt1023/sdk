.class public final Landroidx/media2/exoplayer/external/extractor/ts/SectionReader;
.super Ljava/lang/Object;
.source "SectionReader.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final DEFAULT_SECTION_BUFFER_LENGTH:I = 0x20

.field private static final MAX_SECTION_LENGTH:I = 0x1002

.field private static final SECTION_HEADER_LENGTH:I = 0x3


# instance fields
.field private bytesRead:I

.field private final reader:Landroidx/media2/exoplayer/external/extractor/ts/SectionPayloadReader;

.field private final sectionData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private sectionSyntaxIndicator:Z

.field private totalSectionLength:I

.field private waitingForPayloadStart:Z


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/extractor/ts/SectionPayloadReader;)V
    .locals 2
    .param p1, "reader"    # Landroidx/media2/exoplayer/external/extractor/ts/SectionPayloadReader;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/SectionReader;->reader:Landroidx/media2/exoplayer/external/extractor/ts/SectionPayloadReader;

    .line 50
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/SectionReader;->sectionData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 51
    return-void
.end method


# virtual methods
.method public consume(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V
    .locals 13
    .param p1, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p2, "flags"    # I

    .line 67
    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 68
    .local v0, "payloadUnitStartIndicator":Z
    :goto_0
    const/4 v3, -0x1

    .line 69
    .local v3, "payloadStartPosition":I
    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 71
    .local v4, "payloadStartOffset":I
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v5

    add-int v3, v5, v4

    goto :goto_1

    .line 69
    .end local v4    # "payloadStartOffset":I
    :cond_1
    nop

    .line 74
    :goto_1
    iget-boolean v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/SectionReader;->waitingForPayloadStart:Z

    if-eqz v4, :cond_3

    .line 75
    if-nez v0, :cond_2

    .line 76
    return-void

    .line 78
    :cond_2
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/SectionReader;->waitingForPayloadStart:Z

    .line 79
    invoke-virtual {p1, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 80
    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/SectionReader;->bytesRead:I

    goto :goto_2

    .line 74
    :cond_3
    nop

    .line 83
    :goto_2
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    if-lez v4, :cond_d

    .line 84
    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/SectionReader;->bytesRead:I

    const/4 v5, 0x3

    if-ge v4, v5, :cond_9

    .line 87
    if-nez v4, :cond_5

    .line 88
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 89
    .local v4, "tableId":I
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {p1, v6}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 90
    const/16 v6, 0xff

    if-ne v4, v6, :cond_4

    .line 92
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/SectionReader;->waitingForPayloadStart:Z

    .line 93
    return-void

    .line 90
    :cond_4
    goto :goto_3

    .line 87
    .end local v4    # "tableId":I
    :cond_5
    nop

    .line 96
    :goto_3
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    iget v6, p0, Landroidx/media2/exoplayer/external/extractor/ts/SectionReader;->bytesRead:I

    rsub-int/lit8 v6, v6, 0x3

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 97
    .local v4, "headerBytesToRead":I
    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/ts/SectionReader;->sectionData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v6, v6, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v7, p0, Landroidx/media2/exoplayer/external/extractor/ts/SectionReader;->bytesRead:I

    invoke-virtual {p1, v6, v7, v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 98
    iget v6, p0, Landroidx/media2/exoplayer/external/extractor/ts/SectionReader;->bytesRead:I

    add-int/2addr v6, v4

    iput v6, p0, Landroidx/media2/exoplayer/external/extractor/ts/SectionReader;->bytesRead:I

    .line 99
    iget v6, p0, Landroidx/media2/exoplayer/external/extractor/ts/SectionReader;->bytesRead:I

    if-ne v6, v5, :cond_8

    .line 100
    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/ts/SectionReader;->sectionData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v6, v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset(I)V

    .line 101
    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/ts/SectionReader;->sectionData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v6, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 102
    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/ts/SectionReader;->sectionData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    .line 103
    .local v6, "secondHeaderByte":I
    iget-object v7, p0, Landroidx/media2/exoplayer/external/extractor/ts/SectionReader;->sectionData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v7}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    .line 104
    .local v7, "thirdHeaderByte":I
    and-int/lit16 v8, v6, 0x80

    if-eqz v8, :cond_6

    const/4 v8, 0x1

    goto :goto_4

    :cond_6
    const/4 v8, 0x0

    :goto_4
    iput-boolean v8, p0, Landroidx/media2/exoplayer/external/extractor/ts/SectionReader;->sectionSyntaxIndicator:Z

    .line 105
    and-int/lit8 v8, v6, 0xf

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v8, v7

    add-int/2addr v8, v5

    iput v8, p0, Landroidx/media2/exoplayer/external/extractor/ts/SectionReader;->totalSectionLength:I

    .line 107
    iget-object v8, p0, Landroidx/media2/exoplayer/external/extractor/ts/SectionReader;->sectionData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v8}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->capacity()I

    move-result v8

    iget v9, p0, Landroidx/media2/exoplayer/external/extractor/ts/SectionReader;->totalSectionLength:I

    if-ge v8, v9, :cond_7

    .line 109
    iget-object v8, p0, Landroidx/media2/exoplayer/external/extractor/ts/SectionReader;->sectionData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v8, v8, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    .line 110
    .local v8, "bytes":[B
    iget-object v9, p0, Landroidx/media2/exoplayer/external/extractor/ts/SectionReader;->sectionData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/16 v10, 0x1002

    iget v11, p0, Landroidx/media2/exoplayer/external/extractor/ts/SectionReader;->totalSectionLength:I

    array-length v12, v8

    mul-int/lit8 v12, v12, 0x2

    .line 111
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 110
    invoke-virtual {v9, v10}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset(I)V

    .line 112
    iget-object v9, p0, Landroidx/media2/exoplayer/external/extractor/ts/SectionReader;->sectionData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v9, v9, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-static {v8, v2, v9, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    .line 107
    .end local v8    # "bytes":[B
    :cond_7
    goto :goto_5

    .line 99
    .end local v6    # "secondHeaderByte":I
    .end local v7    # "thirdHeaderByte":I
    :cond_8
    nop

    .line 115
    .end local v4    # "headerBytesToRead":I
    :goto_5
    goto/16 :goto_2

    .line 117
    :cond_9
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    iget v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/SectionReader;->totalSectionLength:I

    iget v6, p0, Landroidx/media2/exoplayer/external/extractor/ts/SectionReader;->bytesRead:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 118
    .local v4, "bodyBytesToRead":I
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/SectionReader;->sectionData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v6, p0, Landroidx/media2/exoplayer/external/extractor/ts/SectionReader;->bytesRead:I

    invoke-virtual {p1, v5, v6, v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 119
    iget v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/SectionReader;->bytesRead:I

    add-int/2addr v5, v4

    iput v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/SectionReader;->bytesRead:I

    .line 120
    iget v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/SectionReader;->bytesRead:I

    iget v6, p0, Landroidx/media2/exoplayer/external/extractor/ts/SectionReader;->totalSectionLength:I

    if-ne v5, v6, :cond_c

    .line 121
    iget-boolean v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/SectionReader;->sectionSyntaxIndicator:Z

    if-eqz v5, :cond_b

    .line 123
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/SectionReader;->sectionData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v6, p0, Landroidx/media2/exoplayer/external/extractor/ts/SectionReader;->totalSectionLength:I

    const/4 v7, -0x1

    invoke-static {v5, v2, v6, v7}, Landroidx/media2/exoplayer/external/util/Util;->crc([BIII)I

    move-result v5

    if-eqz v5, :cond_a

    .line 125
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/SectionReader;->waitingForPayloadStart:Z

    .line 126
    return-void

    .line 128
    :cond_a
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/SectionReader;->sectionData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget v6, p0, Landroidx/media2/exoplayer/external/extractor/ts/SectionReader;->totalSectionLength:I

    add-int/lit8 v6, v6, -0x4

    invoke-virtual {v5, v6}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset(I)V

    goto :goto_6

    .line 131
    :cond_b
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/SectionReader;->sectionData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v5, v6}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset(I)V

    .line 133
    :goto_6
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/SectionReader;->reader:Landroidx/media2/exoplayer/external/extractor/ts/SectionPayloadReader;

    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/ts/SectionReader;->sectionData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-interface {v5, v6}, Landroidx/media2/exoplayer/external/extractor/ts/SectionPayloadReader;->consume(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V

    .line 134
    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/SectionReader;->bytesRead:I

    goto :goto_7

    .line 120
    :cond_c
    nop

    .line 136
    .end local v4    # "bodyBytesToRead":I
    :goto_7
    goto/16 :goto_2

    .line 138
    :cond_d
    return-void
.end method

.method public init(Landroidx/media2/exoplayer/external/util/TimestampAdjuster;Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 1
    .param p1, "timestampAdjuster"    # Landroidx/media2/exoplayer/external/util/TimestampAdjuster;
    .param p2, "extractorOutput"    # Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;
    .param p3, "idGenerator"    # Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .line 56
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/SectionReader;->reader:Landroidx/media2/exoplayer/external/extractor/ts/SectionPayloadReader;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/ts/SectionPayloadReader;->init(Landroidx/media2/exoplayer/external/util/TimestampAdjuster;Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/SectionReader;->waitingForPayloadStart:Z

    .line 58
    return-void
.end method

.method public seek()V
    .locals 1

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/SectionReader;->waitingForPayloadStart:Z

    .line 63
    return-void
.end method
