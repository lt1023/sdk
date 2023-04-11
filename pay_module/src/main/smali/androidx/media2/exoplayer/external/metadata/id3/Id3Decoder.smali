.class public final Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;
.super Ljava/lang/Object;
.source "Id3Decoder.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/metadata/MetadataDecoder;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$Id3Header;,
        Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$FramePredicate;
    }
.end annotation


# static fields
.field private static final FRAME_FLAG_V3_HAS_GROUP_IDENTIFIER:I = 0x20

.field private static final FRAME_FLAG_V3_IS_COMPRESSED:I = 0x80

.field private static final FRAME_FLAG_V3_IS_ENCRYPTED:I = 0x40

.field private static final FRAME_FLAG_V4_HAS_DATA_LENGTH:I = 0x1

.field private static final FRAME_FLAG_V4_HAS_GROUP_IDENTIFIER:I = 0x40

.field private static final FRAME_FLAG_V4_IS_COMPRESSED:I = 0x8

.field private static final FRAME_FLAG_V4_IS_ENCRYPTED:I = 0x4

.field private static final FRAME_FLAG_V4_IS_UNSYNCHRONIZED:I = 0x2

.field public static final ID3_HEADER_LENGTH:I = 0xa

.field public static final ID3_TAG:I = 0x494433

.field private static final ID3_TEXT_ENCODING_ISO_8859_1:I = 0x0

.field private static final ID3_TEXT_ENCODING_UTF_16:I = 0x1

.field private static final ID3_TEXT_ENCODING_UTF_16BE:I = 0x2

.field private static final ID3_TEXT_ENCODING_UTF_8:I = 0x3

.field public static final NO_FRAMES_PREDICATE:Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$FramePredicate;

.field private static final TAG:Ljava/lang/String; = "Id3Decoder"


# instance fields
.field private final framePredicate:Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$FramePredicate;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    sget-object v0, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$$Lambda$0;->$instance:Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$FramePredicate;

    sput-object v0, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->NO_FRAMES_PREDICATE:Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$FramePredicate;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;-><init>(Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$FramePredicate;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$FramePredicate;)V
    .locals 0
    .param p1, "framePredicate"    # Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$FramePredicate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->framePredicate:Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$FramePredicate;

    .line 102
    return-void
.end method

