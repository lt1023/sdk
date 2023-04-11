.class final Landroidx/media2/exoplayer/external/text/dvb/DvbParser;
.super Ljava/lang/Object;
.source "DvbParser.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ObjectData;,
        Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ClutDefinition;,
        Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionObject;,
        Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionComposition;,
        Landroidx/media2/exoplayer/external/text/dvb/DvbParser$PageRegion;,
        Landroidx/media2/exoplayer/external/text/dvb/DvbParser$PageComposition;,
        Landroidx/media2/exoplayer/external/text/dvb/DvbParser$DisplayDefinition;,
        Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;
    }
.end annotation


# static fields
.field private static final DATA_TYPE_24_TABLE_DATA:I = 0x20

.field private static final DATA_TYPE_28_TABLE_DATA:I = 0x21

.field private static final DATA_TYPE_2BP_CODE_STRING:I = 0x10

.field private static final DATA_TYPE_48_TABLE_DATA:I = 0x22

.field private static final DATA_TYPE_4BP_CODE_STRING:I = 0x11

.field private static final DATA_TYPE_8BP_CODE_STRING:I = 0x12

.field private static final DATA_TYPE_END_LINE:I = 0xf0

.field private static final OBJECT_CODING_PIXELS:I = 0x0

.field private static final OBJECT_CODING_STRING:I = 0x1

.field private static final PAGE_STATE_NORMAL:I = 0x0

.field private static final REGION_DEPTH_4_BIT:I = 0x2

.field private static final REGION_DEPTH_8_BIT:I = 0x3

.field private static final SEGMENT_TYPE_CLUT_DEFINITION:I = 0x12

.field private static final SEGMENT_TYPE_DISPLAY_DEFINITION:I = 0x14

.field private static final SEGMENT_TYPE_OBJECT_DATA:I = 0x13

.field private static final SEGMENT_TYPE_PAGE_COMPOSITION:I = 0x10

.field private static final SEGMENT_TYPE_REGION_COMPOSITION:I = 0x11

.field private static final TAG:Ljava/lang/String; = "DvbParser"

