.class public final Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;
.super Ljava/lang/Object;
.source "PsExtractor.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/Extractor;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;
    }
.end annotation


# static fields
.field public static final AUDIO_STREAM:I = 0xc0

.field public static final AUDIO_STREAM_MASK:I = 0xe0

.field public static final FACTORY:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

.field private static final MAX_SEARCH_LENGTH:J = 0x100000L

.field private static final MAX_SEARCH_LENGTH_AFTER_AUDIO_AND_VIDEO_FOUND:J = 0x2000L

.field private static final MAX_STREAM_ID_PLUS_ONE:I = 0x100

.field static final MPEG_PROGRAM_END_CODE:I = 0x1b9

.field static final PACKET_START_CODE_PREFIX:I = 0x1

.field static final PACK_START_CODE:I = 0x1ba

.field public static final PRIVATE_STREAM_1:I = 0xbd

.field static final SYSTEM_HEADER_START_CODE:I = 0x1bb

.field public static final VIDEO_STREAM:I = 0xe0

.field public static final VIDEO_STREAM_MASK:I = 0xf0


# instance fields
.field private final durationReader:Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;

.field private foundAllTracks:Z

.field private foundAudioTrack:Z

.field private foundVideoTrack:Z

.field private hasOutputSeekMap:Z

.field private lastTrackPosition:J

.field private output:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

.field private psBinarySearchSeeker:Landroidx/media2/exoplayer/external/extractor/ts/PsBinarySearchSeeker;

.field private final psPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private final psPayloadReaders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;",
            ">;"
        }
    .end annotation
.end field

.field private final timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$$Lambda$0;->$instance:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->FACTORY:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 81
    new-instance v0, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;-><init>(J)V

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;-><init>(Landroidx/media2/exoplayer/external/util/TimestampAdjuster;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/util/TimestampAdjuster;)V
    .locals 2
    .param p1, "timestampAdjuster"    # Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    .line 86
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 87
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    .line 88
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->durationReader:Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;

    .line 89
    return-void
.end method