.method private static copyOfRangeIfValid([BII)[B
    .locals 1
    .param p0, "data"    # [B
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 801
    if-gt p2, p1, :cond_0

    .line 803
    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->EMPTY_BYTE_ARRAY:[B

    return-object v0

    .line 805
    :cond_0
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method private static decodeApicFrame(Landroidx/media2/exoplayer/external/util/ParsableByteArray;II)Landroidx/media2/exoplayer/external/metadata/id3/ApicFrame;
    .locals 12
    .param p0, "id3Data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .param p2, "majorVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 530
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 531
    .local v0, "encoding":I
    invoke-static {v0}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    move-result-object v1

    .line 533
    .local v1, "charset":Ljava/lang/String;
    add-int/lit8 v2, p1, -0x1

    new-array v2, v2, [B

    .line 534
    .local v2, "data":[B
    add-int/lit8 v3, p1, -0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 538
    const/4 v3, 0x2

    if-ne p2, v3, :cond_2

    .line 539
    const/4 v3, 0x2

    .line 540
    .local v3, "mimeTypeEndIndex":I
    const-string v5, "image/"

    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x3

    const-string v8, "ISO-8859-1"

    invoke-direct {v6, v2, v4, v7, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v6}, Landroidx/media2/exoplayer/external/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 541
    .local v4, "mimeType":Ljava/lang/String;
    :goto_0
    const-string v5, "image/jpg"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 542
    const-string v4, "image/jpeg"

    goto :goto_2

    .line 541
    :cond_1
    goto :goto_2

    .line 545
    .end local v3    # "mimeTypeEndIndex":I
    .end local v4    # "mimeType":Ljava/lang/String;
    :cond_2
    invoke-static {v2, v4}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v3

    .line 546
    .restart local v3    # "mimeTypeEndIndex":I
    new-instance v5, Ljava/lang/String;

    const-string v6, "ISO-8859-1"

    invoke-direct {v5, v2, v4, v3, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v5}, Landroidx/media2/exoplayer/external/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 547
    .restart local v4    # "mimeType":Ljava/lang/String;
    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    .line 548
    const-string v5, "image/"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    :goto_1
    move-object v4, v5

    goto :goto_2

    .line 547
    :cond_4
    nop

    .line 552
    :goto_2
    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    .line 554
    .local v5, "pictureType":I
    add-int/lit8 v6, v3, 0x2

    .line 555
    .local v6, "descriptionStartIndex":I
    invoke-static {v2, v6, v0}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v7

    .line 556
    .local v7, "descriptionEndIndex":I
    new-instance v8, Ljava/lang/String;

    sub-int v9, v7, v6

    invoke-direct {v8, v2, v6, v9, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 559
    .local v8, "description":Ljava/lang/String;
    invoke-static {v0}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v9

    add-int/2addr v9, v7

    .line 560
    .local v9, "pictureDataStartIndex":I
    array-length v10, v2

    invoke-static {v2, v9, v10}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->copyOfRangeIfValid([BII)[B

    move-result-object v10

    .line 562
    .local v10, "pictureData":[B
    new-instance v11, Landroidx/media2/exoplayer/external/metadata/id3/ApicFrame;

    invoke-direct {v11, v4, v8, v5, v10}, Landroidx/media2/exoplayer/external/metadata/id3/ApicFrame;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    return-object v11
.end method

.method private static decodeBinaryFrame(Landroidx/media2/exoplayer/external/util/ParsableByteArray;ILjava/lang/String;)Landroidx/media2/exoplayer/external/metadata/id3/BinaryFrame;
    .locals 2
    .param p0, "id3Data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .param p2, "id"    # Ljava/lang/String;

    .line 706
    new-array v0, p1, [B

    .line 707
    .local v0, "frame":[B
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 709
    new-instance v1, Landroidx/media2/exoplayer/external/metadata/id3/BinaryFrame;

    invoke-direct {v1, p2, v0}, Landroidx/media2/exoplayer/external/metadata/id3/BinaryFrame;-><init>(Ljava/lang/String;[B)V

    return-object v1
.end method

.method private static decodeChapterFrame(Landroidx/media2/exoplayer/external/util/ParsableByteArray;IIZILandroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$FramePredicate;)Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;
    .locals 22
    .param p0, "id3Data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .param p2, "majorVersion"    # I
    .param p3, "unsignedIntFrameSizeHack"    # Z
    .param p4, "frameHeaderSize"    # I
    .param p5, "framePredicate"    # Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$FramePredicate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 600
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 601
    .local v1, "framePosition":I
    iget-object v2, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-static {v2, v1}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v2

    .line 602
    .local v2, "chapterIdEndIndex":I
    new-instance v4, Ljava/lang/String;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    sub-int v5, v2, v1

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v3, v1, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 604
    .local v4, "chapterId":Ljava/lang/String;
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 606
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v12

    .line 607
    .local v12, "startTime":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v13

    .line 608
    .local v13, "endTime":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v5

    .line 609
    .local v5, "startOffset":J
    const-wide v7, 0xffffffffL

    cmp-long v3, v5, v7

    if-nez v3, :cond_0

    .line 610
    const-wide/16 v5, -0x1

    move-wide v14, v5

    goto :goto_0

    .line 609
    :cond_0
    move-wide v14, v5

    .line 612
    .end local v5    # "startOffset":J
    .local v14, "startOffset":J
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v5

    .line 613
    .local v5, "endOffset":J
    cmp-long v3, v5, v7

    if-nez v3, :cond_1

    .line 614
    const-wide/16 v5, -0x1

    move-wide/from16 v16, v5

    goto :goto_1

    .line 613
    :cond_1
    move-wide/from16 v16, v5

    .line 617
    .end local v5    # "endOffset":J
    .local v16, "endOffset":J
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v3

    .line 618
    .local v11, "subFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;>;"
    add-int v9, v1, p1

    .line 619
    .local v9, "limit":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v3

    if-ge v3, v9, :cond_3

    .line 620
    move/from16 v10, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v6, p5

    invoke-static {v10, v0, v7, v8, v6}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->decodeFrame(ILandroidx/media2/exoplayer/external/util/ParsableByteArray;ZILandroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$FramePredicate;)Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    move-result-object v3

    .line 622
    .local v3, "frame":Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;
    if-eqz v3, :cond_2

    .line 623
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 622
    :cond_2
    nop

    .line 625
    .end local v3    # "frame":Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;
    :goto_3
    goto :goto_2

    .line 627
    :cond_3
    move/from16 v10, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v6, p5

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v5, v3, [Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    .line 628
    .local v5, "subFrameArray":[Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 629
    new-instance v18, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;

    move-object/from16 v3, v18

    move-object/from16 v19, v5

    .end local v5    # "subFrameArray":[Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;
    .local v19, "subFrameArray":[Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;
    move v5, v12

    move v6, v13

    move-wide v7, v14

    move/from16 v20, v9

    .end local v9    # "limit":I
    .local v20, "limit":I
    move-wide/from16 v9, v16

    move-object/from16 v21, v11

    .end local v11    # "subFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;>;"
    .local v21, "subFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;>;"
    move-object/from16 v11, v19

    invoke-direct/range {v3 .. v11}, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;-><init>(Ljava/lang/String;IIJJ[Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;)V

    return-object v18
.end method

.method private static decodeChapterTOCFrame(Landroidx/media2/exoplayer/external/util/ParsableByteArray;IIZILandroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$FramePredicate;)Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;
    .locals 18
    .param p0, "id3Data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .param p2, "majorVersion"    # I
    .param p3, "unsignedIntFrameSizeHack"    # Z
    .param p4, "frameHeaderSize"    # I
    .param p5, "framePredicate"    # Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$FramePredicate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 640
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 641
    .local v1, "framePosition":I
    iget-object v2, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-static {v2, v1}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v2

    .line 642
    .local v2, "elementIdEndIndex":I
    new-instance v4, Ljava/lang/String;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    sub-int v5, v2, v1

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v3, v1, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 644
    .local v4, "elementId":Ljava/lang/String;
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 646
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    .line 647
    .local v9, "ctocFlags":I
    and-int/lit8 v3, v9, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v3, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 648
    .local v5, "isRoot":Z
    :goto_0
    and-int/lit8 v3, v9, 0x1

    if-eqz v3, :cond_1

    const/4 v6, 0x1

    nop

    .line 650
    .local v6, "isOrdered":Z
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    .line 651
    .local v10, "childCount":I
    new-array v11, v10, [Ljava/lang/String;

    .line 652
    .local v11, "children":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v10, :cond_2

    .line 653
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v7

    .line 654
    .local v7, "startIndex":I
    iget-object v8, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-static {v8, v7}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v8

    .line 655
    .local v8, "endIndex":I
    new-instance v12, Ljava/lang/String;

    iget-object v13, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    sub-int v14, v8, v7

    const-string v15, "ISO-8859-1"

    invoke-direct {v12, v13, v7, v14, v15}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    aput-object v12, v11, v3

    .line 656
    add-int/lit8 v12, v8, 0x1

    invoke-virtual {v0, v12}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 652
    .end local v7    # "startIndex":I
    .end local v8    # "endIndex":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 659
    .end local v3    # "i":I
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v3

    .line 660
    .local v12, "subFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;>;"
    add-int v13, v1, p1

    .line 661
    .local v13, "limit":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v3

    if-ge v3, v13, :cond_4

    .line 662
    move/from16 v14, p2

    move/from16 v15, p3

    move/from16 v8, p4

    move-object/from16 v7, p5

    invoke-static {v14, v0, v15, v8, v7}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->decodeFrame(ILandroidx/media2/exoplayer/external/util/ParsableByteArray;ZILandroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$FramePredicate;)Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    move-result-object v3

    .line 664
    .local v3, "frame":Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;
    if-eqz v3, :cond_3

    .line 665
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 664
    :cond_3
    nop

    .line 667
    .end local v3    # "frame":Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;
    :goto_3
    goto :goto_2

    .line 669
    :cond_4
    move/from16 v14, p2

    move/from16 v15, p3

    move/from16 v8, p4

    move-object/from16 v7, p5

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    .line 670
    .local v3, "subFrameArray":[Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 671
    new-instance v16, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;

    move-object/from16 v17, v3

    .end local v3    # "subFrameArray":[Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;
    .local v17, "subFrameArray":[Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;
    move-object/from16 v3, v16

    move-object v7, v11

    move-object/from16 v8, v17

    invoke-direct/range {v3 .. v8}, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;-><init>(Ljava/lang/String;ZZ[Ljava/lang/String;[Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;)V

    return-object v16
.end method

.method private static decodeCommentFrame(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;
    .locals 10
    .param p0, "id3Data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 567
    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    .line 569
    const/4 v0, 0x0

    return-object v0

    .line 572
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 573
    .local v0, "encoding":I
    invoke-static {v0}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    move-result-object v1

    .line 575
    .local v1, "charset":Ljava/lang/String;
    const/4 v2, 0x3

    new-array v3, v2, [B

    .line 576
    .local v3, "data":[B
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 577
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3, v4, v2}, Ljava/lang/String;-><init>([BII)V

    move-object v2, v5

    .line 579
    .local v2, "language":Ljava/lang/String;
    add-int/lit8 v5, p1, -0x4

    new-array v3, v5, [B

    .line 580
    add-int/lit8 v5, p1, -0x4

    invoke-virtual {p0, v3, v4, v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 582
    invoke-static {v3, v4, v0}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v5

    .line 583
    .local v5, "descriptionEndIndex":I
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3, v4, v5, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v4, v6

    .line 585
    .local v4, "description":Ljava/lang/String;
    invoke-static {v0}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v6

    add-int/2addr v6, v5

    .line 586
    .local v6, "textStartIndex":I
    invoke-static {v3, v6, v0}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v7

    .line 587
    .local v7, "textEndIndex":I
    invoke-static {v3, v6, v7, v1}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->decodeStringIfValid([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 589
    .local v8, "text":Ljava/lang/String;
    new-instance v9, Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;

    invoke-direct {v9, v2, v4, v8}, Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v9
.end method

.method private static decodeFrame(ILandroidx/media2/exoplayer/external/util/ParsableByteArray;ZILandroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$FramePredicate;)Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;
    .locals 22
    .param p0, "majorVersion"    # I
    .param p1, "id3Data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p2, "unsignedIntFrameSizeHack"    # Z
    .param p3, "frameHeaderSize"    # I
    .param p4, "framePredicate"    # Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$FramePredicate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 283
    move/from16 v7, p0

    move-object/from16 v8, p1

    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    .line 284
    .local v9, "frameId0":I
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    .line 285
    .local v10, "frameId1":I
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v11

    .line 286
    .local v11, "frameId2":I
    const/4 v0, 0x3

    if-lt v7, v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v13, v1

    .line 289
    .local v13, "frameId3":I
    const/4 v14, 0x4

    if-ne v7, v14, :cond_2

    .line 290
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 291
    .local v1, "frameSize":I
    if-nez p2, :cond_1

    .line 292
    and-int/lit16 v2, v1, 0xff

    shr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x7

    or-int/2addr v2, v3

    shr-int/lit8 v3, v1, 0x10

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xe

    or-int/2addr v2, v3

    shr-int/lit8 v3, v1, 0x18

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x15

    or-int v1, v2, v3

    move v15, v1

    goto :goto_1

    .line 291
    :cond_1
    move v15, v1

    goto :goto_1

    .line 295
    .end local v1    # "frameSize":I
    :cond_2
    if-ne v7, v0, :cond_3

    .line 296
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    move v15, v1

    goto :goto_1

    .line 298
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v1

    move v15, v1

    .line 301
    .local v15, "frameSize":I
    :goto_1
    if-lt v7, v0, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    move v6, v1

    .line 302
    .local v6, "flags":I
    const/16 v16, 0x0

    if-nez v9, :cond_5

    if-nez v10, :cond_5

    if-nez v11, :cond_5

    if-nez v13, :cond_5

    if-nez v15, :cond_5

    if-nez v6, :cond_5

    .line 305
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v0

    invoke-virtual {v8, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 306
    return-object v16

    .line 302
    :cond_5
    nop

    .line 309
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v1

    add-int v5, v1, v15

    .line 310
    .local v5, "nextFramePosition":I
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v1

    if-le v5, v1, :cond_6

    .line 311
    const-string v0, "Id3Decoder"

    const-string v1, "Frame size exceeds remaining tag data"

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v0

    invoke-virtual {v8, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 313
    return-object v16

    .line 316
    :cond_6
    if-eqz p4, :cond_8

    .line 317
    move-object/from16 v1, p4

    move/from16 v2, p0

    move v3, v9

    move v4, v10

    move v12, v5

    .end local v5    # "nextFramePosition":I
    .local v12, "nextFramePosition":I
    move v5, v11

    move v14, v6

    .end local v6    # "flags":I
    .local v14, "flags":I
    move v6, v13

    invoke-interface/range {v1 .. v6}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$FramePredicate;->evaluate(IIIII)Z

    move-result v1

    if-nez v1, :cond_7

    .line 319
    invoke-virtual {v8, v12}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 320
    return-object v16

    .line 317
    :cond_7
    goto :goto_3

    .line 316
    .end local v12    # "nextFramePosition":I
    .end local v14    # "flags":I
    .restart local v5    # "nextFramePosition":I
    .restart local v6    # "flags":I
    :cond_8
    move v12, v5

    move v14, v6

    .line 324
    .end local v5    # "nextFramePosition":I
    .end local v6    # "flags":I
    .restart local v12    # "nextFramePosition":I
    .restart local v14    # "flags":I
    :goto_3
    const/4 v1, 0x0

    .line 325
    .local v1, "isCompressed":Z
    const/4 v2, 0x0

    .line 326
    .local v2, "isEncrypted":Z
    const/4 v3, 0x0

    .line 327
    .local v3, "isUnsynchronized":Z
    const/4 v4, 0x0

    .line 328
    .local v4, "hasDataLength":Z
    const/4 v5, 0x0

    .line 329
    .local v5, "hasGroupIdentifier":Z
    const/4 v6, 0x1

    if-ne v7, v0, :cond_c

    .line 330
    and-int/lit16 v0, v14, 0x80

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    :goto_4
    move v1, v0

    .line 331
    and-int/lit8 v0, v14, 0x40

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_5

    :cond_a
    const/4 v0, 0x0

    :goto_5
    move v2, v0

    .line 332
    and-int/lit8 v0, v14, 0x20

    if-eqz v0, :cond_b

    const/16 v17, 0x1

    goto :goto_6

    :cond_b
    const/16 v17, 0x0

    :goto_6
    move/from16 v5, v17

    .line 334
    move v4, v1

    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v19, v5

    goto :goto_c

    .line 335
    :cond_c
    const/4 v0, 0x4

    if-ne v7, v0, :cond_12

    .line 336
    and-int/lit8 v0, v14, 0x40

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_7

    :cond_d
    const/4 v0, 0x0

    :goto_7
    move v5, v0

    .line 337
    and-int/lit8 v0, v14, 0x8

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_8

    :cond_e
    const/4 v0, 0x0

    :goto_8
    move v1, v0

    .line 338
    and-int/lit8 v0, v14, 0x4

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_9

    :cond_f
    const/4 v0, 0x0

    :goto_9
    move v2, v0

    .line 339
    and-int/lit8 v0, v14, 0x2

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_a

    :cond_10
    const/4 v0, 0x0

    :goto_a
    move v3, v0

    .line 340
    and-int/lit8 v0, v14, 0x1

    if-eqz v0, :cond_11

    const/16 v17, 0x1

    goto :goto_b

    :cond_11
    const/16 v17, 0x0

    :goto_b
    move/from16 v4, v17

    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v19, v5

    goto :goto_c

    .line 335
    :cond_12
    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v19, v5

    .line 343
    .end local v1    # "isCompressed":Z
    .end local v2    # "isEncrypted":Z
    .end local v3    # "isUnsynchronized":Z
    .end local v4    # "hasDataLength":Z
    .end local v5    # "hasGroupIdentifier":Z
    .local v17, "isCompressed":Z
    .local v18, "isEncrypted":Z
    .local v19, "hasGroupIdentifier":Z
    .local v20, "isUnsynchronized":Z
    .local v21, "hasDataLength":Z
    :goto_c
    if-nez v17, :cond_28

    if-eqz v18, :cond_13

    goto/16 :goto_15

    .line 349
    :cond_13
    if-eqz v19, :cond_14

    .line 350
    add-int/lit8 v15, v15, -0x1

    .line 351
    invoke-virtual {v8, v6}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_d

    .line 349
    :cond_14
    nop

    .line 353
    :goto_d
    if-eqz v21, :cond_15

    .line 354
    add-int/lit8 v15, v15, -0x4

    .line 355
    const/4 v0, 0x4

    invoke-virtual {v8, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_e

    .line 353
    :cond_15
    nop

    .line 357
    :goto_e
    if-eqz v20, :cond_16

    .line 358
    invoke-static {v8, v15}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->removeUnsynchronization(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)I

    move-result v0

    move v15, v0

    goto :goto_f

    .line 357
    :cond_16
    nop

    .line 363
    :goto_f
    const/16 v0, 0x54

    const/4 v1, 0x2

    const/16 v2, 0x58

    if-ne v9, v0, :cond_18

    if-ne v10, v2, :cond_18

    if-ne v11, v2, :cond_18

    if-eq v7, v1, :cond_17

    if-ne v13, v2, :cond_18

    .line 365
    :cond_17
    :try_start_0
    invoke-static {v8, v15}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->decodeTxxxFrame(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v0

    goto/16 :goto_11

    .line 363
    :cond_18
    nop

    .line 366
    if-ne v9, v0, :cond_19

    .line 367
    invoke-static {v7, v9, v10, v11, v13}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->getFrameId(IIIII)Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "id":Ljava/lang/String;
    invoke-static {v8, v15, v0}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->decodeTextInformationFrame(Landroidx/media2/exoplayer/external/util/ParsableByteArray;ILjava/lang/String;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v1

    move-object v0, v1

    .line 369
    .local v0, "frame":Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;
    goto/16 :goto_11

    .line 408
    .end local v0    # "frame":Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;
    :catchall_0
    move-exception v0

    goto/16 :goto_14

    .line 404
    :catch_0
    move-exception v0

    goto/16 :goto_13

    .line 369
    :cond_19
    const/16 v3, 0x57

    if-ne v9, v3, :cond_1b

    if-ne v10, v2, :cond_1b

    if-ne v11, v2, :cond_1b

    if-eq v7, v1, :cond_1a

    if-ne v13, v2, :cond_1b

    .line 371
    :cond_1a
    invoke-static {v8, v15}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->decodeWxxxFrame(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Landroidx/media2/exoplayer/external/metadata/id3/UrlLinkFrame;

    move-result-object v0

    goto/16 :goto_11

    .line 369
    :cond_1b
    nop

    .line 372
    const/16 v2, 0x57

    if-ne v9, v2, :cond_1c

    .line 373
    invoke-static {v7, v9, v10, v11, v13}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->getFrameId(IIIII)Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, "id":Ljava/lang/String;
    invoke-static {v8, v15, v0}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->decodeUrlLinkFrame(Landroidx/media2/exoplayer/external/util/ParsableByteArray;ILjava/lang/String;)Landroidx/media2/exoplayer/external/metadata/id3/UrlLinkFrame;

    move-result-object v1

    move-object v0, v1

    .line 375
    .local v0, "frame":Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;
    goto/16 :goto_11

    .end local v0    # "frame":Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;
    :cond_1c
    const/16 v2, 0x49

    const/16 v3, 0x50

    if-ne v9, v3, :cond_1d

    const/16 v4, 0x52

    if-ne v10, v4, :cond_1d

    if-ne v11, v2, :cond_1d

    const/16 v4, 0x56

    if-ne v13, v4, :cond_1d

    .line 376
    invoke-static {v8, v15}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->decodePrivFrame(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Landroidx/media2/exoplayer/external/metadata/id3/PrivFrame;

    move-result-object v0

    goto/16 :goto_11

    .line 375
    :cond_1d
    nop

    .line 377
    const/16 v4, 0x47

    const/16 v5, 0x4f

    if-ne v9, v4, :cond_1f

    const/16 v4, 0x45

    if-ne v10, v4, :cond_1f

    if-ne v11, v5, :cond_1f

    const/16 v4, 0x42

    if-eq v13, v4, :cond_1e

    if-ne v7, v1, :cond_1f

    .line 379
    :cond_1e
    invoke-static {v8, v15}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->decodeGeobFrame(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Landroidx/media2/exoplayer/external/metadata/id3/GeobFrame;

    move-result-object v0

    goto/16 :goto_11

    .line 377
    :cond_1f
    nop

    .line 380
    const/16 v4, 0x43

    if-ne v7, v1, :cond_20

    if-ne v9, v3, :cond_21

    if-ne v10, v2, :cond_21

    if-ne v11, v4, :cond_21

    goto :goto_10

    :cond_20
    const/16 v6, 0x41

    if-ne v9, v6, :cond_21

    if-ne v10, v3, :cond_21

    if-ne v11, v2, :cond_21

    if-ne v13, v4, :cond_21

    .line 382
    :goto_10
    invoke-static {v8, v15, v7}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->decodeApicFrame(Landroidx/media2/exoplayer/external/util/ParsableByteArray;II)Landroidx/media2/exoplayer/external/metadata/id3/ApicFrame;

    move-result-object v0

    goto/16 :goto_11

    .line 380
    :cond_21
    nop

    .line 383
    const/16 v2, 0x4d

    if-ne v9, v4, :cond_23

    if-ne v10, v5, :cond_23

    if-ne v11, v2, :cond_23

    if-eq v13, v2, :cond_22

    if-ne v7, v1, :cond_23

    .line 385
    :cond_22
    invoke-static {v8, v15}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->decodeCommentFrame(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;

    move-result-object v0

    goto :goto_11

    .line 383
    :cond_23
    nop

    .line 386
    if-ne v9, v4, :cond_24

    const/16 v1, 0x48

    if-ne v10, v1, :cond_24

    const/16 v1, 0x41

    if-ne v11, v1, :cond_24

    if-ne v13, v3, :cond_24

    .line 387
    move-object/from16 v1, p1

    move v2, v15

    move/from16 v3, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    invoke-static/range {v1 .. v6}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->decodeChapterFrame(Landroidx/media2/exoplayer/external/util/ParsableByteArray;IIZILandroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$FramePredicate;)Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;

    move-result-object v0

    goto :goto_11

    .line 386
    :cond_24
    nop

    .line 389
    if-ne v9, v4, :cond_25

    if-ne v10, v0, :cond_25

    if-ne v11, v5, :cond_25

    if-ne v13, v4, :cond_25

    .line 390
    move-object/from16 v1, p1

    move v2, v15

    move/from16 v3, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    invoke-static/range {v1 .. v6}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->decodeChapterTOCFrame(Landroidx/media2/exoplayer/external/util/ParsableByteArray;IIZILandroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$FramePredicate;)Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;

    move-result-object v0

    goto :goto_11

    .line 389
    :cond_25
    nop

    .line 392
    if-ne v9, v2, :cond_26

    const/16 v1, 0x4c

    if-ne v10, v1, :cond_26

    const/16 v1, 0x4c

    if-ne v11, v1, :cond_26

    if-ne v13, v0, :cond_26

    .line 393
    invoke-static {v8, v15}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->decodeMlltFrame(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;

    move-result-object v0

    goto :goto_11

    .line 392
    :cond_26
    nop

    .line 395
    invoke-static {v7, v9, v10, v11, v13}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->getFrameId(IIIII)Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, "id":Ljava/lang/String;
    invoke-static {v8, v15, v0}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->decodeBinaryFrame(Landroidx/media2/exoplayer/external/util/ParsableByteArray;ILjava/lang/String;)Landroidx/media2/exoplayer/external/metadata/id3/BinaryFrame;

    move-result-object v1

    move-object v0, v1

    .line 398
    .local v0, "frame":Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;
    :goto_11
    if-nez v0, :cond_27

    .line 399
    const-string v1, "Id3Decoder"

    .line 400
    invoke-static {v7, v9, v10, v11, v13}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->getFrameId(IIIII)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x32

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed to decode frame: id="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", frameSize="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 399
    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_12

    .line 398
    :cond_27
    nop

    .line 403
    :goto_12
    nop

    .line 408
    invoke-virtual {v8, v12}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 403
    return-object v0

    .line 404
    .end local v0    # "frame":Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;
    :goto_13
    nop

    .line 405
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_1
    const-string v1, "Id3Decoder"

    const-string v2, "Unsupported character encoding"

    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 406
    nop

    .line 408
    invoke-virtual {v8, v12}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 406
    return-object v16

    .line 408
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_14
    invoke-virtual {v8, v12}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    throw v0

    .line 343
    :cond_28
    :goto_15
    nop

    .line 344
    const-string v0, "Id3Decoder"

    const-string v1, "Skipping unsupported compressed or encrypted frame"

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-virtual {v8, v12}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 346
    return-object v16
.end method

.method private static decodeGeobFrame(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Landroidx/media2/exoplayer/external/metadata/id3/GeobFrame;
    .locals 14
    .param p0, "id3Data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 504
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 505
    .local v0, "encoding":I
    invoke-static {v0}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    move-result-object v1

    .line 507
    .local v1, "charset":Ljava/lang/String;
    add-int/lit8 v2, p1, -0x1

    new-array v2, v2, [B

    .line 508
    .local v2, "data":[B
    add-int/lit8 v3, p1, -0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 510
    invoke-static {v2, v4}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v3

    .line 511
    .local v3, "mimeTypeEndIndex":I
    new-instance v5, Ljava/lang/String;

    const-string v6, "ISO-8859-1"

    invoke-direct {v5, v2, v4, v3, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v4, v5

    .line 513
    .local v4, "mimeType":Ljava/lang/String;
    add-int/lit8 v5, v3, 0x1

    .line 514
    .local v5, "filenameStartIndex":I
    invoke-static {v2, v5, v0}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v6

    .line 515
    .local v6, "filenameEndIndex":I
    invoke-static {v2, v5, v6, v1}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->decodeStringIfValid([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 517
    .local v7, "filename":Ljava/lang/String;
    invoke-static {v0}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v8

    add-int/2addr v8, v6

    .line 518
    .local v8, "descriptionStartIndex":I
    invoke-static {v2, v8, v0}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v9

    .line 519
    .local v9, "descriptionEndIndex":I
    nop

    .line 520
    invoke-static {v2, v8, v9, v1}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->decodeStringIfValid([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 522
    .local v10, "description":Ljava/lang/String;
    invoke-static {v0}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v11

    add-int/2addr v11, v9

    .line 523
    .local v11, "objectDataStartIndex":I
    array-length v12, v2

    invoke-static {v2, v11, v12}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->copyOfRangeIfValid([BII)[B

    move-result-object v12

    .line 525
    .local v12, "objectData":[B
    new-instance v13, Landroidx/media2/exoplayer/external/metadata/id3/GeobFrame;

    invoke-direct {v13, v4, v7, v10, v12}, Landroidx/media2/exoplayer/external/metadata/id3/GeobFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v13
.end method

.method private static decodeHeader(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$Id3Header;
    .locals 10
    .param p0, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 164
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 165
    const-string v0, "Id3Decoder"

    const-string v2, "Data too short to be an ID3 tag"

    invoke-static {v0, v2}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-object v1

    .line 169
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v0

    .line 170
    .local v0, "id":I
    const v2, 0x494433

    if-eq v0, v2, :cond_1

    .line 171
    const-string v2, "Id3Decoder"

    const/16 v3, 0x3b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected first three bytes of ID3 tag header: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-object v1

    .line 175
    :cond_1
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 176
    .local v2, "majorVersion":I
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 177
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 178
    .local v4, "flags":I
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v5

    .line 180
    .local v5, "framesSize":I
    const/4 v6, 0x2

    const/4 v7, 0x4

    const/4 v8, 0x0

    if-ne v2, v6, :cond_4

    .line 181
    and-int/lit8 v6, v4, 0x40

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    .line 182
    .local v6, "isCompressed":Z
    :goto_0
    if-eqz v6, :cond_3

    .line 183
    const-string v3, "Id3Decoder"

    const-string v7, "Skipped ID3 tag with majorVersion=2 and undefined compression scheme"

    invoke-static {v3, v7}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-object v1

    .line 182
    :cond_3
    nop

    .line 186
    .end local v6    # "isCompressed":Z
    goto :goto_7

    :cond_4
    const/4 v6, 0x3

    if-ne v2, v6, :cond_7

    .line 187
    and-int/lit8 v1, v4, 0x40

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    .line 188
    .local v1, "hasExtendedHeader":Z
    :goto_1
    if-eqz v1, :cond_6

    .line 189
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 190
    .local v6, "extendedHeaderSize":I
    invoke-virtual {p0, v6}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 191
    add-int/lit8 v9, v6, 0x4

    sub-int/2addr v5, v9

    goto :goto_2

    .line 188
    .end local v6    # "extendedHeaderSize":I
    :cond_6
    nop

    .line 193
    .end local v1    # "hasExtendedHeader":Z
    :goto_2
    goto :goto_7

    :cond_7
    if-ne v2, v7, :cond_d

    .line 194
    and-int/lit8 v1, v4, 0x40

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    .line 195
    .restart local v1    # "hasExtendedHeader":Z
    :goto_3
    if-eqz v1, :cond_9

    .line 196
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v6

    .line 197
    .restart local v6    # "extendedHeaderSize":I
    add-int/lit8 v9, v6, -0x4

    invoke-virtual {p0, v9}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 198
    sub-int/2addr v5, v6

    goto :goto_4

    .line 195
    .end local v6    # "extendedHeaderSize":I
    :cond_9
    nop

    .line 200
    :goto_4
    and-int/lit8 v6, v4, 0x10

    if-eqz v6, :cond_a

    const/4 v6, 0x1

    goto :goto_5

    :cond_a
    const/4 v6, 0x0

    .line 201
    .local v6, "hasFooter":Z
    :goto_5
    if-eqz v6, :cond_b

    .line 202
    add-int/lit8 v5, v5, -0xa

    goto :goto_6

    .line 201
    :cond_b
    nop

    .line 204
    .end local v1    # "hasExtendedHeader":Z
    .end local v6    # "hasFooter":Z
    :goto_6
    nop

    .line 210
    :goto_7
    if-ge v2, v7, :cond_c

    and-int/lit16 v1, v4, 0x80

    if-eqz v1, :cond_c

    goto :goto_8

    :cond_c
    const/4 v3, 0x0

    :goto_8
    move v1, v3

    .line 211
    .local v1, "isUnsynchronized":Z
    new-instance v3, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$Id3Header;

    invoke-direct {v3, v2, v1, v5}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$Id3Header;-><init>(IZI)V

    return-object v3

    .line 205
    .end local v1    # "isUnsynchronized":Z
    :cond_d
    const-string v3, "Id3Decoder"

    const/16 v6, 0x39

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Skipped ID3 tag with unsupported majorVersion="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return-object v1
.end method

.method private static decodeMlltFrame(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;
    .locals 19
    .param p0, "id3Data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p1, "frameSize"    # I

    .line 676
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    .line 677
    .local v6, "mpegFramesBetweenReference":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v7

    .line 678
    .local v7, "bytesBetweenReference":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v8

    .line 679
    .local v8, "millisecondsBetweenReference":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    .line 680
    .local v9, "bitsForBytesDeviation":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    .line 682
    .local v10, "bitsForMillisecondsDeviation":I
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;-><init>()V

    move-object v11, v0

    .line 683
    .local v11, "references":Landroidx/media2/exoplayer/external/util/ParsableBitArray;
    move-object/from16 v12, p0

    invoke-virtual {v11, v12}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->reset(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V

    .line 684
    add-int/lit8 v0, p1, -0xa

    mul-int/lit8 v13, v0, 0x8

    .line 685
    .local v13, "referencesBits":I
    add-int v14, v9, v10

    .line 686
    .local v14, "bitsPerReference":I
    div-int v15, v13, v14

    .line 687
    .local v15, "referencesCount":I
    new-array v5, v15, [I

    .line 688
    .local v5, "bytesDeviations":[I
    new-array v4, v15, [I

    .line 689
    .local v4, "millisecondsDeviations":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v15, :cond_0

    .line 690
    invoke-virtual {v11, v9}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 691
    .local v1, "bytesDeviation":I
    invoke-virtual {v11, v10}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 692
    .local v2, "millisecondsDeviation":I
    aput v1, v5, v0

    .line 693
    aput v2, v4, v0

    .line 689
    .end local v1    # "bytesDeviation":I
    .end local v2    # "millisecondsDeviation":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 696
    .end local v0    # "i":I
    :cond_0
    new-instance v16, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;

    move-object/from16 v0, v16

    move v1, v6

    move v2, v7

    move v3, v8

    move-object/from16 v17, v4

    .end local v4    # "millisecondsDeviations":[I
    .local v17, "millisecondsDeviations":[I
    move-object v4, v5

    move-object/from16 v18, v5

    .end local v5    # "bytesDeviations":[I
    .local v18, "bytesDeviations":[I
    move-object/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;-><init>(III[I[I)V

    return-object v16
.end method

.method private static decodePrivFrame(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Landroidx/media2/exoplayer/external/metadata/id3/PrivFrame;
    .locals 6
    .param p0, "id3Data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 490
    new-array v0, p1, [B

    .line 491
    .local v0, "data":[B
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 493
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v2

    .line 494
    .local v2, "ownerEndIndex":I
    new-instance v3, Ljava/lang/String;

    const-string v4, "ISO-8859-1"

    invoke-direct {v3, v0, v1, v2, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v1, v3

    .line 496
    .local v1, "owner":Ljava/lang/String;
    add-int/lit8 v3, v2, 0x1

    .line 497
    .local v3, "privateDataStartIndex":I
    array-length v4, v0

    invoke-static {v0, v3, v4}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->copyOfRangeIfValid([BII)[B

    move-result-object v4

    .line 499
    .local v4, "privateData":[B
    new-instance v5, Landroidx/media2/exoplayer/external/metadata/id3/PrivFrame;

    invoke-direct {v5, v1, v4}, Landroidx/media2/exoplayer/external/metadata/id3/PrivFrame;-><init>(Ljava/lang/String;[B)V

    return-object v5
.end method

.method private static decodeStringIfValid([BIILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 821
    if-le p2, p1, :cond_1

    array-length v0, p0

    if-le p2, v0, :cond_0

    goto :goto_0

    .line 824
    :cond_0
    new-instance v0, Ljava/lang/String;

    sub-int v1, p2, p1

    invoke-direct {v0, p0, p1, v1, p3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0

    .line 821
    :cond_1
    :goto_0
    nop

    .line 822
    const-string v0, ""

    return-object v0
.end method

.method private static decodeTextInformationFrame(Landroidx/media2/exoplayer/external/util/ParsableByteArray;ILjava/lang/String;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;
    .locals 7
    .param p0, "id3Data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .param p2, "id"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 437
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    .line 439
    return-object v0

    .line 442
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 443
    .local v1, "encoding":I
    invoke-static {v1}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    move-result-object v2

    .line 445
    .local v2, "charset":Ljava/lang/String;
    add-int/lit8 v3, p1, -0x1

    new-array v3, v3, [B

    .line 446
    .local v3, "data":[B
    add-int/lit8 v4, p1, -0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5, v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 448
    invoke-static {v3, v5, v1}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v4

    .line 449
    .local v4, "valueEndIndex":I
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3, v5, v4, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v5, v6

    .line 451
    .local v5, "value":Ljava/lang/String;
    new-instance v6, Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    invoke-direct {v6, p2, v0, v5}, Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method private static decodeTxxxFrame(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;
    .locals 10
    .param p0, "id3Data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 414
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 416
    const/4 v0, 0x0

    return-object v0

    .line 419
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 420
    .local v0, "encoding":I
    invoke-static {v0}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    move-result-object v1

    .line 422
    .local v1, "charset":Ljava/lang/String;
    add-int/lit8 v2, p1, -0x1

    new-array v2, v2, [B

    .line 423
    .local v2, "data":[B
    add-int/lit8 v3, p1, -0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 425
    invoke-static {v2, v4, v0}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v3

    .line 426
    .local v3, "descriptionEndIndex":I
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2, v4, v3, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v4, v5

    .line 428
    .local v4, "description":Ljava/lang/String;
    invoke-static {v0}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v5

    add-int/2addr v5, v3

    .line 429
    .local v5, "valueStartIndex":I
    invoke-static {v2, v5, v0}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v6

    .line 430
    .local v6, "valueEndIndex":I
    invoke-static {v2, v5, v6, v1}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->decodeStringIfValid([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 432
    .local v7, "value":Ljava/lang/String;
    new-instance v8, Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    const-string v9, "TXXX"

    invoke-direct {v8, v9, v4, v7}, Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method private static decodeUrlLinkFrame(Landroidx/media2/exoplayer/external/util/ParsableByteArray;ILjava/lang/String;)Landroidx/media2/exoplayer/external/metadata/id3/UrlLinkFrame;
    .locals 5
    .param p0, "id3Data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 479
    new-array v0, p1, [B

    .line 480
    .local v0, "data":[B
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 482
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v2

    .line 483
    .local v2, "urlEndIndex":I
    new-instance v3, Ljava/lang/String;

    const-string v4, "ISO-8859-1"

    invoke-direct {v3, v0, v1, v2, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v1, v3

    .line 485
    .local v1, "url":Ljava/lang/String;
    new-instance v3, Landroidx/media2/exoplayer/external/metadata/id3/UrlLinkFrame;

    const/4 v4, 0x0

    invoke-direct {v3, p2, v4, v1}, Landroidx/media2/exoplayer/external/metadata/id3/UrlLinkFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private static decodeWxxxFrame(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Landroidx/media2/exoplayer/external/metadata/id3/UrlLinkFrame;
    .locals 10
    .param p0, "id3Data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 456
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 458
    const/4 v0, 0x0

    return-object v0

    .line 461
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 462
    .local v0, "encoding":I
    invoke-static {v0}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    move-result-object v1

    .line 464
    .local v1, "charset":Ljava/lang/String;
    add-int/lit8 v2, p1, -0x1

    new-array v2, v2, [B

    .line 465
    .local v2, "data":[B
    add-int/lit8 v3, p1, -0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 467
    invoke-static {v2, v4, v0}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v3

    .line 468
    .local v3, "descriptionEndIndex":I
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2, v4, v3, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v4, v5

    .line 470
    .local v4, "description":Ljava/lang/String;
    invoke-static {v0}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v5

    add-int/2addr v5, v3

    .line 471
    .local v5, "urlStartIndex":I
    invoke-static {v2, v5}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v6

    .line 472
    .local v6, "urlEndIndex":I
    const-string v7, "ISO-8859-1"

    invoke-static {v2, v5, v6, v7}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->decodeStringIfValid([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 474
    .local v7, "url":Ljava/lang/String;
    new-instance v8, Landroidx/media2/exoplayer/external/metadata/id3/UrlLinkFrame;

    const-string v9, "WXXX"

    invoke-direct {v8, v9, v4, v7}, Landroidx/media2/exoplayer/external/metadata/id3/UrlLinkFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method private static delimiterLength(I)I
    .locals 1
    .param p0, "encodingByte"    # I

    .line 788
    if-eqz p0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 789
    :cond_0
    const/4 v0, 0x2

    goto :goto_1

    .line 788
    :cond_1
    :goto_0
    nop

    .line 789
    const/4 v0, 0x1

    .line 788
    :goto_1
    return v0
.end method

.method private static getCharsetName(I)Ljava/lang/String;
    .locals 1
    .param p0, "encodingByte"    # I

    .line 740
    packed-switch p0, :pswitch_data_0

    .line 749
    const-string v0, "ISO-8859-1"

    return-object v0

    .line 746
    :pswitch_0
    const-string v0, "UTF-8"

    return-object v0

    .line 744
    :pswitch_1
    const-string v0, "UTF-16BE"

    return-object v0

    .line 742
    :pswitch_2
    const-string v0, "UTF-16"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getFrameId(IIIII)Ljava/lang/String;
    .locals 8
    .param p0, "majorVersion"    # I
    .param p1, "frameId0"    # I
    .param p2, "frameId1"    # I
    .param p3, "frameId2"    # I
    .param p4, "frameId3"    # I

    .line 755
    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p0, v3, :cond_0

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%c%c%c"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v4, v5, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 756
    :cond_0
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%c%c%c%c"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 755
    :goto_0
    return-object v0
.end method

.method private static indexOfEos([BII)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "fromIndex"    # I
    .param p2, "encoding"    # I

    .line 760
    invoke-static {p0, p1}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v0

    .line 763
    .local v0, "terminationPos":I
    if-eqz p2, :cond_3

    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    goto :goto_1

    .line 768
    :cond_0
    :goto_0
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 769
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p0, v1

    if-nez v1, :cond_1

    .line 770
    return v0

    .line 769
    :cond_1
    nop

    .line 772
    add-int/lit8 v1, v0, 0x1

    invoke-static {p0, v1}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v0

    goto :goto_0

    .line 775
    :cond_2
    array-length v1, p0

    return v1

    .line 763
    :cond_3
    :goto_1
    nop

    .line 764
    return v0
.end method

.method private static indexOfZeroByte([BI)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "fromIndex"    # I

    .line 779
    move v0, p1

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 780
    aget-byte v1, p0, v0

    if-nez v1, :cond_0

    .line 781
    return v0

    .line 779
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 784
    .end local v0    # "i":I
    :cond_1
    array-length v0, p0

    return v0
.end method

.method static final synthetic lambda$static$0$Id3Decoder(IIIII)Z
    .locals 1
    .param p0, "majorVersion"    # I
    .param p1, "id0"    # I
    .param p2, "id1"    # I
    .param p3, "id2"    # I
    .param p4, "id3"    # I

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method private static removeUnsynchronization(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)I
    .locals 7
    .param p0, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p1, "length"    # I

    .line 721
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    .line 722
    .local v0, "bytes":[B
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 723
    .local v1, "startPosition":I
    move v2, v1

    .local v2, "i":I
    :goto_0
    add-int/lit8 v3, v2, 0x1

    add-int v4, v1, p1

    if-ge v3, v4, :cond_1

    .line 724
    aget-byte v3, v0, v2

    const/16 v4, 0xff

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    add-int/lit8 v3, v2, 0x1

    aget-byte v3, v0, v3

    if-nez v3, :cond_0

    .line 725
    sub-int v3, v2, v1

    .line 726
    .local v3, "relativePosition":I
    add-int/lit8 v4, v2, 0x2

    add-int/lit8 v5, v2, 0x1

    sub-int v6, p1, v3

    add-int/lit8 v6, v6, -0x2

    invoke-static {v0, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 727
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 724
    .end local v3    # "relativePosition":I
    :cond_0
    nop

    .line 723
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 730
    .end local v2    # "i":I
    :cond_1
    return p1
.end method

.method private static validateFrames(Landroidx/media2/exoplayer/external/util/ParsableByteArray;IIZ)Z
    .locals 19
    .param p0, "id3Data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p1, "majorVersion"    # I
    .param p2, "frameHeaderSize"    # I
    .param p3, "unsignedIntFrameSizeHack"    # Z

    .line 216
    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v3

    .line 218
    .local v3, "startPosition":I
    :goto_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x1

    move/from16 v5, p2

    if-lt v0, v5, :cond_e

    .line 223
    const/4 v0, 0x3

    if-lt v2, v0, :cond_0

    .line 224
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 225
    .local v6, "id":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v7

    .line 226
    .local v7, "frameSize":J
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v9

    goto :goto_1

    .line 228
    .end local v6    # "id":I
    .end local v7    # "frameSize":J
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v6

    .line 229
    .restart local v6    # "id":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v7, v7

    .line 230
    .restart local v7    # "frameSize":J
    const/4 v9, 0x0

    .line 233
    .local v9, "flags":I
    :goto_1
    const-wide/16 v10, 0x0

    if-nez v6, :cond_1

    cmp-long v12, v7, v10

    if-nez v12, :cond_1

    if-nez v9, :cond_1

    .line 235
    nop

    .line 273
    invoke-virtual {v1, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 235
    return v4

    .line 233
    :cond_1
    nop

    .line 237
    const/4 v12, 0x4

    const/4 v13, 0x0

    if-ne v2, v12, :cond_3

    if-nez p3, :cond_3

    .line 239
    const-wide/32 v14, 0x808080

    and-long/2addr v14, v7

    cmp-long v16, v14, v10

    if-eqz v16, :cond_2

    .line 240
    nop

    .line 273
    invoke-virtual {v1, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 240
    return v13

    .line 242
    :cond_2
    const-wide/16 v10, 0xff

    and-long v14, v7, v10

    const/16 v16, 0x8

    shr-long v16, v7, v16

    and-long v16, v16, v10

    const/16 v18, 0x7

    shl-long v16, v16, v18

    or-long v14, v14, v16

    const/16 v16, 0x10

    shr-long v16, v7, v16

    and-long v16, v16, v10

    const/16 v18, 0xe

    shl-long v16, v16, v18

    or-long v14, v14, v16

    const/16 v16, 0x18

    shr-long v16, v7, v16

    and-long v10, v16, v10

    const/16 v16, 0x15

    shl-long v10, v10, v16

    or-long v7, v14, v10

    goto :goto_2

    .line 237
    :cond_3
    nop

    .line 245
    :goto_2
    const/4 v10, 0x0

    .line 246
    .local v10, "hasGroupIdentifier":Z
    const/4 v11, 0x0

    .line 247
    .local v11, "hasDataLength":Z
    if-ne v2, v12, :cond_6

    .line 248
    and-int/lit8 v0, v9, 0x40

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    move v10, v0

    .line 249
    and-int/lit8 v0, v9, 0x1

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    :goto_4
    move v11, v4

    goto :goto_7

    .line 250
    :cond_6
    if-ne v2, v0, :cond_9

    .line 251
    and-int/lit8 v0, v9, 0x20

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    :goto_5
    move v10, v0

    .line 253
    and-int/lit16 v0, v9, 0x80

    if-eqz v0, :cond_8

    goto :goto_6

    :cond_8
    const/4 v4, 0x0

    :goto_6
    move v11, v4

    goto :goto_7

    .line 250
    :cond_9
    nop

    .line 255
    :goto_7
    const/4 v0, 0x0

    .line 256
    .local v0, "minimumFrameSize":I
    if-eqz v10, :cond_a

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 256
    :cond_a
    nop

    .line 259
    :goto_8
    if-eqz v11, :cond_b

    .line 260
    add-int/lit8 v0, v0, 0x4

    goto :goto_9

    .line 259
    :cond_b
    nop

    .line 262
    :goto_9
    int-to-long v14, v0

    cmp-long v4, v7, v14

    if-gez v4, :cond_c

    .line 263
    nop

    .line 273
    invoke-virtual {v1, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 263
    return v13

    .line 265
    :cond_c
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    int-to-long v14, v4

    cmp-long v4, v14, v7

    if-gez v4, :cond_d

    .line 266
    nop

    .line 273
    invoke-virtual {v1, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 266
    return v13

    .line 268
    :cond_d
    long-to-int v4, v7

    :try_start_3
    invoke-virtual {v1, v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 270
    .end local v0    # "minimumFrameSize":I
    .end local v6    # "id":I
    .end local v7    # "frameSize":J
    .end local v9    # "flags":I
    .end local v10    # "hasGroupIdentifier":Z
    .end local v11    # "hasDataLength":Z
    goto/16 :goto_0

    .line 273
    :catchall_0
    move-exception v0

    goto :goto_a

    .line 271
    :cond_e
    nop

    .line 273
    invoke-virtual {v1, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 271
    return v4

    .line 273
    :catchall_1
    move-exception v0

    move/from16 v5, p2

    :goto_a
    invoke-virtual {v1, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    throw v0

    return-void
.end method


# virtual methods
.method public decode(Landroidx/media2/exoplayer/external/metadata/MetadataInputBuffer;)Landroidx/media2/exoplayer/external/metadata/Metadata;
    .locals 3
    .param p1, "inputBuffer"    # Landroidx/media2/exoplayer/external/metadata/MetadataInputBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 108
    iget-object v0, p1, Landroidx/media2/exoplayer/external/metadata/MetadataInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 109
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->decode([BI)Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-result-object v1

    return-object v1
.end method

.method public decode([BI)Landroidx/media2/exoplayer/external/metadata/Metadata;
    .locals 12
    .param p1, "data"    # [B
    .param p2, "size"    # I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v0, "id3Frames":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;>;"
    new-instance v1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {v1, p1, p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>([BI)V

    .line 125
    .local v1, "id3Data":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    invoke-static {v1}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->decodeHeader(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$Id3Header;

    move-result-object v2

    .line 126
    .local v2, "id3Header":Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$Id3Header;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 127
    return-object v3

    .line 130
    :cond_0
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v4

    .line 131
    .local v4, "startPosition":I
    invoke-static {v2}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$Id3Header;->access$000(Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    const/4 v5, 0x6

    goto :goto_0

    :cond_1
    const/16 v5, 0xa

    .line 132
    .local v5, "frameHeaderSize":I
    :goto_0
    invoke-static {v2}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$Id3Header;->access$100(Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v6

    .line 133
    .local v6, "framesSize":I
    invoke-static {v2}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$Id3Header;->access$200(Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$Id3Header;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 134
    invoke-static {v2}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$Id3Header;->access$100(Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v7

    invoke-static {v1, v7}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->removeUnsynchronization(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)I

    move-result v6

    goto :goto_1

    .line 133
    :cond_2
    nop

    .line 136
    :goto_1
    add-int v7, v4, v6

    invoke-virtual {v1, v7}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setLimit(I)V

    .line 138
    const/4 v7, 0x0

    .line 139
    .local v7, "unsignedIntFrameSizeHack":Z
    invoke-static {v2}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$Id3Header;->access$000(Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v1, v8, v5, v9}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->validateFrames(Landroidx/media2/exoplayer/external/util/ParsableByteArray;IIZ)Z

    move-result v8

    if-nez v8, :cond_4

    .line 140
    invoke-static {v2}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$Id3Header;->access$000(Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_3

    const/4 v8, 0x1

    invoke-static {v1, v9, v5, v8}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->validateFrames(Landroidx/media2/exoplayer/external/util/ParsableByteArray;IIZ)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 141
    const/4 v7, 0x1

    goto :goto_2

    .line 140
    :cond_3
    nop

    .line 143
    const-string v8, "Id3Decoder"

    invoke-static {v2}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$Id3Header;->access$000(Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v9

    const/16 v10, 0x38

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "Failed to validate ID3 tag with majorVersion="

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-object v3

    .line 139
    :cond_4
    nop

    .line 148
    :goto_2
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    if-lt v3, v5, :cond_6

    .line 149
    invoke-static {v2}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$Id3Header;->access$000(Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v3

    iget-object v8, p0, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->framePredicate:Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$FramePredicate;

    invoke-static {v3, v1, v7, v5, v8}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->decodeFrame(ILandroidx/media2/exoplayer/external/util/ParsableByteArray;ZILandroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$FramePredicate;)Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    move-result-object v3

    .line 151
    .local v3, "frame":Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;
    if-eqz v3, :cond_5

    .line 152
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 151
    :cond_5
    nop

    .line 154
    .end local v3    # "frame":Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;
    :goto_3
    goto :goto_2

    .line 156
    :cond_6
    new-instance v3, Landroidx/media2/exoplayer/external/metadata/Metadata;

    invoke-direct {v3, v0}, Landroidx/media2/exoplayer/external/metadata/Metadata;-><init>(Ljava/util/List;)V

    return-object v3
.end method
