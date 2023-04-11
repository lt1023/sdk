.class public final Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;
.super Ljava/lang/Object;
.source "TsExtractor.java"

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
        Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;,
        Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PatReader;,
        Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$Mode;
    }
.end annotation


# static fields
.field private static final AC3_FORMAT_IDENTIFIER:J = 0x41432d33L

.field private static final AC4_FORMAT_IDENTIFIER:J = 0x41432d34L

.field private static final BUFFER_SIZE:I = 0x24b8

.field private static final E_AC3_FORMAT_IDENTIFIER:J = 0x45414333L

.field public static final FACTORY:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

.field private static final HEVC_FORMAT_IDENTIFIER:J = 0x48455643L

.field private static final MAX_PID_PLUS_ONE:I = 0x2000

.field public static final MODE_HLS:I = 0x2

.field public static final MODE_MULTI_PMT:I = 0x0

.field public static final MODE_SINGLE_PMT:I = 0x1

.field private static final SNIFF_TS_PACKET_COUNT:I = 0x5

.field public static final TS_PACKET_SIZE:I = 0xbc

.field private static final TS_PAT_PID:I = 0x0

.field public static final TS_STREAM_TYPE_AAC_ADTS:I = 0xf

.field public static final TS_STREAM_TYPE_AAC_LATM:I = 0x11

.field public static final TS_STREAM_TYPE_AC3:I = 0x81

.field public static final TS_STREAM_TYPE_AC4:I = 0xac

.field public static final TS_STREAM_TYPE_DTS:I = 0x8a

.field public static final TS_STREAM_TYPE_DVBSUBS:I = 0x59

.field public static final TS_STREAM_TYPE_E_AC3:I = 0x87

.field public static final TS_STREAM_TYPE_H262:I = 0x2

.field public static final TS_STREAM_TYPE_H264:I = 0x1b

.field public static final TS_STREAM_TYPE_H265:I = 0x24

.field public static final TS_STREAM_TYPE_HDMV_DTS:I = 0x82

.field public static final TS_STREAM_TYPE_ID3:I = 0x15

.field public static final TS_STREAM_TYPE_MPA:I = 0x3

.field public static final TS_STREAM_TYPE_MPA_LSF:I = 0x4

.field public static final TS_STREAM_TYPE_SPLICE_INFO:I = 0x86

.field public static final TS_SYNC_BYTE:I = 0x47


# instance fields
.field private bytesSinceLastSync:I

.field private final continuityCounters:Landroid/util/SparseIntArray;

.field private final durationReader:Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;

.field private hasOutputSeekMap:Z

.field private id3Reader:Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;

.field private final mode:I

.field private output:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

.field private final payloadReaderFactory:Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$Factory;

.field private pcrPid:I

.field private pendingSeekToStart:Z

.field private remainingPmts:I

.field private final timestampAdjusters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/util/TimestampAdjuster;",
            ">;"
        }
    .end annotation
.end field

.field private final trackIds:Landroid/util/SparseBooleanArray;

.field private final trackPids:Landroid/util/SparseBooleanArray;

.field private tracksEnded:Z

.field private tsBinarySearchSeeker:Landroidx/media2/exoplayer/external/extractor/ts/TsBinarySearchSeeker;

