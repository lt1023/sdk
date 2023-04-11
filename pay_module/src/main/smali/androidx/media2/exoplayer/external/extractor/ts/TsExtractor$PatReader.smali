.class Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PatReader;
.super Ljava/lang/Object;
.source "TsExtractor.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/ts/SectionPayloadReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PatReader"
.end annotation


# instance fields
.field private final patScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

.field final synthetic this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)V
    .locals 1

    .line 453
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PatReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    new-instance p1, Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;-><init>([B)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PatReader;->patScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    .line 455
    return-void
.end method


# virtual methods
.method public consume(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V
    .locals 10
    .param p1, "sectionData"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 465
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 466
    .local v0, "tableId":I
    if-eqz v0, :cond_0

    .line 468
    return-void

    .line 473
    :cond_0
    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 475
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    const/4 v2, 0x4

    div-int/2addr v1, v2

    .line 476
    .local v1, "programCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 477
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PatReader;->patScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {p1, v4, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes(Landroidx/media2/exoplayer/external/util/ParsableBitArray;I)V

    .line 478
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PatReader;->patScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 479
    .local v4, "programNumber":I
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PatReader;->patScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 480
    const/16 v5, 0xd

    if-nez v4, :cond_1

    .line 481
    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PatReader;->patScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v6, v5}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    goto :goto_1

    .line 483
    :cond_1
    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PatReader;->patScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v6, v5}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 484
    .local v5, "pid":I
    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PatReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v6}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$000(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)Landroid/util/SparseArray;

    move-result-object v6

    new-instance v7, Landroidx/media2/exoplayer/external/extractor/ts/SectionReader;

    new-instance v8, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;

    iget-object v9, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PatReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-direct {v8, v9, v5}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;-><init>(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;I)V

    invoke-direct {v7, v8}, Landroidx/media2/exoplayer/external/extractor/ts/SectionReader;-><init>(Landroidx/media2/exoplayer/external/extractor/ts/SectionPayloadReader;)V

    invoke-virtual {v6, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 485
    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PatReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v6}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$108(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)I

    .line 476
    .end local v4    # "programNumber":I
    .end local v5    # "pid":I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 488
    .end local v3    # "i":I
    :cond_2
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PatReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$200(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    .line 489
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PatReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$000(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)Landroid/util/SparseArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_2

    .line 488
    :cond_3
    nop

    .line 491
    :goto_2
    return-void
.end method

.method public init(Landroidx/media2/exoplayer/external/util/TimestampAdjuster;Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 0
    .param p1, "timestampAdjuster"    # Landroidx/media2/exoplayer/external/util/TimestampAdjuster;
    .param p2, "extractorOutput"    # Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;
    .param p3, "idGenerator"    # Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .line 461
    return-void
.end method