.method static final synthetic lambda$static$0$PsExtractor()[Landroidx/media2/exoplayer/external/extractor/Extractor;
    .locals 3

    .line 45
    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media2/exoplayer/external/extractor/Extractor;

    new-instance v1, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private maybeOutputSeekMap(J)V
    .locals 11
    .param p1, "inputLength"    # J

    .line 289
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->hasOutputSeekMap:Z

    if-nez v0, :cond_1

    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->hasOutputSeekMap:Z

    .line 291
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->durationReader:Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;->getDurationUs()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 292
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ts/PsBinarySearchSeeker;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->durationReader:Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;

    .line 294
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;->getScrTimestampAdjuster()Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    move-result-object v6

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->durationReader:Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;

    .line 295
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;->getDurationUs()J

    move-result-wide v7

    move-object v5, v0

    move-wide v9, p1

    invoke-direct/range {v5 .. v10}, Landroidx/media2/exoplayer/external/extractor/ts/PsBinarySearchSeeker;-><init>(Landroidx/media2/exoplayer/external/util/TimestampAdjuster;JJ)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->psBinarySearchSeeker:Landroidx/media2/exoplayer/external/extractor/ts/PsBinarySearchSeeker;

    .line 297
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->output:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->psBinarySearchSeeker:Landroidx/media2/exoplayer/external/extractor/ts/PsBinarySearchSeeker;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/extractor/ts/PsBinarySearchSeeker;->getSeekMap()Landroidx/media2/exoplayer/external/extractor/SeekMap;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->seekMap(Landroidx/media2/exoplayer/external/extractor/SeekMap;)V

    goto :goto_0

    .line 299
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->output:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    new-instance v1, Landroidx/media2/exoplayer/external/extractor/SeekMap$Unseekable;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->durationReader:Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;->getDurationUs()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Landroidx/media2/exoplayer/external/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->seekMap(Landroidx/media2/exoplayer/external/extractor/SeekMap;)V

    goto :goto_0

    .line 289
    :cond_1
    nop

    .line 302
    :goto_0
    return-void
.end method


# virtual methods
.method public init(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;)V
    .locals 0
    .param p1, "output"    # Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    .line 134
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->output:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    .line 135
    return-void
.end method

.method public read(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;)I
    .locals 18
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Landroidx/media2/exoplayer/external/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 170
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getLength()J

    move-result-wide v3

    .line 171
    .local v3, "inputLength":J
    const-wide/16 v5, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    cmp-long v9, v3, v5

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 172
    .local v9, "canReadDuration":Z
    :goto_0
    if-eqz v9, :cond_1

    iget-object v10, v0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->durationReader:Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;

    invoke-virtual {v10}, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;->isDurationReadFinished()Z

    move-result v10

    if-nez v10, :cond_1

    .line 173
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->durationReader:Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;

    invoke-virtual {v5, v1, v2}, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;->readDuration(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;)I

    move-result v5

    return v5

    .line 172
    :cond_1
    nop

    .line 175
    invoke-direct {v0, v3, v4}, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->maybeOutputSeekMap(J)V

    .line 176
    iget-object v10, v0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->psBinarySearchSeeker:Landroidx/media2/exoplayer/external/extractor/ts/PsBinarySearchSeeker;

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Landroidx/media2/exoplayer/external/extractor/ts/PsBinarySearchSeeker;->isSeeking()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 177
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->psBinarySearchSeeker:Landroidx/media2/exoplayer/external/extractor/ts/PsBinarySearchSeeker;

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v2, v6}, Landroidx/media2/exoplayer/external/extractor/ts/PsBinarySearchSeeker;->handlePendingSeek(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$OutputFrameHolder;)I

    move-result v5

    return v5

    .line 176
    :cond_2
    nop

    .line 181
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    .line 183
    cmp-long v10, v3, v5

    if-eqz v10, :cond_3

    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v10

    sub-long v10, v3, v10

    goto :goto_1

    :cond_3
    move-wide v10, v5

    .line 184
    .local v10, "peekBytesLeft":J
    :goto_1
    const/4 v12, -0x1

    cmp-long v13, v10, v5

    if-eqz v13, :cond_4

    const-wide/16 v5, 0x4

    cmp-long v13, v10, v5

    if-gez v13, :cond_4

    .line 185
    return v12

    .line 184
    :cond_4
    nop

    .line 188
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v6, 0x4

    invoke-interface {v1, v5, v8, v6, v7}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v5

    if-nez v5, :cond_5

    .line 189
    return v12

    .line 192
    :cond_5
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v5, v8}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 193
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 194
    .local v5, "nextStartCode":I
    const/16 v6, 0x1b9

    if-ne v5, v6, :cond_6

    .line 195
    return v12

    .line 196
    :cond_6
    const/16 v6, 0x1ba

    if-ne v5, v6, :cond_7

    .line 198
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v6, v6, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/16 v7, 0xa

    invoke-interface {v1, v6, v8, v7}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 201
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/16 v7, 0x9

    invoke-virtual {v6, v7}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 204
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    and-int/lit8 v6, v6, 0x7

    .line 207
    .local v6, "packStuffingLength":I
    add-int/lit8 v7, v6, 0xe

    invoke-interface {v1, v7}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    .line 208
    return v8

    .line 209
    .end local v6    # "packStuffingLength":I
    :cond_7
    const/16 v6, 0x1bb

    const/4 v12, 0x2

    if-ne v5, v6, :cond_8

    .line 211
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v6, v6, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v6, v8, v12}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 214
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v6, v8}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 215
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    .line 216
    .local v6, "systemHeaderLength":I
    add-int/lit8 v7, v6, 0x6

    invoke-interface {v1, v7}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    .line 217
    return v8

    .line 218
    .end local v6    # "systemHeaderLength":I
    :cond_8
    and-int/lit16 v6, v5, -0x100

    shr-int/lit8 v6, v6, 0x8

    if-eq v6, v7, :cond_9

    .line 219
    invoke-interface {v1, v7}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    .line 220
    return v8

    .line 225
    :cond_9
    and-int/lit16 v6, v5, 0xff

    .line 228
    .local v6, "streamId":I
    iget-object v13, v0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v13, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;

    .line 229
    .local v13, "payloadReader":Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;
    iget-boolean v14, v0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->foundAllTracks:Z

    if-nez v14, :cond_11

    .line 230
    if-nez v13, :cond_e

    .line 231
    const/4 v14, 0x0

    .line 232
    .local v14, "elementaryStreamReader":Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;
    const/16 v15, 0xbd

    if-ne v6, v15, :cond_a

    .line 236
    new-instance v15, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;

    invoke-direct {v15}, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;-><init>()V

    move-object v14, v15

    .line 237
    iput-boolean v7, v0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->foundAudioTrack:Z

    .line 238
    move v15, v9

    .end local v9    # "canReadDuration":Z
    .local v15, "canReadDuration":Z
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v8

    iput-wide v8, v0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->lastTrackPosition:J

    goto :goto_2

    .line 239
    .end local v15    # "canReadDuration":Z
    .restart local v9    # "canReadDuration":Z
    :cond_a
    move v15, v9

    .end local v9    # "canReadDuration":Z
    .restart local v15    # "canReadDuration":Z
    and-int/lit16 v8, v6, 0xe0

    const/16 v9, 0xc0

    if-ne v8, v9, :cond_b

    .line 240
    new-instance v8, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;

    invoke-direct {v8}, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;-><init>()V

    move-object v14, v8

    .line 241
    iput-boolean v7, v0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->foundAudioTrack:Z

    .line 242
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v8

    iput-wide v8, v0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->lastTrackPosition:J

    goto :goto_2

    .line 243
    :cond_b
    and-int/lit16 v8, v6, 0xf0

    const/16 v9, 0xe0

    if-ne v8, v9, :cond_c

    .line 244
    new-instance v8, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;

    invoke-direct {v8}, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;-><init>()V

    move-object v14, v8

    .line 245
    iput-boolean v7, v0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->foundVideoTrack:Z

    .line 246
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v8

    iput-wide v8, v0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->lastTrackPosition:J

    goto :goto_2

    .line 243
    :cond_c
    nop

    .line 248
    :goto_2
    if-eqz v14, :cond_d

    .line 249
    new-instance v8, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;

    const/16 v9, 0x100

    invoke-direct {v8, v6, v9}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(II)V

    .line 250
    .local v8, "idGenerator":Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;
    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->output:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    invoke-interface {v14, v9, v8}, Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;->createTracks(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 251
    new-instance v9, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;

    iget-object v12, v0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    invoke-direct {v9, v14, v12}, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;-><init>(Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;Landroidx/media2/exoplayer/external/util/TimestampAdjuster;)V

    .line 252
    .end local v13    # "payloadReader":Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;
    .local v9, "payloadReader":Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;
    iget-object v12, v0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v12, v6, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v13, v9

    goto :goto_3

    .line 248
    .end local v8    # "idGenerator":Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;
    .end local v9    # "payloadReader":Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;
    .restart local v13    # "payloadReader":Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;
    :cond_d
    goto :goto_3

    .line 230
    .end local v14    # "elementaryStreamReader":Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;
    .end local v15    # "canReadDuration":Z
    .local v9, "canReadDuration":Z
    :cond_e
    move v15, v9

    .line 256
    .end local v9    # "canReadDuration":Z
    .restart local v15    # "canReadDuration":Z
    :goto_3
    iget-boolean v8, v0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->foundAudioTrack:Z

    if-eqz v8, :cond_f

    iget-boolean v8, v0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->foundVideoTrack:Z

    if-eqz v8, :cond_f

    .line 257
    iget-wide v8, v0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->lastTrackPosition:J

    const-wide/16 v16, 0x2000

    add-long v8, v8, v16

    goto :goto_4

    .line 256
    :cond_f
    nop

    .line 258
    const-wide/32 v8, 0x100000

    :goto_4
    nop

    .line 259
    .local v8, "maxSearchPosition":J
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v16

    cmp-long v12, v16, v8

    if-lez v12, :cond_10

    .line 260
    iput-boolean v7, v0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->foundAllTracks:Z

    .line 261
    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->output:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    invoke-interface {v7}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->endTracks()V

    goto :goto_5

    .line 259
    :cond_10
    goto :goto_5

    .line 229
    .end local v8    # "maxSearchPosition":J
    .end local v15    # "canReadDuration":Z
    .restart local v9    # "canReadDuration":Z
    :cond_11
    move v15, v9

    .line 266
    .end local v9    # "canReadDuration":Z
    .restart local v15    # "canReadDuration":Z
    :goto_5
    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v7, v7, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-interface {v1, v7, v8, v9}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 267
    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v7, v8}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 268
    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v7}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v7

    .line 269
    .local v7, "payloadLength":I
    add-int/lit8 v8, v7, 0x6

    .line 271
    .local v8, "pesLength":I
    if-nez v13, :cond_12

    .line 273
    invoke-interface {v1, v8}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_6

    .line 275
    :cond_12
    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v9, v8}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset(I)V

    .line 277
    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v9, v9, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v12, 0x0

    invoke-interface {v1, v9, v12, v8}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BII)V

    .line 278
    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/4 v12, 0x6

    invoke-virtual {v9, v12}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 279
    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v13, v9}, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;->consume(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V

    .line 280
    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v9}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->capacity()I

    move-result v12

    invoke-virtual {v9, v12}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setLimit(I)V

    .line 283
    :goto_6
    const/4 v9, 0x0

    return v9
