.class Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;
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
    name = "PmtReader"
.end annotation


# static fields
.field private static final TS_PMT_DESC_AC3:I = 0x6a

.field private static final TS_PMT_DESC_DTS:I = 0x7b

.field private static final TS_PMT_DESC_DVBSUBS:I = 0x59

.field private static final TS_PMT_DESC_DVB_EXT:I = 0x7f

.field private static final TS_PMT_DESC_DVB_EXT_AC4:I = 0x15

.field private static final TS_PMT_DESC_EAC3:I = 0x7a

.field private static final TS_PMT_DESC_ISO639_LANG:I = 0xa

.field private static final TS_PMT_DESC_REGISTRATION:I = 0x5


# instance fields
.field private final pid:I

.field private final pmtScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

.field final synthetic this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

.field private final trackIdToPidScratch:Landroid/util/SparseIntArray;

.field private final trackIdToReaderScratch:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;I)V
    .locals 1
    .param p2, "pid"    # I

    .line 515
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 516
    new-instance p1, Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v0, 0x5

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;-><init>([B)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    .line 517
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->trackIdToReaderScratch:Landroid/util/SparseArray;

    .line 518
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->trackIdToPidScratch:Landroid/util/SparseIntArray;

    .line 519
    iput p2, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->pid:I

    .line 520
    return-void
.end method

.method private readEsInfo(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;
    .locals 15
    .param p1, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p2, "length"    # I

    .line 647
    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 648
    .local v1, "descriptorsStartPosition":I
    add-int v2, v1, p2

    .line 649
    .local v2, "descriptorsEndPosition":I
    const/4 v3, -0x1

    .line 650
    .local v3, "streamType":I
    const/4 v4, 0x0

    .line 651
    .local v4, "language":Ljava/lang/String;
    const/4 v5, 0x0

    .line 652
    .local v5, "dvbSubtitleInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$DvbSubtitleInfo;>;"
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v6

    if-ge v6, v2, :cond_d

    .line 653
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    .line 654
    .local v6, "descriptorTag":I
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    .line 655
    .local v7, "descriptorLength":I
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v8

    add-int/2addr v8, v7

    .line 656
    .local v8, "positionOfNextDescriptor":I
    const/4 v9, 0x5

    if-ne v6, v9, :cond_4

    .line 657
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v9

    .line 658
    .local v9, "formatIdentifier":J
    const-wide/32 v11, 0x41432d33

    cmp-long v13, v9, v11

    if-nez v13, :cond_0

    .line 659
    const/16 v3, 0x81

    goto :goto_1

    .line 660
    :cond_0
    const-wide/32 v11, 0x45414333

    cmp-long v13, v9, v11

    if-nez v13, :cond_1

    .line 661
    const/16 v3, 0x87

    goto :goto_1

    .line 662
    :cond_1
    const-wide/32 v11, 0x41432d34

    cmp-long v13, v9, v11

    if-nez v13, :cond_2

    .line 663
    const/16 v3, 0xac

    goto :goto_1

    .line 664
    :cond_2
    const-wide/32 v11, 0x48455643

    cmp-long v13, v9, v11

    if-nez v13, :cond_3

    .line 665
    const/16 v3, 0x24

    goto :goto_1

    .line 664
    :cond_3
    nop

    .line 667
    .end local v9    # "formatIdentifier":J
    :goto_1
    goto/16 :goto_4

    :cond_4
    const/16 v9, 0x6a

    if-ne v6, v9, :cond_5

    .line 668
    const/16 v3, 0x81

    goto :goto_4

    .line 669
    :cond_5
    const/16 v9, 0x7a

    if-ne v6, v9, :cond_6

    .line 670
    const/16 v3, 0x87

    goto :goto_4

    .line 671
    :cond_6
    const/16 v9, 0x7f

    if-ne v6, v9, :cond_8

    .line 673
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    .line 674
    .local v9, "descriptorTagExt":I
    const/16 v10, 0x15

    if-ne v9, v10, :cond_7

    .line 676
    const/16 v3, 0xac

    goto :goto_2

    .line 674
    :cond_7
    nop

    .line 678
    .end local v9    # "descriptorTagExt":I
    :goto_2
    goto :goto_4

    :cond_8
    const/16 v9, 0x7b

    if-ne v6, v9, :cond_9

    .line 679
    const/16 v3, 0x8a

    goto :goto_4

    .line 680
    :cond_9
    const/16 v9, 0xa

    const/4 v10, 0x3

    if-ne v6, v9, :cond_a

    .line 681
    invoke-virtual {v0, v10}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 683
    :cond_a
    const/16 v9, 0x59

    if-ne v6, v9, :cond_c

    .line 684
    const/16 v3, 0x59

    .line 685
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v9

    .line 686
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v9

    if-ge v9, v8, :cond_b

    .line 687
    invoke-virtual {v0, v10}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 688
    .local v9, "dvbLanguage":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v11

    .line 689
    .local v11, "dvbSubtitlingType":I
    const/4 v12, 0x4

    new-array v13, v12, [B

    .line 690
    .local v13, "initializationData":[B
    const/4 v14, 0x0

    invoke-virtual {v0, v13, v14, v12}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 691
    new-instance v12, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$DvbSubtitleInfo;

    invoke-direct {v12, v9, v11, v13}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$DvbSubtitleInfo;-><init>(Ljava/lang/String;I[B)V

    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 693
    .end local v9    # "dvbLanguage":Ljava/lang/String;
    .end local v11    # "dvbSubtitlingType":I
    .end local v13    # "initializationData":[B
    goto :goto_3

    .line 686
    :cond_b
    goto :goto_4

    .line 683
    :cond_c
    nop

    .line 696
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v9

    sub-int v9, v8, v9

    invoke-virtual {v0, v9}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 697
    .end local v6    # "descriptorTag":I
    .end local v7    # "descriptorLength":I
    .end local v8    # "positionOfNextDescriptor":I
    goto/16 :goto_0

    .line 698
    :cond_d
    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 699
    new-instance v6, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;

    iget-object v7, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    .line 700
    invoke-static {v7, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    invoke-direct {v6, v3, v4, v5, v7}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;-><init>(ILjava/lang/String;Ljava/util/List;[B)V

    .line 699
    return-object v6
.end method


# virtual methods
.method public consume(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V
    .locals 16
    .param p1, "sectionData"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 530
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 531
    .local v2, "tableId":I
    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 533
    return-void

    .line 537
    :cond_0
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v4}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$200(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v4, v6, :cond_2

    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v4}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$200(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)I

    move-result v4

    if-eq v4, v3, :cond_2

    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v4}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$100(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)I

    move-result v4

    if-ne v4, v6, :cond_1

    goto :goto_0

    .line 540
    :cond_1
    new-instance v4, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    .line 541
    invoke-static {v7}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$300(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    invoke-virtual {v7}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->getFirstSampleTimestampUs()J

    move-result-wide v7

    invoke-direct {v4, v7, v8}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;-><init>(J)V

    .line 542
    .local v4, "timestampAdjuster":Landroidx/media2/exoplayer/external/util/TimestampAdjuster;
    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v7}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$300(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 537
    .end local v4    # "timestampAdjuster":Landroidx/media2/exoplayer/external/util/TimestampAdjuster;
    :cond_2
    :goto_0
    nop

    .line 538
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v4}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$300(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    .line 546
    .restart local v4    # "timestampAdjuster":Landroidx/media2/exoplayer/external/util/TimestampAdjuster;
    :goto_1
    invoke-virtual {v1, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 547
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v7

    .line 552
    .local v7, "programNumber":I
    const/4 v8, 0x3

    invoke-virtual {v1, v8}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 554
    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v1, v9, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes(Landroidx/media2/exoplayer/external/util/ParsableBitArray;I)V

    .line 556
    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v9, v8}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 557
    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    iget-object v10, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/16 v11, 0xd

    invoke-virtual {v10, v11}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v10

    invoke-static {v9, v10}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$402(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;I)I

    .line 560
    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v1, v9, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes(Landroidx/media2/exoplayer/external/util/ParsableBitArray;I)V

    .line 561
    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 562
    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/16 v12, 0xc

    invoke-virtual {v9, v12}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v9

    .line 565
    .local v9, "programInfoLength":I
    invoke-virtual {v1, v9}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 567
    iget-object v13, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v13}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$200(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)I

    move-result v13

    const/16 v14, 0x2000

    const/16 v15, 0x15

    if-ne v13, v3, :cond_3

    iget-object v13, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v13}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$500(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;

    move-result-object v13

    if-nez v13, :cond_3

    .line 570
    new-instance v13, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;

    sget-object v5, Landroidx/media2/exoplayer/external/util/Util;->EMPTY_BYTE_ARRAY:[B

    const/4 v6, 0x0

    invoke-direct {v13, v15, v6, v6, v5}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;-><init>(ILjava/lang/String;Ljava/util/List;[B)V

    move-object v5, v13

    .line 571
    .local v5, "dummyEsInfo":Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v6}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$600(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$Factory;

    move-result-object v13

    invoke-interface {v13, v15, v5}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$Factory;->createPayloadReader(ILandroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;)Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;

    move-result-object v13

    invoke-static {v6, v13}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$502(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;)Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;

    .line 572
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v6}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$500(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;

    move-result-object v6

    iget-object v13, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v13}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$700(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    move-result-object v13

    new-instance v3, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;

    invoke-direct {v3, v7, v15, v14}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(III)V

    invoke-interface {v6, v4, v13, v3}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;->init(Landroidx/media2/exoplayer/external/util/TimestampAdjuster;Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    goto :goto_2

    .line 567
    .end local v5    # "dummyEsInfo":Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;
    :cond_3
    nop

    .line 576
    :goto_2
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->trackIdToReaderScratch:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 577
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->trackIdToPidScratch:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->clear()V

    .line 578
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    .line 579
    .local v3, "remainingEntriesLength":I
    :goto_3
    if-lez v3, :cond_a

    .line 580
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v6, 0x5

    invoke-virtual {v1, v5, v6}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes(Landroidx/media2/exoplayer/external/util/ParsableBitArray;I)V

    .line 581
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 582
    .local v5, "streamType":I
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v6, v8}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 583
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v6, v11}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 584
    .local v6, "elementaryPid":I
    iget-object v13, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v13, v10}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 585
    iget-object v13, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v13, v12}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v13

    .line 586
    .local v13, "esInfoLength":I
    invoke-direct {v0, v1, v13}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->readEsInfo(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;

    move-result-object v8

    .line 587
    .local v8, "esInfo":Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;
    const/4 v10, 0x6

    if-ne v5, v10, :cond_4

    .line 588
    iget v5, v8, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;->streamType:I

    goto :goto_4

    .line 587
    :cond_4
    nop

    .line 590
    :goto_4
    add-int/lit8 v10, v13, 0x5

    sub-int/2addr v3, v10

    .line 592
    iget-object v10, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v10}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$200(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_5

    move v10, v5

    goto :goto_5

    :cond_5
    move v10, v6

    .line 593
    .local v10, "trackId":I
    :goto_5
    iget-object v11, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v11}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$800(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)Landroid/util/SparseBooleanArray;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 594
    goto :goto_9

    .line 597
    :cond_6
    iget-object v11, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v11}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$200(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_7

    if-ne v5, v15, :cond_7

    iget-object v11, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v11}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$500(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;

    move-result-object v11

    goto :goto_6

    .line 598
    :cond_7
    iget-object v11, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v11}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$600(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$Factory;

    move-result-object v11

    invoke-interface {v11, v5, v8}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$Factory;->createPayloadReader(ILandroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;)Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;

    move-result-object v11

    :goto_6
    nop

    .line 599
    .local v11, "reader":Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;
    iget-object v12, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v12}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$200(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)I

    move-result v12

    const/4 v15, 0x2

    if-ne v12, v15, :cond_9

    iget-object v12, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->trackIdToPidScratch:Landroid/util/SparseIntArray;

    .line 600
    invoke-virtual {v12, v10, v14}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    if-ge v6, v12, :cond_8

    goto :goto_7

    :cond_8
    goto :goto_8

    .line 599
    :cond_9
    nop

    .line 601
    :goto_7
    iget-object v12, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->trackIdToPidScratch:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v10, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 602
    iget-object v12, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->trackIdToReaderScratch:Landroid/util/SparseArray;

    invoke-virtual {v12, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 604
    .end local v5    # "streamType":I
    .end local v6    # "elementaryPid":I
    .end local v8    # "esInfo":Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;
    .end local v10    # "trackId":I
    .end local v11    # "reader":Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;
    .end local v13    # "esInfoLength":I
    :goto_8
    nop

    .line 579
    :goto_9
    const/4 v8, 0x3

    const/4 v10, 0x4

    const/16 v11, 0xd

    const/16 v12, 0xc

    const/16 v15, 0x15

    goto/16 :goto_3

    .line 606
    :cond_a
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->trackIdToPidScratch:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    .line 607
    .local v5, "trackIdCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_a
    if-ge v6, v5, :cond_d

    .line 608
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->trackIdToPidScratch:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    .line 609
    .local v8, "trackId":I
    iget-object v10, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->trackIdToPidScratch:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v10

    .line 610
    .local v10, "trackPid":I
    iget-object v11, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v11}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$800(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)Landroid/util/SparseBooleanArray;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v8, v12}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 611
    iget-object v11, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v11}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$900(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)Landroid/util/SparseBooleanArray;

    move-result-object v11

    invoke-virtual {v11, v10, v12}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 612
    iget-object v11, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->trackIdToReaderScratch:Landroid/util/SparseArray;

    invoke-virtual {v11, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;

    .line 613
    .restart local v11    # "reader":Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;
    if-eqz v11, :cond_c

    .line 614
    iget-object v12, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v12}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$500(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;

    move-result-object v12

    if-eq v11, v12, :cond_b

    .line 615
    iget-object v12, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v12}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$700(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    move-result-object v12

    new-instance v13, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;

    invoke-direct {v13, v7, v8, v14}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(III)V

    invoke-interface {v11, v4, v12, v13}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;->init(Landroidx/media2/exoplayer/external/util/TimestampAdjuster;Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    goto :goto_b

    .line 614
    :cond_b
    nop

    .line 618
    :goto_b
    iget-object v12, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v12}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$000(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)Landroid/util/SparseArray;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_c

    .line 613
    :cond_c
    nop

    .line 607
    .end local v8    # "trackId":I
    .end local v10    # "trackPid":I
    .end local v11    # "reader":Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;
    :goto_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 622
    .end local v6    # "i":I
    :cond_d
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v6}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$200(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)I

    move-result v6

    const/4 v8, 0x2

    if-ne v6, v8, :cond_f

    .line 623
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v6}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$1000(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 624
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v6}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$700(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    move-result-object v6

    invoke-interface {v6}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->endTracks()V

    .line 625
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    const/4 v8, 0x0

    invoke-static {v6, v8}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$102(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;I)I

    .line 626
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    const/4 v8, 0x1

    invoke-static {v6, v8}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$1002(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;Z)Z

    goto :goto_e

    .line 623
    :cond_e
    goto :goto_e

    .line 629
    :cond_f
    const/4 v8, 0x0

    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v6}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$000(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)Landroid/util/SparseArray;

    move-result-object v6

    iget v10, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->pid:I

    invoke-virtual {v6, v10}, Landroid/util/SparseArray;->remove(I)V

    .line 630
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v6}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$200(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_10

    goto :goto_d

    :cond_10
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v8}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$100(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)I

    move-result v8

    sub-int/2addr v8, v11

    :goto_d
    invoke-static {v6, v8}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$102(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;I)I

    .line 631
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v6}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$100(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)I

    move-result v6

    if-nez v6, :cond_11

    .line 632
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v6}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$700(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    move-result-object v6

    invoke-interface {v6}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->endTracks()V

    .line 633
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    const/4 v8, 0x1

    invoke-static {v6, v8}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$1002(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;Z)Z

    goto :goto_e

    .line 631
    :cond_11
    nop

    .line 636
    :goto_e
    return-void
.end method

.method public init(Landroidx/media2/exoplayer/external/util/TimestampAdjuster;Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 0
    .param p1, "timestampAdjuster"    # Landroidx/media2/exoplayer/external/util/TimestampAdjuster;
    .param p2, "extractorOutput"    # Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;
    .param p3, "idGenerator"    # Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .line 526
    return-void
.end method
