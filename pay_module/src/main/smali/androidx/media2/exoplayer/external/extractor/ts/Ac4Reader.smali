.class public final Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;
.super Ljava/lang/Object;
.source "Ac4Reader.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader$State;
    }
.end annotation


# static fields
.field private static final STATE_FINDING_SYNC:I = 0x0

.field private static final STATE_READING_HEADER:I = 0x1

.field private static final STATE_READING_SAMPLE:I = 0x2


# instance fields
.field private bytesRead:I

.field private format:Landroidx/media2/exoplayer/external/Format;

.field private hasCRC:Z

.field private final headerScratchBits:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

.field private final headerScratchBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private final language:Ljava/lang/String;

.field private lastByteWasAC:Z

.field private output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

.field private sampleDurationUs:J

.field private sampleSize:I

.field private state:I

.field private timeUs:J

.field private trackFormatId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;-><init>(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "language"    # Ljava/lang/String;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/16 v1, 0x10

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->headerScratchBits:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    .line 87
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->headerScratchBits:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->data:[B

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->headerScratchBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->state:I

    .line 89
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->bytesRead:I

    .line 90
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    .line 91
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->hasCRC:Z

    .line 92
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->language:Ljava/lang/String;

    .line 93
    return-void
.end method

.method private continueRead(Landroidx/media2/exoplayer/external/util/ParsableByteArray;[BI)Z
    .locals 2
    .param p1, "source"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p2, "target"    # [B
    .param p3, "targetLength"    # I

    .line 166
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->bytesRead:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 167
    .local v0, "bytesToRead":I
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->bytesRead:I

    invoke-virtual {p1, p2, v1, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 168
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->bytesRead:I

    .line 169
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->bytesRead:I

    if-ne v1, p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private parseHeader()V
    .locals 13

    .line 198
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->headerScratchBits:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->setPosition(I)V

    .line 199
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->headerScratchBits:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/audio/Ac4Util;->parseAc4SyncframeInfo(Landroidx/media2/exoplayer/external/util/ParsableBitArray;)Landroidx/media2/exoplayer/external/audio/Ac4Util$SyncFrameInfo;

    move-result-object v0

    .line 200
    .local v0, "frameInfo":Landroidx/media2/exoplayer/external/audio/Ac4Util$SyncFrameInfo;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->format:Landroidx/media2/exoplayer/external/Format;

    if-eqz v1, :cond_1

    iget v1, v0, Landroidx/media2/exoplayer/external/audio/Ac4Util$SyncFrameInfo;->channelCount:I

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->format:Landroidx/media2/exoplayer/external/Format;

    iget v2, v2, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    if-ne v1, v2, :cond_1

    iget v1, v0, Landroidx/media2/exoplayer/external/audio/Ac4Util$SyncFrameInfo;->sampleRate:I

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->format:Landroidx/media2/exoplayer/external/Format;

    iget v2, v2, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    if-ne v1, v2, :cond_1

    const-string v1, "audio/ac4"

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->format:Landroidx/media2/exoplayer/external/Format;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    .line 203
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    .line 200
    :cond_1
    nop

    .line 204
    :goto_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->trackFormatId:Ljava/lang/String;

    const-string v3, "audio/ac4"

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    iget v7, v0, Landroidx/media2/exoplayer/external/audio/Ac4Util$SyncFrameInfo;->channelCount:I

    iget v8, v0, Landroidx/media2/exoplayer/external/audio/Ac4Util$SyncFrameInfo;->sampleRate:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->language:Ljava/lang/String;

    .line 205
    invoke-static/range {v2 .. v12}, Landroidx/media2/exoplayer/external/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->format:Landroidx/media2/exoplayer/external/Format;

    .line 217
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->format:Landroidx/media2/exoplayer/external/Format;

    invoke-interface {v1, v2}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->format(Landroidx/media2/exoplayer/external/Format;)V

    .line 219
    :goto_1
    iget v1, v0, Landroidx/media2/exoplayer/external/audio/Ac4Util$SyncFrameInfo;->frameSize:I

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->sampleSize:I

    .line 222
    const-wide/32 v1, 0xf4240

    iget v3, v0, Landroidx/media2/exoplayer/external/audio/Ac4Util$SyncFrameInfo;->sampleCount:I

    int-to-long v3, v3

    mul-long v3, v3, v1

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->format:Landroidx/media2/exoplayer/external/Format;

    iget v1, v1, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    int-to-long v1, v1

    div-long/2addr v3, v1

    iput-wide v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->sampleDurationUs:J

    .line 223
    return-void
.end method

.method private skipToNextSync(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Z
    .locals 5
    .param p1, "pesBuffer"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 180
    :goto_0
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_6

    .line 181
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    const/16 v2, 0xac

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 182
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    .line 183
    goto :goto_0

    .line 185
    :cond_1
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 186
    .local v0, "secondByte":I
    if-ne v0, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    .line 187
    const/16 v2, 0x40

    const/16 v4, 0x41

    if-eq v0, v2, :cond_4

    if-ne v0, v4, :cond_3

    goto :goto_2

    .line 191
    .end local v0    # "secondByte":I
    :cond_3
    goto :goto_0

    .line 187
    .restart local v0    # "secondByte":I
    :cond_4
    :goto_2
    nop

    .line 188
    if-ne v0, v4, :cond_5

    const/4 v1, 0x1

    nop

    :cond_5
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->hasCRC:Z

    .line 189
    return v3

    .line 192
    .end local v0    # "secondByte":I
    :cond_6
    return v1
.end method


# virtual methods
.method public consume(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V
    .locals 10
    .param p1, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 117
    :goto_0
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_4

    .line 118
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->state:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 146
    goto :goto_0

    .line 136
    :pswitch_0
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->sampleSize:I

    iget v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->bytesRead:I

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 137
    .local v0, "bytesToRead":I
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 138
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->bytesRead:I

    .line 139
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->bytesRead:I

    iget v7, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->sampleSize:I

    if-ne v1, v7, :cond_0

    .line 140
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->timeUs:J

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;)V

    .line 141
    iget-wide v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->timeUs:J

    iget-wide v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->sampleDurationUs:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->timeUs:J

    .line 142
    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->state:I

    goto :goto_0

    .line 139
    :cond_0
    goto :goto_0

    .line 128
    .end local v0    # "bytesToRead":I
    :pswitch_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->headerScratchBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/16 v3, 0x10

    invoke-direct {p0, p1, v0, v3}, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->continueRead(Landroidx/media2/exoplayer/external/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->parseHeader()V

    .line 130
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->headerScratchBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 131
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->headerScratchBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-interface {v0, v2, v3}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 132
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->state:I

    goto :goto_0

    .line 128
    :cond_1
    goto :goto_0

    .line 120
    :pswitch_2
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->skipToNextSync(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 121
    const/4 v0, 0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->state:I

    .line 122
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->headerScratchBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/16 v4, -0x54

    aput-byte v4, v3, v2

    .line 123
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->headerScratchBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget-boolean v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->hasCRC:Z

    if-eqz v3, :cond_2

    const/16 v3, 0x41

    goto :goto_1

    :cond_2
    const/16 v3, 0x40

    :goto_1
    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 124
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->bytesRead:I

    goto/16 :goto_0

    .line 120
    :cond_3
    goto/16 :goto_0

    .line 149
    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public createTracks(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 2
    .param p1, "extractorOutput"    # Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;
    .param p2, "generator"    # Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .line 105
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 106
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->trackFormatId:Ljava/lang/String;

    .line 107
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->track(II)Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 108
    return-void
.end method

.method public packetFinished()V
    .locals 0

    .line 154
    return-void
.end method

.method public packetStarted(JI)V
    .locals 0
    .param p1, "pesTimeUs"    # J
    .param p3, "flags"    # I

    .line 112
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->timeUs:J

    .line 113
    return-void
.end method

.method public seek()V
    .locals 1

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->state:I

    .line 98
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->bytesRead:I

    .line 99
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    .line 100
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->hasCRC:Z

    .line 101
    return-void
.end method