.end method

.method public release()V
    .locals 0

    .line 164
    return-void
.end method

.method public seek(JJ)V
    .locals 6
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .line 139
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    .line 140
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->getTimestampOffsetUs()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 141
    .local v0, "hasNotEncounteredFirstTimestamp":Z
    :goto_0
    if-nez v0, :cond_3

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    .line 142
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->getFirstSampleTimestampUs()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    .line 143
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->getFirstSampleTimestampUs()J

    move-result-wide v1

    cmp-long v3, v1, p3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_2

    .line 142
    :cond_2
    goto :goto_2

    .line 141
    :cond_3
    nop

    .line 149
    :goto_1
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->reset()V

    .line 150
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    invoke-virtual {v1, p3, p4}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->setFirstSampleTimestampUs(J)V

    .line 153
    :goto_2
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->psBinarySearchSeeker:Landroidx/media2/exoplayer/external/extractor/ts/PsBinarySearchSeeker;

    if-eqz v1, :cond_4

    .line 154
    invoke-virtual {v1, p3, p4}, Landroidx/media2/exoplayer/external/extractor/ts/PsBinarySearchSeeker;->setSeekTargetUs(J)V

    goto :goto_3

    .line 153
    :cond_4
    nop

    .line 156
    :goto_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 157
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;->seek()V

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 159
    .end local v1    # "i":I
    :cond_5
    return-void