.field private final tsPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private final tsPayloadReaders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$$Lambda$0;->$instance:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->FACTORY:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;-><init>(I)V

    .line 141
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "defaultTsPayloadReaderFlags"    # I

    .line 148
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;-><init>(II)V

    .line 149
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "defaultTsPayloadReaderFlags"    # I

    .line 158
    new-instance v0, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;-><init>(J)V

    new-instance v1, Landroidx/media2/exoplayer/external/extractor/ts/DefaultTsPayloadReaderFactory;

    invoke-direct {v1, p2}, Landroidx/media2/exoplayer/external/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(I)V

    invoke-direct {p0, p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;-><init>(ILandroidx/media2/exoplayer/external/util/TimestampAdjuster;Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$Factory;)V

    .line 162
    return-void
.end method

.method public constructor <init>(ILandroidx/media2/exoplayer/external/util/TimestampAdjuster;Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$Factory;)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "timestampAdjuster"    # Landroidx/media2/exoplayer/external/util/TimestampAdjuster;
    .param p3, "payloadReaderFactory"    # Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$Factory;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    invoke-static {p3}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$Factory;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->payloadReaderFactory:Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$Factory;

    .line 175
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->mode:I

    .line 176
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->timestampAdjusters:Ljava/util/List;

    .line 180
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->timestampAdjusters:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 176
    :cond_1
    :goto_0
    nop

    .line 177
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->timestampAdjusters:Ljava/util/List;

    .line 182
    :goto_1
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/16 v1, 0x24b8

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>([BI)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 183
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->trackIds:Landroid/util/SparseBooleanArray;

    .line 184
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->trackPids:Landroid/util/SparseBooleanArray;

    .line 185
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    .line 186
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->continuityCounters:Landroid/util/SparseIntArray;

    .line 187
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->durationReader:Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;

    .line 188
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->pcrPid:I

    .line 189
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->resetPayloadReaders()V

    .line 190
    return-void
.end method

.method static synthetic access$000(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    .line 60
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    .line 60
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->remainingPmts:I

    return v0
.end method

.method static synthetic access$1000(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    .line 60
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tracksEnded:Z

    return v0
.end method

.method static synthetic access$1002(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;Z)Z
    .locals 0
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;
    .param p1, "x1"    # Z

    .line 60
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tracksEnded:Z

    return p1
.end method

.method static synthetic access$102(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;I)I
    .locals 0
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;
    .param p1, "x1"    # I

    .line 60
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->remainingPmts:I

    return p1
.end method

.method static synthetic access$108(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)I
    .locals 2
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    .line 60
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->remainingPmts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->remainingPmts:I

    return v0
.end method

.method static synthetic access$200(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    .line 60
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->mode:I

    return v0
.end method

.method static synthetic access$300(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    .line 60
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->timestampAdjusters:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$402(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;I)I
    .locals 0
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;
    .param p1, "x1"    # I

    .line 60
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->pcrPid:I

    return p1
.end method

.method static synthetic access$500(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    .line 60
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->id3Reader:Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;

    return-object v0
.end method

.method static synthetic access$502(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;)Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;
    .locals 0
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;
    .param p1, "x1"    # Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;

    .line 60
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->id3Reader:Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;

    return-object p1
.end method

.method static synthetic access$600(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$Factory;
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    .line 60
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->payloadReaderFactory:Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$Factory;

    return-object v0
.end method

.method static synthetic access$700(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    .line 60
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->output:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    return-object v0
.end method

.method static synthetic access$800(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    .line 60
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->trackIds:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$900(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    .line 60
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->trackPids:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method private fillBufferWithAtLeastOnePacket(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z
    .locals 7
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 380
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    .line 382
    .local v0, "data":[B
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v1

    rsub-int v1, v1, 0x24b8

    const/4 v2, 0x0

    const/16 v3, 0xbc

    if-ge v1, v3, :cond_1

    .line 383
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    .line 384
    .local v1, "bytesLeft":I
    if-lez v1, :cond_0

    .line 385
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v4

    invoke-static {v0, v4, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 384
    :cond_0
    nop

    .line 387
    :goto_0
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v4, v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset([BI)V

    goto :goto_1

    .line 382
    .end local v1    # "bytesLeft":I
    :cond_1
    nop

    .line 390
    :goto_1
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-ge v1, v3, :cond_3

    .line 391
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v1

    .line 392
    .local v1, "limit":I
    rsub-int v4, v1, 0x24b8

    invoke-interface {p1, v0, v1, v4}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->read([BII)I

    move-result v4

    .line 393
    .local v4, "read":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 394
    return v2

    .line 396
    :cond_2
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    add-int v6, v1, v4

    invoke-virtual {v5, v6}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setLimit(I)V

    .line 397
    .end local v1    # "limit":I
    .end local v4    # "read":I
    goto :goto_1

    .line 398
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method private findEndOfFirstTsPacketInBuffer()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 408
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 409
    .local v0, "searchStart":I
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v1

    .line 410
    .local v1, "limit":I
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-static {v2, v0, v1}, Landroidx/media2/exoplayer/external/extractor/ts/TsUtil;->findSyncBytePosition([BII)I

    move-result v2

    .line 413
    .local v2, "syncBytePosition":I
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v3, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 414
    add-int/lit16 v3, v2, 0xbc

    .line 415
    .local v3, "endOfPacket":I
    if-le v3, v1, :cond_2

    .line 416
    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->bytesSinceLastSync:I

    sub-int v5, v2, v0

    add-int/2addr v4, v5

    iput v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->bytesSinceLastSync:I

    .line 417
    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->mode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->bytesSinceLastSync:I

    const/16 v5, 0x178

    if-gt v4, v5, :cond_0

    goto :goto_0

    .line 418
    :cond_0
    new-instance v4, Landroidx/media2/exoplayer/external/ParserException;

    const-string v5, "Cannot find sync byte. Most likely not a Transport Stream."

    invoke-direct {v4, v5}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 417
    :cond_1
    :goto_0
    goto :goto_1

    .line 422
    :cond_2
    const/4 v4, 0x0

    iput v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->bytesSinceLastSync:I

    .line 424
    :goto_1
    return v3
.end method

.method static final synthetic lambda$static$0$TsExtractor()[Landroidx/media2/exoplayer/external/extractor/Extractor;
    .locals 3

    .line 63
    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media2/exoplayer/external/extractor/Extractor;

    new-instance v1, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private maybeOutputSeekMap(J)V
    .locals 12
    .param p1, "inputLength"    # J

    .line 362
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->hasOutputSeekMap:Z

    if-nez v0, :cond_1

    .line 363
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->hasOutputSeekMap:Z

    .line 364
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->durationReader:Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->getDurationUs()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 365
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ts/TsBinarySearchSeeker;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->durationReader:Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;

    .line 367
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->getPcrTimestampAdjuster()Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    move-result-object v6

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->durationReader:Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;

    .line 368
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->getDurationUs()J

    move-result-wide v7

    iget v11, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->pcrPid:I

    move-object v5, v0

    move-wide v9, p1

    invoke-direct/range {v5 .. v11}, Landroidx/media2/exoplayer/external/extractor/ts/TsBinarySearchSeeker;-><init>(Landroidx/media2/exoplayer/external/util/TimestampAdjuster;JJI)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsBinarySearchSeeker:Landroidx/media2/exoplayer/external/extractor/ts/TsBinarySearchSeeker;

    .line 371
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->output:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsBinarySearchSeeker:Landroidx/media2/exoplayer/external/extractor/ts/TsBinarySearchSeeker;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/extractor/ts/TsBinarySearchSeeker;->getSeekMap()Landroidx/media2/exoplayer/external/extractor/SeekMap;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->seekMap(Landroidx/media2/exoplayer/external/extractor/SeekMap;)V

    goto :goto_0

    .line 373
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->output:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    new-instance v1, Landroidx/media2/exoplayer/external/extractor/SeekMap$Unseekable;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->durationReader:Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->getDurationUs()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Landroidx/media2/exoplayer/external/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->seekMap(Landroidx/media2/exoplayer/external/extractor/SeekMap;)V

    goto :goto_0

    .line 362
    :cond_1
    nop

    .line 376
    :goto_0
    return-void
.end method

.method private resetPayloadReaders()V
    .locals 6

    .line 434
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->trackIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 435
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 436
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->payloadReaderFactory:Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$Factory;

    .line 437
    invoke-interface {v0}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$Factory;->createInitialPayloadReaders()Landroid/util/SparseArray;

    move-result-object v0

    .line 438
    .local v0, "initialPayloadReaders":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 439
    .local v1, "initialPayloadReadersSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 440
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 439
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 442
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    const/4 v3, 0x0

    new-instance v4, Landroidx/media2/exoplayer/external/extractor/ts/SectionReader;

    new-instance v5, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PatReader;

    invoke-direct {v5, p0}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PatReader;-><init>(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)V

    invoke-direct {v4, v5}, Landroidx/media2/exoplayer/external/extractor/ts/SectionReader;-><init>(Landroidx/media2/exoplayer/external/extractor/ts/SectionPayloadReader;)V

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 443
    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->id3Reader:Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;

    .line 444
    return-void
.end method

.method private shouldConsumePacketPayload(I)Z
    .locals 3
    .param p1, "packetPid"    # I

    .line 428
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->mode:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tracksEnded:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->trackPids:Landroid/util/SparseBooleanArray;

    .line 430
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    .line 428
    :cond_1
    nop

    .line 430
    :goto_0
    const/4 v1, 0x1

    .line 428
    :goto_1
    return v1
.end method


# virtual methods
.method public init(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;)V
    .locals 0
    .param p1, "output"    # Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    .line 217
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->output:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    .line 218
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

    .line 259
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getLength()J

    move-result-wide v3

    .line 260
    .local v3, "inputLength":J
    iget-boolean v5, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tracksEnded:Z

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v5, :cond_5

    .line 261
    cmp-long v5, v3, v7

    if-eqz v5, :cond_0

    iget v5, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->mode:I

    if-eq v5, v9, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 262
    .local v5, "canReadDuration":Z
    :goto_0
    if-eqz v5, :cond_1

    iget-object v12, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->durationReader:Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;

    invoke-virtual {v12}, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->isDurationReadFinished()Z

    move-result v12

    if-nez v12, :cond_1

    .line 263
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->durationReader:Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;

    iget v7, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->pcrPid:I

    invoke-virtual {v6, v1, v2, v7}, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->readDuration(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;I)I

    move-result v6

    return v6

    .line 262
    :cond_1
    nop

    .line 265
    invoke-direct {v0, v3, v4}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->maybeOutputSeekMap(J)V

    .line 267
    iget-boolean v12, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->pendingSeekToStart:Z

    if-eqz v12, :cond_3

    .line 268
    iput-boolean v11, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->pendingSeekToStart:Z

    .line 269
    const-wide/16 v12, 0x0

    invoke-virtual {v0, v12, v13, v12, v13}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->seek(JJ)V

    .line 270
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v14

    cmp-long v16, v14, v12

    if-eqz v16, :cond_2

    .line 271
    iput-wide v12, v2, Landroidx/media2/exoplayer/external/extractor/PositionHolder;->position:J

    .line 272
    return v10

    .line 270
    :cond_2
    goto :goto_1

    .line 267
    :cond_3
    nop

    .line 276
    :goto_1
    iget-object v12, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsBinarySearchSeeker:Landroidx/media2/exoplayer/external/extractor/ts/TsBinarySearchSeeker;

    if-eqz v12, :cond_4

    invoke-virtual {v12}, Landroidx/media2/exoplayer/external/extractor/ts/TsBinarySearchSeeker;->isSeeking()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 277
    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsBinarySearchSeeker:Landroidx/media2/exoplayer/external/extractor/ts/TsBinarySearchSeeker;

    invoke-virtual {v7, v1, v2, v6}, Landroidx/media2/exoplayer/external/extractor/ts/TsBinarySearchSeeker;->handlePendingSeek(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$OutputFrameHolder;)I

    move-result v6

    return v6

    .line 276
    :cond_4
    goto :goto_2

    .line 260
    .end local v5    # "canReadDuration":Z
    :cond_5
    nop

    .line 282
    :goto_2
    invoke-direct/range {p0 .. p1}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->fillBufferWithAtLeastOnePacket(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 283
    const/4 v5, -0x1

    return v5

    .line 286
    :cond_6
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->findEndOfFirstTsPacketInBuffer()I

    move-result v5

    .line 287
    .local v5, "endOfPacket":I
    iget-object v12, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v12}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v12

    .line 288
    .local v12, "limit":I
    if-le v5, v12, :cond_7

    .line 289
    return v11

    .line 292
    :cond_7
    const/4 v13, 0x0

    .line 295
    .local v13, "packetHeaderFlags":I
    iget-object v14, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v14}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v14

    .line 296
    .local v14, "tsPacketHeader":I
    const/high16 v15, 0x800000

    and-int/2addr v15, v14

    if-eqz v15, :cond_8

    .line 298
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v6, v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 299
    return v11

    .line 301
    :cond_8
    const/high16 v15, 0x400000

    and-int/2addr v15, v14

    if-eqz v15, :cond_9

    const/4 v15, 0x1

    goto :goto_3

    :cond_9
    const/4 v15, 0x0

    :goto_3
    or-int/2addr v13, v15

    .line 303
    const v15, 0x1fff00

    and-int/2addr v15, v14

    shr-int/lit8 v15, v15, 0x8

    .line 305
    .local v15, "pid":I
    and-int/lit8 v16, v14, 0x20

    if-eqz v16, :cond_a

    const/16 v16, 0x1

    goto :goto_4

    :cond_a
    const/16 v16, 0x0

    .line 306
    .local v16, "adaptationFieldExists":Z
    :goto_4
    and-int/lit8 v17, v14, 0x10

    if-eqz v17, :cond_b

    const/16 v17, 0x1

    goto :goto_5

    :cond_b
    const/16 v17, 0x0

    .line 308
    .local v17, "payloadExists":Z
    :goto_5
    if-eqz v17, :cond_c

    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v6, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;

    nop

    .line 309
    .local v6, "payloadReader":Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;
    :cond_c
    if-nez v6, :cond_d

    .line 310
    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v7, v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 311
    return v11

    .line 315
    :cond_d
    iget v10, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->mode:I

    if-eq v10, v9, :cond_10

    .line 316
    and-int/lit8 v10, v14, 0xf

    .line 317
    .local v10, "continuityCounter":I
    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->continuityCounters:Landroid/util/SparseIntArray;

    add-int/lit8 v8, v10, -0x1

    invoke-virtual {v7, v15, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 318
    .local v7, "previousCounter":I
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->continuityCounters:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v15, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 319
    if-ne v7, v10, :cond_e

    .line 321
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v8, v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 322
    return v11

    .line 323
    :cond_e
    add-int/lit8 v8, v7, 0x1

    and-int/lit8 v8, v8, 0xf

    if-eq v10, v8, :cond_f

    .line 325
    invoke-interface {v6}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;->seek()V

    goto :goto_6

    .line 323
    :cond_f
    goto :goto_6

    .line 315
    .end local v7    # "previousCounter":I
    .end local v10    # "continuityCounter":I
    :cond_10
    nop

    .line 330
    :goto_6
    if-eqz v16, :cond_12

    .line 331
    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v7}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    .line 332
    .local v7, "adaptationFieldLength":I
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v8}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    .line 334
    .local v8, "adaptationFieldFlags":I
    nop

    .line 335
    and-int/lit8 v10, v8, 0x40

    if-eqz v10, :cond_11

    .line 336
    const/4 v10, 0x2

    goto :goto_7

    .line 337
    :cond_11
    const/4 v10, 0x0

    :goto_7
    or-int/2addr v13, v10

    .line 338
    iget-object v10, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    add-int/lit8 v11, v7, -0x1

    invoke-virtual {v10, v11}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_8

    .line 330
    .end local v7    # "adaptationFieldLength":I
    .end local v8    # "adaptationFieldFlags":I
    :cond_12
    nop

    .line 342
    :goto_8
    iget-boolean v7, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tracksEnded:Z

    .line 343
    .local v7, "wereTracksEnded":Z
    invoke-direct {v0, v15}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->shouldConsumePacketPayload(I)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 344
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v8, v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setLimit(I)V

    .line 345
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-interface {v6, v8, v13}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;->consume(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 346
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v8, v12}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setLimit(I)V

    goto :goto_9

    .line 343
    :cond_13
    nop

    .line 348
    :goto_9
    iget v8, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->mode:I

    if-eq v8, v9, :cond_14

    if-nez v7, :cond_14

    iget-boolean v8, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tracksEnded:Z

    if-eqz v8, :cond_14

    const-wide/16 v8, -0x1

    cmp-long v10, v3, v8

    if-eqz v10, :cond_14

    .line 352
    const/4 v8, 0x1

    iput-boolean v8, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->pendingSeekToStart:Z

    goto :goto_a

    .line 348
    :cond_14
    nop

    .line 355
    :goto_a
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v8, v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 356
    const/4 v8, 0x0

    return v8
.end method

.method public release()V
    .locals 0

    .line 254
    return-void
.end method

.method public seek(JJ)V
    .locals 15
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .line 222
    move-object v0, p0

    move-wide/from16 v1, p3

    iget v3, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->mode:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v3, v6, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 223
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->timestampAdjusters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 224
    .local v3, "timestampAdjustersCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    const-wide/16 v7, 0x0

    if-ge v6, v3, :cond_5

    .line 225
    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->timestampAdjusters:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    .line 226
    .local v9, "timestampAdjuster":Landroidx/media2/exoplayer/external/util/TimestampAdjuster;
    nop

    .line 227
    invoke-virtual {v9}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->getTimestampOffsetUs()J

    move-result-wide v10

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v14, v10, v12

    if-nez v14, :cond_1

    const/4 v10, 0x1

    goto :goto_2

    :cond_1
    const/4 v10, 0x0

    .line 228
    .local v10, "hasNotEncounteredFirstTimestamp":Z
    :goto_2
    if-nez v10, :cond_4

    .line 229
    invoke-virtual {v9}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->getTimestampOffsetUs()J

    move-result-wide v11

    cmp-long v13, v11, v7

    if-eqz v13, :cond_3

    .line 230
    invoke-virtual {v9}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->getFirstSampleTimestampUs()J

    move-result-wide v7

    cmp-long v11, v7, v1

    if-eqz v11, :cond_2

    goto :goto_3

    :cond_2
    goto :goto_4

    .line 229
    :cond_3
    goto :goto_4

    .line 228
    :cond_4
    nop

    .line 236
    :goto_3
    invoke-virtual {v9}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->reset()V

    .line 237
    invoke-virtual {v9, v1, v2}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->setFirstSampleTimestampUs(J)V

    .line 224
    .end local v9    # "timestampAdjuster":Landroidx/media2/exoplayer/external/util/TimestampAdjuster;
    .end local v10    # "hasNotEncounteredFirstTimestamp":Z
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 240
    .end local v6    # "i":I
    :cond_5
    cmp-long v5, v1, v7

    if-eqz v5, :cond_6

    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsBinarySearchSeeker:Landroidx/media2/exoplayer/external/extractor/ts/TsBinarySearchSeeker;

    if-eqz v5, :cond_6

    .line 241
    invoke-virtual {v5, v1, v2}, Landroidx/media2/exoplayer/external/extractor/ts/TsBinarySearchSeeker;->setSeekTargetUs(J)V

    goto :goto_5

    .line 240
    :cond_6
    nop

    .line 243
    :goto_5
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset()V

    .line 244
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->continuityCounters:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->clear()V

    .line 245
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_6
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 246
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;

    invoke-interface {v6}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;->seek()V

    .line 245
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 248
    .end local v5    # "i":I
    :cond_7
    iput v4, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->bytesSinceLastSync:I

    .line 249
    return-void
.end method

.method public sniff(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z
    .locals 7
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 196
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    .line 197
    .local v0, "buffer":[B
    const/4 v1, 0x0

    const/16 v2, 0x3ac

    invoke-interface {p1, v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 198
    const/4 v2, 0x0

    .local v2, "startPosCandidate":I
    :goto_0
    const/16 v3, 0xbc

    if-ge v2, v3, :cond_3

    .line 200
    const/4 v3, 0x1

    .line 201
    .local v3, "isSyncBytePatternCorrect":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    const/4 v5, 0x5

    if-ge v4, v5, :cond_1

    .line 202
    mul-int/lit16 v5, v4, 0xbc

    add-int/2addr v5, v2

    aget-byte v5, v0, v5

    const/16 v6, 0x47

    if-eq v5, v6, :cond_0

    .line 203
    const/4 v3, 0x0

    .line 204
    goto :goto_2

    .line 201
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 207
    .end local v4    # "i":I
    :cond_1
    :goto_2
    if-eqz v3, :cond_2

    .line 208
    invoke-interface {p1, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    .line 209
    const/4 v1, 0x1

    return v1

    .line 207
    :cond_2
    nop

    .line 198
    .end local v3    # "isSyncBytePatternCorrect":Z
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 212
    .end local v2    # "startPosCandidate":I
    :cond_3
    return v1
.end method