.field private static final defaultMap2To4:[B

.field private static final defaultMap2To8:[B

.field private static final defaultMap4To8:[B


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private final canvas:Landroid/graphics/Canvas;

.field private final defaultClutDefinition:Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ClutDefinition;

.field private final defaultDisplayDefinition:Landroidx/media2/exoplayer/external/text/dvb/DvbParser$DisplayDefinition;

.field private final defaultPaint:Landroid/graphics/Paint;

.field private final fillRegionPaint:Landroid/graphics/Paint;

.field private final subtitleService:Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 77
    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->defaultMap2To4:[B

    .line 79
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->defaultMap2To8:[B

    .line 81
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->defaultMap4To8:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x7t
        0x8t
        0xft
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x77t
        -0x78t
        -0x1t
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x11t
        0x22t
        0x33t
        0x44t
        0x55t
        0x66t
        0x77t
        -0x78t
        -0x67t
        -0x56t
        -0x45t
        -0x34t
        -0x23t
        -0x12t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(II)V
    .locals 8
    .param p1, "subtitlePageId"    # I
    .param p2, "ancillaryPageId"    # I

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->defaultPaint:Landroid/graphics/Paint;

    .line 104
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->defaultPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 105
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->defaultPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 106
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->defaultPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 107
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->fillRegionPaint:Landroid/graphics/Paint;

    .line 108
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->fillRegionPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 109
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->fillRegionPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 110
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->fillRegionPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 111
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    .line 112
    new-instance v0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$DisplayDefinition;

    const/16 v2, 0x2cf

    const/16 v3, 0x23f

    const/4 v4, 0x0

    const/16 v5, 0x2cf

    const/4 v6, 0x0

    const/16 v7, 0x23f

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$DisplayDefinition;-><init>(IIIIII)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->defaultDisplayDefinition:Landroidx/media2/exoplayer/external/text/dvb/DvbParser$DisplayDefinition;

    .line 113
    new-instance v0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ClutDefinition;

    invoke-static {}, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->generateDefault2BitClutEntries()[I

    move-result-object v1

    .line 114
    invoke-static {}, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->generateDefault4BitClutEntries()[I

    move-result-object v2

    invoke-static {}, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->generateDefault8BitClutEntries()[I

    move-result-object v3

    invoke-direct {v0, v4, v1, v2, v3}, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ClutDefinition;-><init>(I[I[I[I)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->defaultClutDefinition:Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ClutDefinition;

    .line 115
    new-instance v0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;

    invoke-direct {v0, p1, p2}, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;-><init>(II)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->subtitleService:Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;

    .line 116
    return-void
.end method

.method private static buildClutMapTable(IILandroidx/media2/exoplayer/external/util/ParsableBitArray;)[B
    .locals 3
    .param p0, "length"    # I
    .param p1, "bitsPerEntry"    # I
    .param p2, "data"    # Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    .line 808
    new-array v0, p0, [B

    .line 809
    .local v0, "clutMapTable":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 810
    invoke-virtual {p2, p1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 809
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 812
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static generateDefault2BitClutEntries()[I
    .locals 3

    .line 505
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 506
    .local v0, "entries":[I
    const/4 v1, 0x0

    aput v1, v0, v1

    .line 507
    const/4 v1, 0x1

    const/4 v2, -0x1

    aput v2, v0, v1

    .line 508
    const/4 v1, 0x2

    const/high16 v2, -0x1000000

    aput v2, v0, v1

    .line 509
    const/4 v1, 0x3

    const v2, -0x808081

    aput v2, v0, v1

    .line 510
    return-object v0
.end method

.method private static generateDefault4BitClutEntries()[I
    .locals 8

    .line 514
    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 515
    .local v0, "entries":[I
    const/4 v1, 0x0

    aput v1, v0, v1

    .line 516
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_7

    .line 517
    const/16 v3, 0x8

    const/16 v4, 0xff

    if-ge v2, v3, :cond_3

    .line 518
    nop

    .line 520
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_0

    const/16 v3, 0xff

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 521
    :goto_1
    and-int/lit8 v5, v2, 0x2

    if-eqz v5, :cond_1

    const/16 v5, 0xff

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    .line 522
    :goto_2
    and-int/lit8 v6, v2, 0x4

    if-eqz v6, :cond_2

    const/16 v6, 0xff

    goto :goto_3

    :cond_2
    const/4 v6, 0x0

    .line 518
    :goto_3
    invoke-static {v4, v3, v5, v6}, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->getColor(IIII)I

    move-result v3

    aput v3, v0, v2

    goto :goto_7

    .line 524
    :cond_3
    nop

    .line 526
    and-int/lit8 v3, v2, 0x1

    const/16 v5, 0x7f

    if-eqz v3, :cond_4

    const/16 v3, 0x7f

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    .line 527
    :goto_4
    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_5

    const/16 v6, 0x7f

    goto :goto_5

    :cond_5
    const/4 v6, 0x0

    .line 528
    :goto_5
    and-int/lit8 v7, v2, 0x4

    if-eqz v7, :cond_6

    goto :goto_6

    :cond_6
    const/4 v5, 0x0

    .line 524
    :goto_6
    invoke-static {v4, v3, v6, v5}, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->getColor(IIII)I

    move-result v3

    aput v3, v0, v2

    .line 516
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 531
    .end local v2    # "i":I
    :cond_7
    return-object v0
.end method

.method private static generateDefault8BitClutEntries()[I
    .locals 10

    .line 535
    const/16 v0, 0x100

    new-array v0, v0, [I

    .line 536
    .local v0, "entries":[I
    const/4 v1, 0x0

    aput v1, v0, v1

    .line 537
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_20

    .line 538
    const/16 v3, 0x8

    const/16 v4, 0xff

    if-ge v2, v3, :cond_3

    .line 539
    const/16 v3, 0x3f

    .line 541
    and-int/lit8 v5, v2, 0x1

    if-eqz v5, :cond_0

    const/16 v5, 0xff

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 542
    :goto_1
    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_1

    const/16 v6, 0xff

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    .line 543
    :goto_2
    and-int/lit8 v7, v2, 0x4

    if-eqz v7, :cond_2

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    .line 539
    :goto_3
    invoke-static {v3, v5, v6, v4}, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->getColor(IIII)I

    move-result v3

    aput v3, v0, v2

    goto/16 :goto_1c

    .line 545
    :cond_3
    and-int/lit16 v5, v2, 0x88

    const/16 v6, 0xaa

    const/16 v7, 0x55

    if-eqz v5, :cond_19

    const/16 v8, 0x7f

    if-eq v5, v3, :cond_12

    const/16 v3, 0x80

    const/16 v6, 0x2b

    if-eq v5, v3, :cond_b

    const/16 v3, 0x88

    if-eq v5, v3, :cond_4

    goto/16 :goto_1c

    .line 568
    :cond_4
    nop

    .line 570
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_5

    const/16 v3, 0x2b

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_4
    and-int/lit8 v5, v2, 0x10

    if-eqz v5, :cond_6

    const/16 v5, 0x55

    goto :goto_5

    :cond_6
    const/4 v5, 0x0

    :goto_5
    add-int/2addr v3, v5

    .line 571
    and-int/lit8 v5, v2, 0x2

    if-eqz v5, :cond_7

    const/16 v5, 0x2b

    goto :goto_6

    :cond_7
    const/4 v5, 0x0

    :goto_6
    and-int/lit8 v8, v2, 0x20

    if-eqz v8, :cond_8

    const/16 v8, 0x55

    goto :goto_7

    :cond_8
    const/4 v8, 0x0

    :goto_7
    add-int/2addr v5, v8

    .line 572
    and-int/lit8 v8, v2, 0x4

    if-eqz v8, :cond_9

    goto :goto_8

    :cond_9
    const/4 v6, 0x0

    :goto_8
    and-int/lit8 v8, v2, 0x40

    if-eqz v8, :cond_a

    goto :goto_9

    :cond_a
    const/4 v7, 0x0

    :goto_9
    add-int/2addr v6, v7

    .line 568
    invoke-static {v4, v3, v5, v6}, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->getColor(IIII)I

    move-result v3

    aput v3, v0, v2

    goto/16 :goto_1c

    .line 561
    :cond_b
    nop

    .line 563
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_c

    const/16 v3, 0x2b

    goto :goto_a

    :cond_c
    const/4 v3, 0x0

    :goto_a
    add-int/2addr v3, v8

    and-int/lit8 v5, v2, 0x10

    if-eqz v5, :cond_d

    const/16 v5, 0x55

    goto :goto_b

    :cond_d
    const/4 v5, 0x0

    :goto_b
    add-int/2addr v3, v5

    .line 564
    and-int/lit8 v5, v2, 0x2

    if-eqz v5, :cond_e

    const/16 v5, 0x2b

    goto :goto_c

    :cond_e
    const/4 v5, 0x0

    :goto_c
    add-int/2addr v5, v8

    and-int/lit8 v9, v2, 0x20

    if-eqz v9, :cond_f

    const/16 v9, 0x55

    goto :goto_d

    :cond_f
    const/4 v9, 0x0

    :goto_d
    add-int/2addr v5, v9

    .line 565
    and-int/lit8 v9, v2, 0x4

    if-eqz v9, :cond_10

    goto :goto_e

    :cond_10
    const/4 v6, 0x0

    :goto_e
    add-int/2addr v6, v8

    and-int/lit8 v8, v2, 0x40

    if-eqz v8, :cond_11

    goto :goto_f

    :cond_11
    const/4 v7, 0x0

    :goto_f
    add-int/2addr v6, v7

    .line 561
    invoke-static {v4, v3, v5, v6}, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->getColor(IIII)I

    move-result v3

    aput v3, v0, v2

    .line 566
    goto/16 :goto_1c

    .line 554
    :cond_12
    nop

    .line 556
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_13

    const/16 v3, 0x55

    goto :goto_10

    :cond_13
    const/4 v3, 0x0

    :goto_10
    and-int/lit8 v4, v2, 0x10

    if-eqz v4, :cond_14

    const/16 v4, 0xaa

    goto :goto_11

    :cond_14
    const/4 v4, 0x0

    :goto_11
    add-int/2addr v3, v4

    .line 557
    and-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_15

    const/16 v4, 0x55

    goto :goto_12

    :cond_15
    const/4 v4, 0x0

    :goto_12
    and-int/lit8 v5, v2, 0x20

    if-eqz v5, :cond_16

    const/16 v5, 0xaa

    goto :goto_13

    :cond_16
    const/4 v5, 0x0

    :goto_13
    add-int/2addr v4, v5

    .line 558
    and-int/lit8 v5, v2, 0x4

    if-eqz v5, :cond_17

    goto :goto_14

    :cond_17
    const/4 v7, 0x0

    :goto_14
    and-int/lit8 v5, v2, 0x40

    if-eqz v5, :cond_18

    goto :goto_15

    :cond_18
    const/4 v6, 0x0

    :goto_15
    add-int/2addr v7, v6

    .line 554
    invoke-static {v8, v3, v4, v7}, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->getColor(IIII)I

    move-result v3

    aput v3, v0, v2

    .line 559
    goto :goto_1c

    .line 547
    :cond_19
    nop

    .line 549
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_1a

    const/16 v3, 0x55

    goto :goto_16

    :cond_1a
    const/4 v3, 0x0

    :goto_16
    and-int/lit8 v5, v2, 0x10

    if-eqz v5, :cond_1b

    const/16 v5, 0xaa

    goto :goto_17

    :cond_1b
    const/4 v5, 0x0

    :goto_17
    add-int/2addr v3, v5

    .line 550
    and-int/lit8 v5, v2, 0x2

    if-eqz v5, :cond_1c

    const/16 v5, 0x55

    goto :goto_18

    :cond_1c
    const/4 v5, 0x0

    :goto_18
    and-int/lit8 v8, v2, 0x20

    if-eqz v8, :cond_1d

    const/16 v8, 0xaa

    goto :goto_19

    :cond_1d
    const/4 v8, 0x0

    :goto_19
    add-int/2addr v5, v8

    .line 551
    and-int/lit8 v8, v2, 0x4

    if-eqz v8, :cond_1e

    goto :goto_1a

    :cond_1e
    const/4 v7, 0x0

    :goto_1a
    and-int/lit8 v8, v2, 0x40

    if-eqz v8, :cond_1f

    goto :goto_1b

    :cond_1f
    const/4 v6, 0x0

    :goto_1b
    add-int/2addr v7, v6

    .line 547
    invoke-static {v4, v3, v5, v7}, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->getColor(IIII)I

    move-result v3

    aput v3, v0, v2

    .line 552
    nop

    .line 537
    :goto_1c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 577
    .end local v2    # "i":I
    :cond_20
    return-object v0
.end method

.method private static getColor(IIII)I
    .locals 2
    .param p0, "a"    # I
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .line 581
    shl-int/lit8 v0, p0, 0x18

    shl-int/lit8 v1, p1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, p2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, p3

    return v0
.end method

.method private static paint2BitPixelCodeString(Landroidx/media2/exoplayer/external/util/ParsableBitArray;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I
    .locals 14
    .param p0, "data"    # Landroidx/media2/exoplayer/external/util/ParsableBitArray;
    .param p1, "clutEntries"    # [I
    .param p2, "clutMapTable"    # [B
    .param p3, "column"    # I
    .param p4, "line"    # I
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "canvas"    # Landroid/graphics/Canvas;

    .line 672
    move-object v0, p0

    move/from16 v1, p4

    move-object/from16 v8, p5

    const/4 v2, 0x0

    move/from16 v9, p3

    .line 674
    .end local p3    # "column":I
    .local v2, "endOfPixelCodeString":Z
    .local v9, "column":I
    :goto_0
    const/4 v3, 0x0

    .line 675
    .local v3, "runLength":I
    const/4 v4, 0x0

    .line 676
    .local v4, "clutIndex":I
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v10

    .line 677
    .local v10, "peek":I
    if-eqz v10, :cond_0

    .line 678
    const/4 v3, 0x1

    .line 679
    move v4, v10

    move v13, v2

    move v11, v3

    move v12, v4

    goto/16 :goto_1

    .line 680
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 681
    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v7

    add-int/lit8 v3, v7, 0x3

    .line 682
    invoke-virtual {p0, v5}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v4

    move v13, v2

    move v11, v3

    move v12, v4

    goto :goto_1

    .line 683
    :cond_1
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 684
    const/4 v3, 0x1

    move v13, v2

    move v11, v3

    move v12, v4

    goto :goto_1

    .line 686
    :cond_2
    invoke-virtual {p0, v5}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    move v13, v2

    move v11, v3

    move v12, v4

    goto :goto_1

    .line 698
    :pswitch_0
    const/16 v6, 0x8

    invoke-virtual {p0, v6}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v6

    add-int/lit8 v3, v6, 0x1d

    .line 699
    invoke-virtual {p0, v5}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v4

    move v13, v2

    move v11, v3

    move v12, v4

    goto :goto_1

    .line 694
    :pswitch_1
    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v6

    add-int/lit8 v3, v6, 0xc

    .line 695
    invoke-virtual {p0, v5}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 696
    move v13, v2

    move v11, v3

    move v12, v4

    goto :goto_1

    .line 691
    :pswitch_2
    const/4 v3, 0x2

    .line 692
    move v13, v2

    move v11, v3

    move v12, v4

    goto :goto_1

    .line 688
    :pswitch_3
    const/4 v2, 0x1

    .line 689
    move v13, v2

    move v11, v3

    move v12, v4

    .line 704
    .end local v2    # "endOfPixelCodeString":Z
    .end local v3    # "runLength":I
    .end local v4    # "clutIndex":I
    .local v11, "runLength":I
    .local v12, "clutIndex":I
    .local v13, "endOfPixelCodeString":Z
    :goto_1
    if-eqz v11, :cond_4

    if-eqz v8, :cond_4

    .line 705
    if-eqz p2, :cond_3

    aget-byte v2, p2, v12

    goto :goto_2

    :cond_3
    move v2, v12

    :goto_2
    aget v2, p1, v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 706
    int-to-float v3, v9

    int-to-float v4, v1

    add-int v2, v9, v11

    int-to-float v5, v2

    add-int/lit8 v2, v1, 0x1

    int-to-float v6, v2

    move-object/from16 v2, p6

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 704
    :cond_4
    nop

    .line 709
    :goto_3
    add-int/2addr v9, v11

    .line 710
    .end local v10    # "peek":I
    .end local v11    # "runLength":I
    .end local v12    # "clutIndex":I
    if-eqz v13, :cond_5

    .line 712
    return v9

    .line 710
    :cond_5
    move v2, v13

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static paint4BitPixelCodeString(Landroidx/media2/exoplayer/external/util/ParsableBitArray;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I
    .locals 14
    .param p0, "data"    # Landroidx/media2/exoplayer/external/util/ParsableBitArray;
    .param p1, "clutEntries"    # [I
    .param p2, "clutMapTable"    # [B
    .param p3, "column"    # I
    .param p4, "line"    # I
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "canvas"    # Landroid/graphics/Canvas;

    .line 720
    move-object v0, p0

    move/from16 v1, p4

    move-object/from16 v8, p5

    const/4 v2, 0x0

    move/from16 v9, p3

    .line 722
    .end local p3    # "column":I
    .local v2, "endOfPixelCodeString":Z
    .local v9, "column":I
    :goto_0
    const/4 v3, 0x0

    .line 723
    .local v3, "runLength":I
    const/4 v4, 0x0

    .line 724
    .local v4, "clutIndex":I
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 725
    .local v6, "peek":I
    if-eqz v6, :cond_0

    .line 726
    const/4 v3, 0x1

    .line 727
    move v4, v6

    move v12, v2

    move v10, v3

    move v11, v4

    move v13, v6

    goto/16 :goto_1

    .line 728
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v7

    if-nez v7, :cond_2

    .line 729
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 730
    if-eqz v6, :cond_1

    .line 731
    add-int/lit8 v3, v6, 0x2

    .line 732
    const/4 v4, 0x0

    move v12, v2

    move v10, v3

    move v11, v4

    move v13, v6

    goto/16 :goto_1

    .line 734
    :cond_1
    const/4 v2, 0x1

    move v12, v2

    move v10, v3

    move v11, v4

    move v13, v6

    goto/16 :goto_1

    .line 736
    :cond_2
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v7

    const/4 v10, 0x2

    if-nez v7, :cond_3

    .line 737
    invoke-virtual {p0, v10}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v7

    add-int/lit8 v3, v7, 0x4

    .line 738
    invoke-virtual {p0, v5}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v4

    move v12, v2

    move v10, v3

    move v11, v4

    move v13, v6

    goto :goto_1

    .line 740
    :cond_3
    invoke-virtual {p0, v10}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    move v12, v2

    move v10, v3

    move v11, v4

    move v13, v6

    goto :goto_1

    .line 752
    :pswitch_0
    const/16 v7, 0x8

    invoke-virtual {p0, v7}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v7

    add-int/lit8 v3, v7, 0x19

    .line 753
    invoke-virtual {p0, v5}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v4

    move v12, v2

    move v10, v3

    move v11, v4

    move v13, v6

    goto :goto_1

    .line 748
    :pswitch_1
    invoke-virtual {p0, v5}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v7

    add-int/lit8 v3, v7, 0x9

    .line 749
    invoke-virtual {p0, v5}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 750
    move v12, v2

    move v10, v3

    move v11, v4

    move v13, v6

    goto :goto_1

    .line 745
    :pswitch_2
    const/4 v3, 0x2

    .line 746
    move v12, v2

    move v10, v3

    move v11, v4

    move v13, v6

    goto :goto_1

    .line 742
    :pswitch_3
    const/4 v3, 0x1

    .line 743
    move v12, v2

    move v10, v3

    move v11, v4

    move v13, v6

    .line 758
    .end local v2    # "endOfPixelCodeString":Z
    .end local v3    # "runLength":I
    .end local v4    # "clutIndex":I
    .end local v6    # "peek":I
    .local v10, "runLength":I
    .local v11, "clutIndex":I
    .local v12, "endOfPixelCodeString":Z
    .local v13, "peek":I
    :goto_1
    if-eqz v10, :cond_5

    if-eqz v8, :cond_5

    .line 759
    if-eqz p2, :cond_4

    aget-byte v2, p2, v11

    goto :goto_2

    :cond_4
    move v2, v11

    :goto_2
    aget v2, p1, v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 760
    int-to-float v3, v9

    int-to-float v4, v1

    add-int v2, v9, v10

    int-to-float v5, v2

    add-int/lit8 v2, v1, 0x1

    int-to-float v6, v2

    move-object/from16 v2, p6

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 758
    :cond_5
    nop

    .line 763
    :goto_3
    add-int/2addr v9, v10

    .line 764
    .end local v10    # "runLength":I
    .end local v11    # "clutIndex":I
    .end local v13    # "peek":I
    if-eqz v12, :cond_6

    .line 766
    return v9

    .line 764
    :cond_6
    move v2, v12

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static paint8BitPixelCodeString(Landroidx/media2/exoplayer/external/util/ParsableBitArray;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I
    .locals 14
    .param p0, "data"    # Landroidx/media2/exoplayer/external/util/ParsableBitArray;
    .param p1, "clutEntries"    # [I
    .param p2, "clutMapTable"    # [B
    .param p3, "column"    # I
    .param p4, "line"    # I
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "canvas"    # Landroid/graphics/Canvas;

    .line 774
    move-object v0, p0

    move/from16 v1, p4

    move-object/from16 v8, p5

    const/4 v2, 0x0

    move/from16 v9, p3

    .line 776
    .end local p3    # "column":I
    .local v2, "endOfPixelCodeString":Z
    .local v9, "column":I
    :goto_0
    const/4 v3, 0x0

    .line 777
    .local v3, "runLength":I
    const/4 v4, 0x0

    .line 778
    .local v4, "clutIndex":I
    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 779
    .local v6, "peek":I
    if-eqz v6, :cond_0

    .line 780
    const/4 v3, 0x1

    .line 781
    move v4, v6

    move v12, v2

    move v10, v3

    move v11, v4

    move v13, v6

    goto :goto_1

    .line 783
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v7

    const/4 v10, 0x7

    if-nez v7, :cond_2

    .line 784
    invoke-virtual {p0, v10}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 785
    if-eqz v6, :cond_1

    .line 786
    move v3, v6

    .line 787
    const/4 v4, 0x0

    move v12, v2

    move v10, v3

    move v11, v4

    move v13, v6

    goto :goto_1

    .line 789
    :cond_1
    const/4 v2, 0x1

    move v12, v2

    move v10, v3

    move v11, v4

    move v13, v6

    goto :goto_1

    .line 792
    :cond_2
    invoke-virtual {p0, v10}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 793
    invoke-virtual {p0, v5}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v4

    move v12, v2

    move v10, v3

    move v11, v4

    move v13, v6

    .line 797
    .end local v2    # "endOfPixelCodeString":Z
    .end local v3    # "runLength":I
    .end local v4    # "clutIndex":I
    .end local v6    # "peek":I
    .local v10, "runLength":I
    .local v11, "clutIndex":I
    .local v12, "endOfPixelCodeString":Z
    .local v13, "peek":I
    :goto_1
    if-eqz v10, :cond_4

    if-eqz v8, :cond_4

    .line 798
    if-eqz p2, :cond_3

    aget-byte v2, p2, v11

    goto :goto_2

    :cond_3
    move v2, v11

    :goto_2
    aget v2, p1, v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 799
    int-to-float v3, v9

    int-to-float v4, v1

    add-int v2, v9, v10

    int-to-float v5, v2

    add-int/lit8 v2, v1, 0x1

    int-to-float v6, v2

    move-object/from16 v2, p6

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 797
    :cond_4
    nop

    .line 801
    :goto_3
    add-int/2addr v9, v10

    .line 802
    .end local v10    # "runLength":I
    .end local v11    # "clutIndex":I
    .end local v13    # "peek":I
    if-eqz v12, :cond_5

    .line 804
    return v9

    .line 802
    :cond_5
    move v2, v12

    goto :goto_0
.end method

.method private static paintPixelDataSubBlock([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 17
    .param p0, "pixelData"    # [B
    .param p1, "clutEntries"    # [I
    .param p2, "regionDepth"    # I
    .param p3, "horizontalAddress"    # I
    .param p4, "verticalAddress"    # I
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "canvas"    # Landroid/graphics/Canvas;

    .line 610
    move/from16 v0, p2

    new-instance v1, Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    move-object/from16 v2, p0

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;-><init>([B)V

    .line 611
    .local v1, "data":Landroidx/media2/exoplayer/external/util/ParsableBitArray;
    move/from16 v3, p3

    .line 612
    .local v3, "column":I
    move/from16 v4, p4

    .line 613
    .local v4, "line":I
    const/4 v5, 0x0

    .line 614
    .local v5, "clutMapTable2To4":[B
    const/4 v6, 0x0

    .line 615
    .local v6, "clutMapTable2To8":[B
    const/4 v10, 0x0

    move v13, v3

    move v14, v4

    move-object v11, v5

    move-object v12, v6

    .line 617
    .end local v3    # "column":I
    .end local v4    # "line":I
    .end local v5    # "clutMapTable2To4":[B
    .end local v6    # "clutMapTable2To8":[B
    .local v10, "clutMapTable4To8":[B
    .local v11, "clutMapTable2To4":[B
    .local v12, "clutMapTable2To8":[B
    .local v13, "column":I
    .local v14, "line":I
    :goto_0
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitsLeft()I

    move-result v3

    if-eqz v3, :cond_7

    .line 618
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v15

    .line 619
    .local v15, "dataType":I
    const/16 v4, 0xf0

    if-eq v15, v4, :cond_6

    const/4 v4, 0x3

    packed-switch v15, :pswitch_data_0

    const/4 v4, 0x4

    packed-switch v15, :pswitch_data_1

    goto/16 :goto_6

    .line 654
    :pswitch_0
    const/16 v4, 0x10

    invoke-static {v4, v3, v1}, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->buildClutMapTable(IILandroidx/media2/exoplayer/external/util/ParsableBitArray;)[B

    move-result-object v3

    .line 655
    .end local v12    # "clutMapTable2To8":[B
    .local v3, "clutMapTable2To8":[B
    move-object v12, v3

    goto/16 :goto_6

    .line 651
    .end local v3    # "clutMapTable2To8":[B
    .restart local v12    # "clutMapTable2To8":[B
    :pswitch_1
    invoke-static {v4, v3, v1}, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->buildClutMapTable(IILandroidx/media2/exoplayer/external/util/ParsableBitArray;)[B

    move-result-object v3

    .line 652
    .end local v12    # "clutMapTable2To8":[B
    .restart local v3    # "clutMapTable2To8":[B
    move-object v12, v3

    goto/16 :goto_6

    .line 648
    .end local v3    # "clutMapTable2To8":[B
    .restart local v12    # "clutMapTable2To8":[B
    :pswitch_2
    invoke-static {v4, v4, v1}, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->buildClutMapTable(IILandroidx/media2/exoplayer/external/util/ParsableBitArray;)[B

    move-result-object v3

    .line 649
    .end local v11    # "clutMapTable2To4":[B
    .local v3, "clutMapTable2To4":[B
    move-object v11, v3

    goto/16 :goto_6

    .line 645
    .end local v3    # "clutMapTable2To4":[B
    .restart local v11    # "clutMapTable2To4":[B
    :pswitch_3
    const/4 v5, 0x0

    move-object v3, v1

    move-object/from16 v4, p1

    move v6, v13

    move v7, v14

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-static/range {v3 .. v9}, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->paint8BitPixelCodeString(Landroidx/media2/exoplayer/external/util/ParsableBitArray;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I

    move-result v13

    .line 646
    goto/16 :goto_6

    .line 635
    :pswitch_4
    if-ne v0, v4, :cond_1

    .line 636
    if-nez v10, :cond_0

    sget-object v3, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->defaultMap4To8:[B

    goto :goto_1

    :cond_0
    move-object v3, v10

    :goto_1
    move-object/from16 v16, v3

    goto :goto_2

    .line 638
    :cond_1
    const/4 v3, 0x0

    move-object/from16 v16, v3

    .line 640
    .local v16, "clutMapTable4ToX":[B
    :goto_2
    move-object v3, v1

    move-object/from16 v4, p1

    move-object/from16 v5, v16

    move v6, v13

    move v7, v14

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-static/range {v3 .. v9}, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->paint4BitPixelCodeString(Landroidx/media2/exoplayer/external/util/ParsableBitArray;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I

    move-result v13

    .line 642
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteAlign()V

    .line 643
    goto :goto_6

    .line 622
    .end local v16    # "clutMapTable4ToX":[B
    :pswitch_5
    if-ne v0, v4, :cond_3

    .line 623
    if-nez v12, :cond_2

    sget-object v3, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->defaultMap2To8:[B

    goto :goto_3

    :cond_2
    move-object v3, v12

    :goto_3
    move-object/from16 v16, v3

    goto :goto_5

    .line 624
    :cond_3
    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    .line 625
    if-nez v11, :cond_4

    sget-object v3, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->defaultMap2To4:[B

    goto :goto_4

    :cond_4
    move-object v3, v11

    :goto_4
    move-object/from16 v16, v3

    goto :goto_5

    .line 627
    :cond_5
    const/4 v3, 0x0

    move-object/from16 v16, v3

    .line 629
    .local v16, "clutMapTable2ToX":[B
    :goto_5
    move-object v3, v1

    move-object/from16 v4, p1

    move-object/from16 v5, v16

    move v6, v13

    move v7, v14

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-static/range {v3 .. v9}, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->paint2BitPixelCodeString(Landroidx/media2/exoplayer/external/util/ParsableBitArray;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I

    move-result v13

    .line 631
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteAlign()V

    .line 632
    goto :goto_6

    .line 657
    .end local v16    # "clutMapTable2ToX":[B
    :cond_6
    move/from16 v13, p3

    .line 658
    add-int/lit8 v14, v14, 0x2

    .line 659
    nop

    .line 664
    .end local v15    # "dataType":I
    :goto_6
    goto/16 :goto_0

    .line 665
    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static paintPixelDataSubBlocks(Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ObjectData;Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ClutDefinition;IIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 8
    .param p0, "objectData"    # Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ObjectData;
    .param p1, "clutDefinition"    # Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ClutDefinition;
    .param p2, "regionDepth"    # I
    .param p3, "horizontalAddress"    # I
    .param p4, "verticalAddress"    # I
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "canvas"    # Landroid/graphics/Canvas;

    .line 592
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 593
    iget-object v0, p1, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ClutDefinition;->clutEntries8Bit:[I

    goto :goto_0

    .line 594
    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 595
    iget-object v0, p1, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ClutDefinition;->clutEntries4Bit:[I

    goto :goto_0

    .line 597
    :cond_1
    iget-object v0, p1, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ClutDefinition;->clutEntries2Bit:[I

    .line 599
    .local v0, "clutEntries":[I
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ObjectData;->topFieldData:[B

    move-object v2, v0

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v1 .. v7}, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->paintPixelDataSubBlock([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 601
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ObjectData;->bottomFieldData:[B

    add-int/lit8 v5, p4, 0x1

    invoke-static/range {v1 .. v7}, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->paintPixelDataSubBlock([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 603
    return-void
.end method

.method private static parseClutDefinition(Landroidx/media2/exoplayer/external/util/ParsableBitArray;I)Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ClutDefinition;
    .locals 23
    .param p0, "data"    # Landroidx/media2/exoplayer/external/util/ParsableBitArray;
    .param p1, "length"    # I

    .line 410
    move-object/from16 v0, p0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 411
    .local v2, "clutId":I
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 412
    add-int/lit8 v3, p1, -0x2

    .line 414
    .local v3, "remainingLength":I
    invoke-static {}, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->generateDefault2BitClutEntries()[I

    move-result-object v4

    .line 415
    .local v4, "clutEntries2Bit":[I
    invoke-static {}, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->generateDefault4BitClutEntries()[I

    move-result-object v5

    .line 416
    .local v5, "clutEntries4Bit":[I
    invoke-static {}, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->generateDefault8BitClutEntries()[I

    move-result-object v6

    .line 418
    .local v6, "clutEntries8Bit":[I
    :goto_0
    if-lez v3, :cond_4

    .line 419
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 420
    .local v7, "entryId":I
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 421
    .local v8, "entryFlags":I
    add-int/lit8 v3, v3, -0x2

    .line 424
    and-int/lit16 v9, v8, 0x80

    if-eqz v9, :cond_0

    .line 425
    move-object v9, v4

    goto :goto_1

    .line 426
    :cond_0
    and-int/lit8 v9, v8, 0x40

    if-eqz v9, :cond_1

    .line 427
    move-object v9, v5

    goto :goto_1

    .line 429
    :cond_1
    move-object v9, v6

    .line 436
    .local v9, "clutEntries":[I
    :goto_1
    and-int/lit8 v10, v8, 0x1

    if-eqz v10, :cond_2

    .line 437
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v10

    .line 438
    .local v10, "y":I
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v11

    .line 439
    .local v11, "cr":I
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v12

    .line 440
    .local v12, "cb":I
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v13

    .line 441
    .local v13, "t":I
    add-int/lit8 v3, v3, -0x4

    move v14, v11

    goto :goto_2

    .line 443
    .end local v10    # "y":I
    .end local v11    # "cr":I
    .end local v12    # "cb":I
    .end local v13    # "t":I
    :cond_2
    const/4 v10, 0x6

    invoke-virtual {v0, v10}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v11

    const/4 v12, 0x2

    shl-int/2addr v11, v12

    .line 444
    .local v11, "y":I
    const/4 v13, 0x4

    invoke-virtual {v0, v13}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v14

    shl-int/2addr v14, v13

    .line 445
    .local v14, "cr":I
    invoke-virtual {v0, v13}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v15

    shl-int/lit8 v13, v15, 0x4

    .line 446
    .local v13, "cb":I
    invoke-virtual {v0, v12}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v12

    shl-int/lit8 v10, v12, 0x6

    .line 447
    .local v10, "t":I
    add-int/lit8 v3, v3, -0x2

    move v12, v13

    move v13, v10

    move v10, v11

    .line 450
    .end local v11    # "y":I
    .local v10, "y":I
    .restart local v12    # "cb":I
    .local v13, "t":I
    :goto_2
    if-nez v10, :cond_3

    .line 451
    const/4 v14, 0x0

    .line 452
    const/4 v12, 0x0

    .line 453
    const/16 v13, 0xff

    goto :goto_3

    .line 450
    :cond_3
    nop

    .line 456
    :goto_3
    and-int/lit16 v11, v13, 0xff

    const/16 v15, 0xff

    rsub-int v11, v11, 0xff

    int-to-byte v11, v11

    .line 457
    .local v11, "a":I
    move/from16 v16, v2

    .end local v2    # "clutId":I
    .local v16, "clutId":I
    int-to-double v1, v10

    const-wide v17, 0x3ff66e978d4fdf3bL    # 1.402

    add-int/lit8 v15, v14, -0x80

    move/from16 v20, v3

    move-object/from16 v19, v4

    .end local v3    # "remainingLength":I
    .end local v4    # "clutEntries2Bit":[I
    .local v19, "clutEntries2Bit":[I
    .local v20, "remainingLength":I
    int-to-double v3, v15

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v17

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v1, v3

    double-to-int v1, v1

    .line 458
    .local v1, "r":I
    int-to-double v2, v10

    const-wide v17, 0x3fd60663c74fb54aL    # 0.34414

    add-int/lit8 v4, v12, -0x80

    move-object v15, v5

    .end local v5    # "clutEntries4Bit":[I
    .local v15, "clutEntries4Bit":[I
    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v17

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v2, v4

    add-int/lit8 v4, v14, -0x80

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    const-wide v17, 0x3fe6da3c21187e7cL    # 0.71414

    mul-double v4, v4, v17

    sub-double/2addr v2, v4

    double-to-int v2, v2

    .line 459
    .local v2, "g":I
    int-to-double v3, v10

    const-wide v17, 0x3ffc5a1cac083127L    # 1.772

    add-int/lit8 v5, v12, -0x80

    move/from16 v22, v12

    move/from16 v21, v13

    .end local v12    # "cb":I
    .end local v13    # "t":I
    .local v21, "t":I
    .local v22, "cb":I
    int-to-double v12, v5

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v17

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, v12

    double-to-int v3, v3

    .line 460
    .local v3, "b":I
    const/4 v4, 0x0

    const/16 v5, 0xff

    invoke-static {v1, v4, v5}, Landroidx/media2/exoplayer/external/util/Util;->constrainValue(III)I

    move-result v12

    .line 461
    invoke-static {v2, v4, v5}, Landroidx/media2/exoplayer/external/util/Util;->constrainValue(III)I

    move-result v13

    invoke-static {v3, v4, v5}, Landroidx/media2/exoplayer/external/util/Util;->constrainValue(III)I

    move-result v4

    .line 460
    invoke-static {v11, v12, v13, v4}, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->getColor(IIII)I

    move-result v4

    aput v4, v9, v7

    .line 462
    .end local v1    # "r":I
    .end local v2    # "g":I
    .end local v3    # "b":I
    .end local v7    # "entryId":I
    .end local v8    # "entryFlags":I
    .end local v9    # "clutEntries":[I
    .end local v10    # "y":I
    .end local v11    # "a":I
    .end local v14    # "cr":I
    .end local v21    # "t":I
    .end local v22    # "cb":I
    move-object v5, v15

    move/from16 v2, v16

    move-object/from16 v4, v19

    move/from16 v3, v20

    const/16 v1, 0x8

    goto/16 :goto_0

    .line 464
    .end local v15    # "clutEntries4Bit":[I
    .end local v16    # "clutId":I
    .end local v19    # "clutEntries2Bit":[I
    .end local v20    # "remainingLength":I
    .local v2, "clutId":I
    .local v3, "remainingLength":I
    .restart local v4    # "clutEntries2Bit":[I
    .restart local v5    # "clutEntries4Bit":[I
    :cond_4
    move/from16 v16, v2

    move-object/from16 v19, v4

    move-object v15, v5

    .end local v2    # "clutId":I
    .end local v4    # "clutEntries2Bit":[I
    .end local v5    # "clutEntries4Bit":[I
    .restart local v15    # "clutEntries4Bit":[I
    .restart local v16    # "clutId":I
    .restart local v19    # "clutEntries2Bit":[I
    new-instance v1, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ClutDefinition;

    .end local v15    # "clutEntries4Bit":[I
    .end local v16    # "clutId":I
    .end local v19    # "clutEntries2Bit":[I
    .restart local v2    # "clutId":I
    .restart local v4    # "clutEntries2Bit":[I
    .restart local v5    # "clutEntries4Bit":[I
    invoke-direct {v1, v2, v4, v5, v6}, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ClutDefinition;-><init>(I[I[I[I)V

    return-object v1
.end method

.method private static parseDisplayDefinition(Landroidx/media2/exoplayer/external/util/ParsableBitArray;)Landroidx/media2/exoplayer/external/text/dvb/DvbParser$DisplayDefinition;
    .locals 15
    .param p0, "data"    # Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    .line 310
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 311
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v0

    .line 312
    .local v0, "displayWindowFlag":Z
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 313
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v9

    .line 314
    .local v9, "width":I
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v10

    .line 320
    .local v10, "height":I
    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 322
    .local v2, "horizontalPositionMinimum":I
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 323
    .local v3, "horizontalPositionMaximum":I
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 324
    .local v4, "verticalPositionMinimum":I
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v1

    move v13, v1

    move v1, v2

    move v11, v3

    move v12, v4

    goto :goto_0

    .line 326
    .end local v2    # "horizontalPositionMinimum":I
    .end local v3    # "horizontalPositionMaximum":I
    .end local v4    # "verticalPositionMinimum":I
    :cond_0
    const/4 v1, 0x0

    .line 327
    .local v1, "horizontalPositionMinimum":I
    move v2, v9

    .line 328
    .local v2, "horizontalPositionMaximum":I
    const/4 v3, 0x0

    .line 329
    .local v3, "verticalPositionMinimum":I
    move v4, v10

    move v11, v2

    move v12, v3

    move v13, v4

    .line 332
    .end local v2    # "horizontalPositionMaximum":I
    .end local v3    # "verticalPositionMinimum":I
    .local v11, "horizontalPositionMaximum":I
    .local v12, "verticalPositionMinimum":I
    .local v13, "verticalPositionMaximum":I
    :goto_0
    new-instance v14, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$DisplayDefinition;

    move-object v2, v14

    move v3, v9

    move v4, v10

    move v5, v1

    move v6, v11

    move v7, v12

    move v8, v13

    invoke-direct/range {v2 .. v8}, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$DisplayDefinition;-><init>(IIIIII)V

    return-object v14
.end method

.method private static parseObjectData(Landroidx/media2/exoplayer/external/util/ParsableBitArray;)Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ObjectData;
    .locals 8
    .param p0, "data"    # Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    .line 473
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 474
    .local v1, "objectId":I
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 475
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 476
    .local v2, "objectCodingMethod":I
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v3

    .line 477
    .local v3, "nonModifyingColorFlag":Z
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 479
    const/4 v5, 0x0

    .line 480
    .local v5, "topFieldData":[B
    const/4 v6, 0x0

    .line 482
    .local v6, "bottomFieldData":[B
    if-ne v2, v4, :cond_0

    .line 483
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 485
    .local v0, "numberOfCodes":I
    mul-int/lit8 v4, v0, 0x10

    invoke-virtual {p0, v4}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .end local v0    # "numberOfCodes":I
    goto :goto_1

    .line 486
    :cond_0
    if-nez v2, :cond_3

    .line 487
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 488
    .local v4, "topFieldDataLength":I
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 489
    .local v0, "bottomFieldDataLength":I
    const/4 v7, 0x0

    if-lez v4, :cond_1

    .line 490
    new-array v5, v4, [B

    .line 491
    invoke-virtual {p0, v5, v7, v4}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBytes([BII)V

    goto :goto_0

    .line 489
    :cond_1
    nop

    .line 493
    :goto_0
    if-lez v0, :cond_2

    .line 494
    new-array v6, v0, [B

    .line 495
    invoke-virtual {p0, v6, v7, v0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBytes([BII)V

    goto :goto_2

    .line 497
    :cond_2
    move-object v6, v5

    goto :goto_2

    .line 486
    .end local v0    # "bottomFieldDataLength":I
    .end local v4    # "topFieldDataLength":I
    :cond_3
    :goto_1
    nop

    .line 501
    :goto_2
    new-instance v0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ObjectData;

    invoke-direct {v0, v1, v3, v5, v6}, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ObjectData;-><init>(IZ[B[B)V

    return-object v0
.end method

.method private static parsePageComposition(Landroidx/media2/exoplayer/external/util/ParsableBitArray;I)Landroidx/media2/exoplayer/external/text/dvb/DvbParser$PageComposition;
    .locals 10
    .param p0, "data"    # Landroidx/media2/exoplayer/external/util/ParsableBitArray;
    .param p1, "length"    # I

    .line 340
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 341
    .local v1, "timeoutSecs":I
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 342
    .local v2, "version":I
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 343
    .local v4, "state":I
    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 344
    add-int/lit8 v3, p1, -0x2

    .line 346
    .local v3, "remainingLength":I
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 347
    .local v5, "regions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media2/exoplayer/external/text/dvb/DvbParser$PageRegion;>;"
    :goto_0
    if-lez v3, :cond_0

    .line 348
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 349
    .local v6, "regionId":I
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 350
    const/16 v7, 0x10

    invoke-virtual {p0, v7}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 351
    .local v8, "regionHorizontalAddress":I
    invoke-virtual {p0, v7}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 352
    .local v7, "regionVerticalAddress":I
    add-int/lit8 v3, v3, -0x6

    .line 353
    new-instance v9, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$PageRegion;

    invoke-direct {v9, v8, v7}, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$PageRegion;-><init>(II)V

    invoke-virtual {v5, v6, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 354
    .end local v6    # "regionId":I
    .end local v7    # "regionVerticalAddress":I
    .end local v8    # "regionHorizontalAddress":I
    goto :goto_0

    .line 356
    :cond_0
    new-instance v0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$PageComposition;

    invoke-direct {v0, v1, v2, v4, v5}, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$PageComposition;-><init>(IIILandroid/util/SparseArray;)V

    return-object v0
.end method

.method private static parseRegionComposition(Landroidx/media2/exoplayer/external/util/ParsableBitArray;I)Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionComposition;
    .locals 31
    .param p0, "data"    # Landroidx/media2/exoplayer/external/util/ParsableBitArray;
    .param p1, "length"    # I

    .line 363
    move-object/from16 v0, p0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v14

    .line 364
    .local v14, "id":I
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 365
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v15

    .line 366
    .local v15, "fillFlag":Z
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 367
    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v16

    .line 368
    .local v16, "width":I
    invoke-virtual {v0, v4}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v17

    .line 369
    .local v17, "height":I
    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v18

    .line 370
    .local v18, "levelOfCompatibility":I
    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v19

    .line 371
    .local v19, "depth":I
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 372
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v20

    .line 373
    .local v20, "clutId":I
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v21

    .line 374
    .local v21, "pixelCode8Bit":I
    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v22

    .line 375
    .local v22, "pixelCode4Bit":I
    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v23

    .line 376
    .local v23, "pixelCode2Bit":I
    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 377
    add-int/lit8 v5, p1, -0xa

    .line 379
    .local v5, "remainingLength":I
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    move-object v13, v6

    move/from16 v24, v5

    .line 380
    .end local v5    # "remainingLength":I
    .local v13, "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionObject;>;"
    .local v24, "remainingLength":I
    :goto_0
    if-lez v24, :cond_2

    .line 381
    invoke-virtual {v0, v4}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 382
    .local v5, "objectId":I
    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v12

    .line 383
    .local v12, "objectType":I
    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v25

    .line 384
    .local v25, "objectProvider":I
    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v26

    .line 385
    .local v26, "objectHorizontalPosition":I
    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 386
    invoke-virtual {v0, v6}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v27

    .line 387
    .local v27, "objectVerticalPosition":I
    add-int/lit8 v24, v24, -0x6

    .line 389
    const/4 v6, 0x0

    .line 390
    .local v6, "foregroundPixelCode":I
    const/4 v7, 0x0

    .line 391
    .local v7, "backgroundPixelCode":I
    const/4 v8, 0x1

    if-eq v12, v8, :cond_1

    if-ne v12, v3, :cond_0

    goto :goto_1

    :cond_0
    move/from16 v28, v7

    move/from16 v29, v24

    move/from16 v24, v6

    goto :goto_2

    .line 392
    :cond_1
    :goto_1
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 393
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 394
    add-int/lit8 v24, v24, -0x2

    move/from16 v28, v7

    move/from16 v29, v24

    move/from16 v24, v6

    .line 397
    .end local v6    # "foregroundPixelCode":I
    .end local v7    # "backgroundPixelCode":I
    .local v24, "foregroundPixelCode":I
    .local v28, "backgroundPixelCode":I
    .local v29, "remainingLength":I
    :goto_2
    new-instance v11, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionObject;

    move-object v6, v11

    move v7, v12

    move/from16 v8, v25

    move/from16 v9, v26

    move/from16 v10, v27

    move-object v1, v11

    move/from16 v11, v24

    move/from16 v30, v12

    .end local v12    # "objectType":I
    .local v30, "objectType":I
    move/from16 v12, v28

    invoke-direct/range {v6 .. v12}, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionObject;-><init>(IIIIII)V

    invoke-virtual {v13, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 400
    .end local v5    # "objectId":I
    .end local v24    # "foregroundPixelCode":I
    .end local v25    # "objectProvider":I
    .end local v26    # "objectHorizontalPosition":I
    .end local v27    # "objectVerticalPosition":I
    .end local v28    # "backgroundPixelCode":I
    .end local v30    # "objectType":I
    move/from16 v24, v29

    const/16 v1, 0x8

    goto :goto_0

    .line 402
    .end local v29    # "remainingLength":I
    .local v24, "remainingLength":I
    :cond_2
    new-instance v1, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionComposition;

    move-object v2, v1

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, v19

    move/from16 v9, v20

    move/from16 v10, v21

    move/from16 v11, v22

    move/from16 v12, v23

    move-object/from16 v25, v13

    .end local v13    # "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionObject;>;"
    .local v25, "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionObject;>;"
    invoke-direct/range {v2 .. v13}, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionComposition;-><init>(IZIIIIIIIILandroid/util/SparseArray;)V

    return-object v1
.end method

.method private static parseSubtitlingSegment(Landroidx/media2/exoplayer/external/util/ParsableBitArray;Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;)V
    .locals 8
    .param p0, "data"    # Landroidx/media2/exoplayer/external/util/ParsableBitArray;
    .param p1, "service"    # Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;

    .line 237
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 238
    .local v0, "segmentType":I
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 239
    .local v2, "pageId":I
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 240
    .local v1, "dataFieldLength":I
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->getBytePosition()I

    move-result v3

    add-int/2addr v3, v1

    .line 242
    .local v3, "dataFieldLimit":I
    mul-int/lit8 v4, v1, 0x8

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitsLeft()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 243
    const-string v4, "DvbParser"

    const-string v5, "Data field length exceeds limit"

    invoke-static {v4, v5}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitsLeft()I

    move-result v4

    invoke-virtual {p0, v4}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 246
    return-void

    .line 249
    :cond_0
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 251
    :pswitch_0
    iget v4, p1, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v2, v4, :cond_1

    .line 252
    invoke-static {p0}, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->parseDisplayDefinition(Landroidx/media2/exoplayer/external/util/ParsableBitArray;)Landroidx/media2/exoplayer/external/text/dvb/DvbParser$DisplayDefinition;

    move-result-object v4

    iput-object v4, p1, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;->displayDefinition:Landroidx/media2/exoplayer/external/text/dvb/DvbParser$DisplayDefinition;

    goto/16 :goto_4

    .line 251
    :cond_1
    goto/16 :goto_4

    .line 289
    :pswitch_1
    iget v4, p1, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v2, v4, :cond_2

    .line 290
    invoke-static {p0}, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->parseObjectData(Landroidx/media2/exoplayer/external/util/ParsableBitArray;)Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ObjectData;

    move-result-object v4

    .line 291
    .local v4, "objectData":Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ObjectData;
    iget-object v5, p1, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;->objects:Landroid/util/SparseArray;

    iget v6, v4, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ObjectData;->id:I

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .end local v4    # "objectData":Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ObjectData;
    goto :goto_0

    .line 292
    :cond_2
    iget v4, p1, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;->ancillaryPageId:I

    if-ne v2, v4, :cond_3

    .line 293
    invoke-static {p0}, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->parseObjectData(Landroidx/media2/exoplayer/external/util/ParsableBitArray;)Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ObjectData;

    move-result-object v4

    .line 294
    .restart local v4    # "objectData":Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ObjectData;
    iget-object v5, p1, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;->ancillaryObjects:Landroid/util/SparseArray;

    iget v6, v4, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ObjectData;->id:I

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 295
    .end local v4    # "objectData":Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ObjectData;
    goto/16 :goto_4

    .line 292
    :cond_3
    :goto_0
    goto/16 :goto_4

    .line 280
    :pswitch_2
    iget v4, p1, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v2, v4, :cond_4

    .line 281
    invoke-static {p0, v1}, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->parseClutDefinition(Landroidx/media2/exoplayer/external/util/ParsableBitArray;I)Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ClutDefinition;

    move-result-object v4

    .line 282
    .local v4, "clutDefinition":Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ClutDefinition;
    iget-object v5, p1, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;->cluts:Landroid/util/SparseArray;

    iget v6, v4, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ClutDefinition;->id:I

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .end local v4    # "clutDefinition":Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ClutDefinition;
    goto :goto_1

    .line 283
    :cond_4
    iget v4, p1, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;->ancillaryPageId:I

    if-ne v2, v4, :cond_5

    .line 284
    invoke-static {p0, v1}, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->parseClutDefinition(Landroidx/media2/exoplayer/external/util/ParsableBitArray;I)Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ClutDefinition;

    move-result-object v4

    .line 285
    .restart local v4    # "clutDefinition":Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ClutDefinition;
    iget-object v5, p1, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;->ancillaryCluts:Landroid/util/SparseArray;

    iget v6, v4, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ClutDefinition;->id:I

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 286
    .end local v4    # "clutDefinition":Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ClutDefinition;
    goto :goto_4

    .line 283
    :cond_5
    :goto_1
    goto :goto_4

    .line 270
    :pswitch_3
    iget-object v4, p1, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;->pageComposition:Landroidx/media2/exoplayer/external/text/dvb/DvbParser$PageComposition;

    .line 271
    .local v4, "pageComposition":Landroidx/media2/exoplayer/external/text/dvb/DvbParser$PageComposition;
    iget v5, p1, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v2, v5, :cond_7

    if-eqz v4, :cond_7

    .line 272
    invoke-static {p0, v1}, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->parseRegionComposition(Landroidx/media2/exoplayer/external/util/ParsableBitArray;I)Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionComposition;

    move-result-object v5

    .line 273
    .local v5, "regionComposition":Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionComposition;
    iget v6, v4, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$PageComposition;->state:I

    if-nez v6, :cond_6

    .line 274
    iget-object v6, p1, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    iget v7, v5, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionComposition;->id:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionComposition;

    invoke-virtual {v5, v6}, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionComposition;->mergeFrom(Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionComposition;)V

    goto :goto_2

    .line 273
    :cond_6
    nop

    .line 276
    :goto_2
    iget-object v6, p1, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    iget v7, v5, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionComposition;->id:I

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 277
    .end local v5    # "regionComposition":Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionComposition;
    goto :goto_4

    .line 271
    :cond_7
    goto :goto_4

    .line 256
    .end local v4    # "pageComposition":Landroidx/media2/exoplayer/external/text/dvb/DvbParser$PageComposition;
    :pswitch_4
    iget v4, p1, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v2, v4, :cond_a

    .line 257
    iget-object v4, p1, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;->pageComposition:Landroidx/media2/exoplayer/external/text/dvb/DvbParser$PageComposition;

    .line 258
    .local v4, "current":Landroidx/media2/exoplayer/external/text/dvb/DvbParser$PageComposition;
    invoke-static {p0, v1}, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->parsePageComposition(Landroidx/media2/exoplayer/external/util/ParsableBitArray;I)Landroidx/media2/exoplayer/external/text/dvb/DvbParser$PageComposition;

    move-result-object v5

    .line 259
    .local v5, "pageComposition":Landroidx/media2/exoplayer/external/text/dvb/DvbParser$PageComposition;
    iget v6, v5, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$PageComposition;->state:I

    if-eqz v6, :cond_8

    .line 260
    iput-object v5, p1, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;->pageComposition:Landroidx/media2/exoplayer/external/text/dvb/DvbParser$PageComposition;

    .line 261
    iget-object v6, p1, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    .line 262
    iget-object v6, p1, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;->cluts:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    .line 263
    iget-object v6, p1, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;->objects:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    goto :goto_3

    .line 264
    :cond_8
    if-eqz v4, :cond_9

    iget v6, v4, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$PageComposition;->version:I

    iget v7, v5, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$PageComposition;->version:I

    if-eq v6, v7, :cond_9

    .line 265
    iput-object v5, p1, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;->pageComposition:Landroidx/media2/exoplayer/external/text/dvb/DvbParser$PageComposition;

    goto :goto_3

    .line 264
    :cond_9
    nop

    .line 267
    .end local v4    # "current":Landroidx/media2/exoplayer/external/text/dvb/DvbParser$PageComposition;
    .end local v5    # "pageComposition":Landroidx/media2/exoplayer/external/text/dvb/DvbParser$PageComposition;
    :goto_3
    goto :goto_4

    .line 256
    :cond_a
    nop

    .line 303
    :goto_4
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->getBytePosition()I

    move-result v4

    sub-int v4, v3, v4

    invoke-virtual {p0, v4}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBytes(I)V

    .line 304
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public decode([BI)Ljava/util/List;
    .locals 36
    .param p1, "data"    # [B
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/text/Cue;",
            ">;"
        }
    .end annotation

    .line 134
    move-object/from16 v0, p0

    new-instance v1, Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v1, v2, v3}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;-><init>([BI)V

    .line 135
    .local v1, "dataBitArray":Landroidx/media2/exoplayer/external/util/ParsableBitArray;
    :goto_0
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitsLeft()I

    move-result v4

    const/16 v5, 0x30

    if-lt v4, v5, :cond_1

    const/16 v4, 0x8

    .line 136
    invoke-virtual {v1, v4}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v4

    const/16 v5, 0xf

    if-ne v4, v5, :cond_0

    .line 137
    iget-object v4, v0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->subtitleService:Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;

    invoke-static {v1, v4}, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->parseSubtitlingSegment(Landroidx/media2/exoplayer/external/util/ParsableBitArray;Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;)V

    goto :goto_0

    .line 136
    :cond_0
    goto :goto_1

    .line 135
    :cond_1
    nop

    .line 140
    :goto_1
    iget-object v4, v0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->subtitleService:Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;->pageComposition:Landroidx/media2/exoplayer/external/text/dvb/DvbParser$PageComposition;

    if-nez v4, :cond_2

    .line 141
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    return-object v4

    .line 145
    :cond_2
    iget-object v4, v0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->subtitleService:Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;->displayDefinition:Landroidx/media2/exoplayer/external/text/dvb/DvbParser$DisplayDefinition;

    if-eqz v4, :cond_3

    .line 146
    iget-object v4, v0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->subtitleService:Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;->displayDefinition:Landroidx/media2/exoplayer/external/text/dvb/DvbParser$DisplayDefinition;

    goto :goto_2

    :cond_3
    iget-object v4, v0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->defaultDisplayDefinition:Landroidx/media2/exoplayer/external/text/dvb/DvbParser$DisplayDefinition;

    .line 147
    .local v4, "displayDefinition":Landroidx/media2/exoplayer/external/text/dvb/DvbParser$DisplayDefinition;
    :goto_2
    iget-object v5, v0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_5

    iget v5, v4, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$DisplayDefinition;->width:I

    add-int/lit8 v5, v5, 0x1

    iget-object v6, v0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ne v5, v6, :cond_5

    iget v5, v4, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$DisplayDefinition;->height:I

    add-int/lit8 v5, v5, 0x1

    iget-object v6, v0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    .line 148
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-eq v5, v6, :cond_4

    goto :goto_3

    :cond_4
    goto :goto_4

    .line 147
    :cond_5
    nop

    .line 149
    :goto_3
    iget v5, v4, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$DisplayDefinition;->width:I

    add-int/lit8 v5, v5, 0x1

    iget v6, v4, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$DisplayDefinition;->height:I

    add-int/lit8 v6, v6, 0x1

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    .line 151
    iget-object v5, v0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    iget-object v6, v0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 155
    :goto_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v5, "cues":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/text/Cue;>;"
    iget-object v6, v0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->subtitleService:Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;

    iget-object v6, v6, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;->pageComposition:Landroidx/media2/exoplayer/external/text/dvb/DvbParser$PageComposition;

    iget-object v6, v6, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$PageComposition;->regions:Landroid/util/SparseArray;

    .line 157
    .local v6, "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media2/exoplayer/external/text/dvb/DvbParser$PageRegion;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_5
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_f

    .line 159
    iget-object v8, v0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    .line 160
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$PageRegion;

    .line 161
    .local v8, "pageRegion":Landroidx/media2/exoplayer/external/text/dvb/DvbParser$PageRegion;
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 162
    .local v9, "regionId":I
    iget-object v10, v0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->subtitleService:Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;

    iget-object v10, v10, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionComposition;

    .line 165
    .local v10, "regionComposition":Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionComposition;
    iget v11, v8, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$PageRegion;->horizontalAddress:I

    iget v12, v4, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$DisplayDefinition;->horizontalPositionMinimum:I

    add-int/2addr v11, v12

    .line 167
    .local v11, "baseHorizontalAddress":I
    iget v12, v8, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$PageRegion;->verticalAddress:I

    iget v13, v4, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$DisplayDefinition;->verticalPositionMinimum:I

    add-int/2addr v12, v13

    .line 169
    .local v12, "baseVerticalAddress":I
    iget v13, v10, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionComposition;->width:I

    add-int/2addr v13, v11

    iget v14, v4, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$DisplayDefinition;->horizontalPositionMaximum:I

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 171
    .local v13, "clipRight":I
    iget v14, v10, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionComposition;->height:I

    add-int/2addr v14, v12

    iget v15, v4, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$DisplayDefinition;->verticalPositionMaximum:I

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 173
    .local v14, "clipBottom":I
    iget-object v15, v0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v15, v11, v12, v13, v14}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 174
    iget-object v15, v0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->subtitleService:Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;

    iget-object v15, v15, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;->cluts:Landroid/util/SparseArray;

    move-object/from16 v16, v1

    .end local v1    # "dataBitArray":Landroidx/media2/exoplayer/external/util/ParsableBitArray;
    .local v16, "dataBitArray":Landroidx/media2/exoplayer/external/util/ParsableBitArray;
    iget v1, v10, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionComposition;->clutId:I

    invoke-virtual {v15, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ClutDefinition;

    .line 175
    .local v1, "clutDefinition":Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ClutDefinition;
    if-nez v1, :cond_7

    .line 176
    iget-object v15, v0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->subtitleService:Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;

    iget-object v15, v15, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;->ancillaryCluts:Landroid/util/SparseArray;

    move-object/from16 v17, v1

    .end local v1    # "clutDefinition":Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ClutDefinition;
    .local v17, "clutDefinition":Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ClutDefinition;
    iget v1, v10, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionComposition;->clutId:I

    invoke-virtual {v15, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ClutDefinition;

    .line 177
    .end local v17    # "clutDefinition":Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ClutDefinition;
    .restart local v1    # "clutDefinition":Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ClutDefinition;
    if-nez v1, :cond_6

    .line 178
    iget-object v1, v0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->defaultClutDefinition:Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ClutDefinition;

    goto :goto_6

    .line 177
    :cond_6
    goto :goto_6

    .line 175
    :cond_7
    move-object/from16 v17, v1

    .line 182
    :goto_6
    iget-object v15, v10, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionComposition;->regionObjects:Landroid/util/SparseArray;

    .line 183
    .local v15, "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionObject;>;"
    const/16 v17, 0x0

    move/from16 v2, v17

    .local v2, "j":I
    :goto_7
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_b

    .line 184
    invoke-virtual {v15, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 185
    .local v3, "objectId":I
    invoke-virtual {v15, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v24, v6

    .end local v6    # "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media2/exoplayer/external/text/dvb/DvbParser$PageRegion;>;"
    .local v24, "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media2/exoplayer/external/text/dvb/DvbParser$PageRegion;>;"
    move-object/from16 v6, v17

    check-cast v6, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionObject;

    .line 186
    .local v6, "regionObject":Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionObject;
    move-object/from16 v25, v8

    .end local v8    # "pageRegion":Landroidx/media2/exoplayer/external/text/dvb/DvbParser$PageRegion;
    .local v25, "pageRegion":Landroidx/media2/exoplayer/external/text/dvb/DvbParser$PageRegion;
    iget-object v8, v0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->subtitleService:Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;

    iget-object v8, v8, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;->objects:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ObjectData;

    .line 187
    .local v8, "objectData":Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ObjectData;
    if-nez v8, :cond_8

    .line 188
    move-object/from16 v17, v8

    .end local v8    # "objectData":Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ObjectData;
    .local v17, "objectData":Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ObjectData;
    iget-object v8, v0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->subtitleService:Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;

    iget-object v8, v8, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;->ancillaryObjects:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ObjectData;

    goto :goto_8

    .line 187
    .end local v17    # "objectData":Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ObjectData;
    .restart local v8    # "objectData":Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ObjectData;
    :cond_8
    move-object/from16 v17, v8

    .line 190
    :goto_8
    if-eqz v8, :cond_a

    .line 191
    move/from16 v26, v3

    .end local v3    # "objectId":I
    .local v26, "objectId":I
    iget-boolean v3, v8, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ObjectData;->nonModifyingColorFlag:Z

    if-eqz v3, :cond_9

    const/4 v3, 0x0

    goto :goto_9

    :cond_9
    iget-object v3, v0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->defaultPaint:Landroid/graphics/Paint;

    :goto_9
    move-object/from16 v22, v3

    .line 192
    .local v22, "paint":Landroid/graphics/Paint;
    iget v3, v10, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionComposition;->depth:I

    move/from16 v27, v9

    .end local v9    # "regionId":I
    .local v27, "regionId":I
    iget v9, v6, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionObject;->horizontalPosition:I

    add-int v20, v11, v9

    iget v9, v6, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionObject;->verticalPosition:I

    add-int v21, v12, v9

    iget-object v9, v0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v17, v8

    move-object/from16 v18, v1

    move/from16 v19, v3

    move-object/from16 v23, v9

    invoke-static/range {v17 .. v23}, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->paintPixelDataSubBlocks(Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ObjectData;Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ClutDefinition;IIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_a

    .line 190
    .end local v22    # "paint":Landroid/graphics/Paint;
    .end local v26    # "objectId":I
    .end local v27    # "regionId":I
    .restart local v3    # "objectId":I
    .restart local v9    # "regionId":I
    :cond_a
    move/from16 v26, v3

    move/from16 v27, v9

    .line 183
    .end local v3    # "objectId":I
    .end local v6    # "regionObject":Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionObject;
    .end local v8    # "objectData":Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ObjectData;
    .end local v9    # "regionId":I
    .restart local v27    # "regionId":I
    :goto_a
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v6, v24

    move-object/from16 v8, v25

    move/from16 v9, v27

    move/from16 v3, p2

    goto :goto_7

    .end local v24    # "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media2/exoplayer/external/text/dvb/DvbParser$PageRegion;>;"
    .end local v25    # "pageRegion":Landroidx/media2/exoplayer/external/text/dvb/DvbParser$PageRegion;
    .end local v27    # "regionId":I
    .local v6, "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media2/exoplayer/external/text/dvb/DvbParser$PageRegion;>;"
    .local v8, "pageRegion":Landroidx/media2/exoplayer/external/text/dvb/DvbParser$PageRegion;
    .restart local v9    # "regionId":I
    :cond_b
    move-object/from16 v24, v6

    move-object/from16 v25, v8

    move/from16 v27, v9

    .line 198
    .end local v2    # "j":I
    .end local v6    # "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media2/exoplayer/external/text/dvb/DvbParser$PageRegion;>;"
    .end local v8    # "pageRegion":Landroidx/media2/exoplayer/external/text/dvb/DvbParser$PageRegion;
    .end local v9    # "regionId":I
    .restart local v24    # "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media2/exoplayer/external/text/dvb/DvbParser$PageRegion;>;"
    .restart local v25    # "pageRegion":Landroidx/media2/exoplayer/external/text/dvb/DvbParser$PageRegion;
    .restart local v27    # "regionId":I
    iget-boolean v2, v10, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionComposition;->fillFlag:Z

    if-eqz v2, :cond_e

    .line 200
    iget v2, v10, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionComposition;->depth:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_c

    .line 201
    iget-object v2, v1, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ClutDefinition;->clutEntries8Bit:[I

    iget v3, v10, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionComposition;->pixelCode8Bit:I

    aget v2, v2, v3

    goto :goto_b

    .line 202
    :cond_c
    iget v2, v10, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionComposition;->depth:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_d

    .line 203
    iget-object v2, v1, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ClutDefinition;->clutEntries4Bit:[I

    iget v3, v10, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionComposition;->pixelCode4Bit:I

    aget v2, v2, v3

    goto :goto_b

    .line 205
    :cond_d
    iget-object v2, v1, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ClutDefinition;->clutEntries2Bit:[I

    iget v3, v10, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionComposition;->pixelCode2Bit:I

    aget v2, v2, v3

    .line 207
    .local v2, "color":I
    :goto_b
    iget-object v3, v0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->fillRegionPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 208
    iget-object v3, v0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    int-to-float v6, v11

    int-to-float v8, v12

    iget v9, v10, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionComposition;->width:I

    add-int/2addr v9, v11

    int-to-float v9, v9

    move-object/from16 v23, v1

    .end local v1    # "clutDefinition":Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ClutDefinition;
    .local v23, "clutDefinition":Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ClutDefinition;
    iget v1, v10, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionComposition;->height:I

    add-int/2addr v1, v12

    int-to-float v1, v1

    move/from16 v26, v2

    .end local v2    # "color":I
    .local v26, "color":I
    iget-object v2, v0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->fillRegionPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v3

    move/from16 v18, v6

    move/from16 v19, v8

    move/from16 v20, v9

    move/from16 v21, v1

    move-object/from16 v22, v2

    invoke-virtual/range {v17 .. v22}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_c

    .line 198
    .end local v23    # "clutDefinition":Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ClutDefinition;
    .end local v26    # "color":I
    .restart local v1    # "clutDefinition":Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ClutDefinition;
    :cond_e
    move-object/from16 v23, v1

    .line 214
    .end local v1    # "clutDefinition":Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ClutDefinition;
    .restart local v23    # "clutDefinition":Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ClutDefinition;
    :goto_c
    iget-object v1, v0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    iget v2, v10, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionComposition;->width:I

    iget v3, v10, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionComposition;->height:I

    invoke-static {v1, v11, v12, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 216
    .local v1, "cueBitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroidx/media2/exoplayer/external/text/Cue;

    int-to-float v3, v11

    iget v6, v4, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$DisplayDefinition;->width:I

    int-to-float v6, v6

    div-float v30, v3, v6

    const/16 v31, 0x0

    int-to-float v3, v12

    iget v6, v4, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$DisplayDefinition;->height:I

    int-to-float v6, v6

    div-float v32, v3, v6

    const/16 v33, 0x0

    iget v3, v10, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionComposition;->width:I

    int-to-float v3, v3

    iget v6, v4, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$DisplayDefinition;->width:I

    int-to-float v6, v6

    div-float v34, v3, v6

    iget v3, v10, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionComposition;->height:I

    int-to-float v3, v3

    iget v6, v4, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$DisplayDefinition;->height:I

    int-to-float v6, v6

    div-float v35, v3, v6

    move-object/from16 v28, v2

    move-object/from16 v29, v1

    invoke-direct/range {v28 .. v35}, Landroidx/media2/exoplayer/external/text/Cue;-><init>(Landroid/graphics/Bitmap;FIFIFF)V

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object v2, v0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    const/4 v3, 0x0

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 223
    iget-object v2, v0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 157
    .end local v1    # "cueBitmap":Landroid/graphics/Bitmap;
    .end local v10    # "regionComposition":Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionComposition;
    .end local v11    # "baseHorizontalAddress":I
    .end local v12    # "baseVerticalAddress":I
    .end local v13    # "clipRight":I
    .end local v14    # "clipBottom":I
    .end local v15    # "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionObject;>;"
    .end local v23    # "clutDefinition":Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ClutDefinition;
    .end local v25    # "pageRegion":Landroidx/media2/exoplayer/external/text/dvb/DvbParser$PageRegion;
    .end local v27    # "regionId":I
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, v16

    move-object/from16 v6, v24

    move-object/from16 v2, p1

    move/from16 v3, p2

    goto/16 :goto_5

    .end local v16    # "dataBitArray":Landroidx/media2/exoplayer/external/util/ParsableBitArray;
    .end local v24    # "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media2/exoplayer/external/text/dvb/DvbParser$PageRegion;>;"
    .local v1, "dataBitArray":Landroidx/media2/exoplayer/external/util/ParsableBitArray;
    .restart local v6    # "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media2/exoplayer/external/text/dvb/DvbParser$PageRegion;>;"
    :cond_f
    move-object/from16 v16, v1

    move-object/from16 v24, v6

    .line 226
    .end local v1    # "dataBitArray":Landroidx/media2/exoplayer/external/util/ParsableBitArray;
    .end local v6    # "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media2/exoplayer/external/text/dvb/DvbParser$PageRegion;>;"
    .end local v7    # "i":I
    .restart local v16    # "dataBitArray":Landroidx/media2/exoplayer/external/util/ParsableBitArray;
    .restart local v24    # "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media2/exoplayer/external/text/dvb/DvbParser$PageRegion;>;"
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public reset()V
    .locals 1

    .line 122
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->subtitleService:Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;->reset()V

    .line 123
    return-void
.end method
