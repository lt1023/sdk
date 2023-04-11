.class public final Landroidx/media2/exoplayer/external/extractor/ts/PesReader;
.super Ljava/lang/Object;
.source "PesReader.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final HEADER_SIZE:I = 0x9

.field private static final MAX_HEADER_EXTENSION_SIZE:I = 0xa

.field private static final PES_SCRATCH_SIZE:I = 0xa

.field private static final STATE_FINDING_HEADER:I = 0x0

.field private static final STATE_READING_BODY:I = 0x3

.field private static final STATE_READING_HEADER:I = 0x1

.field private static final STATE_READING_HEADER_EXTENSION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PesReader"


# instance fields
.field private bytesRead:I

.field private dataAlignmentIndicator:Z

.field private dtsFlag:Z

.field private extendedHeaderLength:I

.field private payloadSize:I

.field private final pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

.field private ptsFlag:Z

.field private final reader:Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;

.field private seenFirstDts:Z

.field private state:I

.field private timeUs:J

.field private timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;)V
    .locals 2
    .param p1, "reader"    # Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->reader:Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;

    .line 65
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/16 v1, 0xa

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->state:I

    .line 67
    return-void
.end method

.method private continueRead(Landroidx/media2/exoplayer/external/util/ParsableByteArray;[BI)Z
    .locals 3
    .param p1, "source"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p2, "target"    # [B
    .param p3, "targetLength"    # I

    .line 172
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->bytesRead:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 173
    .local v0, "bytesToRead":I
    const/4 v1, 0x1

    if-gtz v0, :cond_0

    .line 174
    return v1

    .line 175
    :cond_0
    if-nez p2, :cond_1

    .line 176
    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    .line 178
    :cond_1
    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->bytesRead:I

    invoke-virtual {p1, p2, v2, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 180
    :goto_0
    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->bytesRead:I

    add-int/2addr v2, v0

    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->bytesRead:I

    .line 181
    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->bytesRead:I

    if-ne v2, p3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private parseHeader()Z
    .locals 7

    .line 187
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->setPosition(I)V

    .line 188
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/16 v2, 0x18

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 189
    .local v0, "startCodePrefix":I
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    .line 190
    const-string v3, "PesReader"

    const/16 v4, 0x29

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unexpected start code prefix: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->payloadSize:I

    .line 192
    return v1

    .line 195
    :cond_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 196
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/16 v5, 0x10

    invoke-virtual {v1, v5}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 197
    .local v1, "packetLength":I
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 198
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v5

    iput-boolean v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->dataAlignmentIndicator:Z

    .line 199
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 200
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v5

    iput-boolean v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->ptsFlag:Z

    .line 201
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v5

    iput-boolean v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->dtsFlag:Z

    .line 204
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 205
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v5, v4}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v4

    iput v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->extendedHeaderLength:I

    .line 207
    if-nez v1, :cond_1

    .line 208
    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->payloadSize:I

    goto :goto_0

    .line 210
    :cond_1
    add-int/lit8 v2, v1, 0x6

    add-int/lit8 v2, v2, -0x9

    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->extendedHeaderLength:I

    sub-int/2addr v2, v4

    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->payloadSize:I

    .line 213
    :goto_0
    return v3
.end method

.method private parseHeaderExtension()V
    .locals 10

    .line 217
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->setPosition(I)V

    .line 218
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->timeUs:J

    .line 219
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->ptsFlag:Z

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 221
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v0

    int-to-long v3, v0

    const/16 v0, 0x1e

    shl-long/2addr v3, v0

    .line 222
    .local v3, "pts":J
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 223
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/16 v7, 0xf

    invoke-virtual {v5, v7}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v5

    shl-int/2addr v5, v7

    int-to-long v8, v5

    or-long/2addr v3, v8

    .line 224
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v5, v6}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 225
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v5, v7}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v5

    int-to-long v8, v5

    or-long/2addr v3, v8

    .line 226
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v5, v6}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 227
    iget-boolean v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->seenFirstDts:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->dtsFlag:Z

    if-eqz v5, :cond_0

    .line 228
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v5, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 229
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v1

    int-to-long v1, v1

    shl-long v0, v1, v0

    .line 230
    .local v0, "dts":J
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v2, v6}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 231
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v2, v7}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v2

    shl-int/2addr v2, v7

    int-to-long v8, v2

    or-long/2addr v0, v8

    .line 232
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v2, v6}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 233
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v2, v7}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v2

    int-to-long v7, v2

    or-long/2addr v0, v7

    .line 234
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v2, v6}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 240
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    invoke-virtual {v2, v0, v1}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    .line 241
    iput-boolean v6, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->seenFirstDts:Z

    goto :goto_0

    .line 227
    .end local v0    # "dts":J
    :cond_0
    nop

    .line 243
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    invoke-virtual {v0, v3, v4}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->timeUs:J

    goto :goto_1

    .line 219
    .end local v3    # "pts":J
    :cond_1
    nop

    .line 245
    :goto_1
    return-void