.end method

.method public sniff(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z
    .locals 9
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 95
    const/16 v0, 0xe

    new-array v1, v0, [B

    .line 96
    .local v1, "scratch":[B
    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, v0}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 99
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v3, 0x1

    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    const/4 v4, 0x2

    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    or-int/2addr v0, v5

    const/4 v5, 0x3

    aget-byte v7, v1, v5

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v0, v7

    const/16 v7, 0x1ba

    if-eq v7, v0, :cond_0

    .line 101
    return v2

    .line 104
    :cond_0
    const/4 v0, 0x4

    aget-byte v7, v1, v0

    and-int/lit16 v7, v7, 0xc4

    const/16 v8, 0x44

    if-eq v7, v8, :cond_1

    .line 105
    return v2

    .line 108
    :cond_1
    const/4 v7, 0x6

    aget-byte v7, v1, v7

    and-int/2addr v7, v0

    if-eq v7, v0, :cond_2

    .line 109
    return v2

    .line 112
    :cond_2
    aget-byte v7, v1, v6

    and-int/2addr v7, v0

    if-eq v7, v0, :cond_3

    .line 113
    return v2

    .line 116
    :cond_3
    const/16 v0, 0x9

    aget-byte v0, v1, v0

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_4

    .line 117
    return v2

    .line 120
    :cond_4
    const/16 v0, 0xc

    aget-byte v0, v1, v0

    and-int/2addr v0, v5

    if-eq v0, v5, :cond_5

    .line 121
    return v2

    .line 124
    :cond_5
    const/16 v0, 0xd

    aget-byte v0, v1, v0

    and-int/lit8 v0, v0, 0x7

    .line 125
    .local v0, "packStuffingLength":I
    invoke-interface {p1, v0}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 127
    invoke-interface {p1, v1, v2, v5}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 128
    aget-byte v5, v1, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    aget-byte v7, v1, v3

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v6, v7, 0x8

    or-int/2addr v5, v6

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v4, v5

    if-ne v3, v4, :cond_6

    const/4 v2, 0x1

    nop

    :cond_6
    return v2
.end method