.end method

.method private setState(I)V
    .locals 1
    .param p1, "state"    # I

    .line 158
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->state:I

    .line 159
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->bytesRead:I

    .line 160
    return-void
.end method


# virtual methods
.method public final consume(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V
    .locals 6
    .param p1, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 88
    and-int/lit8 v0, p2, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 89
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->state:I

    packed-switch v0, :pswitch_data_0

    .line 109
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 102
    :pswitch_0
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->payloadSize:I

    if-eq v0, v1, :cond_0

    .line 103
    const-string v3, "PesReader"

    const/16 v4, 0x3b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unexpected start indicator: expected "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " more bytes"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_0
    nop

    .line 106
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->reader:Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;->packetFinished()V

    .line 107
    goto :goto_1

    .line 95
    :pswitch_1
    const-string v0, "PesReader"

    const-string v3, "Unexpected start indicator reading extended header"

    invoke-static {v0, v3}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    goto :goto_1

    .line 93
    :pswitch_2
    nop

    .line 111
    :goto_1
    invoke-direct {p0, v2}, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->setState(I)V

    goto :goto_2

    .line 88
    :cond_1
    nop

    .line 114
    :goto_2
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_b

    .line 115
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->state:I

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_1

    .line 152
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 136
    :pswitch_3
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    .line 137
    .local v0, "readLength":I
    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->payloadSize:I

    if-ne v4, v1, :cond_2

    goto :goto_3

    :cond_2
    sub-int v3, v0, v4

    .line 138
    .local v3, "padding":I
    :goto_3
    if-lez v3, :cond_3

    .line 139
    sub-int/2addr v0, v3

    .line 140
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p1, v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setLimit(I)V

    goto :goto_4

    .line 138
    :cond_3
    nop

    .line 142
    :goto_4
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->reader:Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;

    invoke-interface {v4, p1}, Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;->consume(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V

    .line 143
    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->payloadSize:I

    if-eq v4, v1, :cond_5

    .line 144
    sub-int/2addr v4, v0

    iput v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->payloadSize:I

    .line 145
    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->payloadSize:I

    if-nez v4, :cond_4

    .line 146
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->reader:Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;

    invoke-interface {v4}, Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;->packetFinished()V

    .line 147
    invoke-direct {p0, v2}, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->setState(I)V

    goto :goto_2

    .line 145
    :cond_4
    goto :goto_2

    .line 143
    :cond_5
    goto :goto_2

    .line 125
    .end local v0    # "readLength":I
    .end local v3    # "padding":I
    :pswitch_4
    const/16 v0, 0xa

    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->extendedHeaderLength:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 127
    .restart local v0    # "readLength":I
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->data:[B

    invoke-direct {p0, p1, v4, v0}, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->continueRead(Landroidx/media2/exoplayer/external/util/ParsableByteArray;[BI)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x0

    iget v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->extendedHeaderLength:I

    .line 128
    invoke-direct {p0, p1, v4, v5}, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->continueRead(Landroidx/media2/exoplayer/external/util/ParsableByteArray;[BI)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 129
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->parseHeaderExtension()V

    .line 130
    iget-boolean v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->dataAlignmentIndicator:Z

    if-eqz v4, :cond_6

    const/4 v3, 0x4

    nop

    :cond_6
    or-int/2addr p2, v3

    .line 131
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->reader:Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->timeUs:J

    invoke-interface {v3, v4, v5, p2}, Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;->packetStarted(JI)V

    .line 132
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->setState(I)V

    goto :goto_2

    .line 128
    :cond_7
    goto :goto_2

    .line 127
    :cond_8
    goto :goto_2

    .line 120
    .end local v0    # "readLength":I
    :pswitch_5
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->data:[B

    const/16 v4, 0x9

    invoke-direct {p0, p1, v0, v4}, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->continueRead(Landroidx/media2/exoplayer/external/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 121
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->parseHeader()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v3, 0x2

    nop

    :cond_9
    invoke-direct {p0, v3}, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->setState(I)V

    goto/16 :goto_2

    .line 120
    :cond_a
    goto/16 :goto_2

    .line 117
    :pswitch_6
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 118
    goto/16 :goto_2

    .line 155
    :cond_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public init(Landroidx/media2/exoplayer/external/util/TimestampAdjuster;Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 1
    .param p1, "timestampAdjuster"    # Landroidx/media2/exoplayer/external/util/TimestampAdjuster;
    .param p2, "extractorOutput"    # Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;
    .param p3, "idGenerator"    # Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .line 72
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    .line 73
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->reader:Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;

    invoke-interface {v0, p2, p3}, Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;->createTracks(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 74
    return-void
.end method

.method public final seek()V
    .locals 1

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->state:I

    .line 81
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->bytesRead:I

    .line 82
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->seenFirstDts:Z

    .line 83
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->reader:Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;->seek()V

    .line 84
    return-void
.end method
