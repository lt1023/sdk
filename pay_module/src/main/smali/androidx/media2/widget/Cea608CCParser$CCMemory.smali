.class Landroidx/media2/widget/Cea608CCParser$CCMemory;
.super Ljava/lang/Object;
.source "Cea608CCParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/Cea608CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CCMemory"
.end annotation


# instance fields
.field private final mBlankLine:Ljava/lang/String;

.field private mCol:I

.field private final mLines:[Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;

.field private mRow:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 538
    const/16 v0, 0x11

    new-array v0, v0, [Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;

    iput-object v0, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mLines:[Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;

    .line 543
    const/16 v0, 0x22

    new-array v0, v0, [C

    .line 544
    .local v0, "blank":[C
    const/16 v1, 0xa0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 545
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    iput-object v1, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mBlankLine:Ljava/lang/String;

    .line 546
    return-void
.end method

.method private static clamp(III)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .line 642
    if-ge p0, p1, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    if-le p0, p2, :cond_1

    move v0, p2

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    return v0
.end method

.method private getLineBuffer(I)Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;
    .locals 3
    .param p1, "row"    # I

    .line 692
    iget-object v0, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mLines:[Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    .line 693
    new-instance v1, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;

    iget-object v2, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mBlankLine:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, p1

    goto :goto_0

    .line 692
    :cond_0
    nop

    .line 695
    :goto_0
    iget-object v0, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mLines:[Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private moveCursorByCol(I)V
    .locals 3
    .param p1, "col"    # I

    .line 655
    iget v0, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mCol:I

    add-int/2addr v0, p1

    const/4 v1, 0x1

    const/16 v2, 0x20

    invoke-static {v0, v1, v2}, Landroidx/media2/widget/Cea608CCParser$CCMemory;->clamp(III)I

    move-result v0

    iput v0, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mCol:I

    .line 656
    return-void
.end method

.method private moveCursorTo(II)V
    .locals 2
    .param p1, "row"    # I
    .param p2, "col"    # I

    .line 646
    const/4 v0, 0x1

    const/16 v1, 0xf

    invoke-static {p1, v0, v1}, Landroidx/media2/widget/Cea608CCParser$CCMemory;->clamp(III)I

    move-result v1

    iput v1, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mRow:I

    .line 647
    const/16 v1, 0x20

    invoke-static {p2, v0, v1}, Landroidx/media2/widget/Cea608CCParser$CCMemory;->clamp(III)I

    move-result v0

    iput v0, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mCol:I

    .line 648
    return-void
.end method

.method private moveCursorToRow(I)V
    .locals 2
    .param p1, "row"    # I

    .line 651
    const/4 v0, 0x1

    const/16 v1, 0xf

    invoke-static {p1, v0, v1}, Landroidx/media2/widget/Cea608CCParser$CCMemory;->clamp(III)I

    move-result v0

    iput v0, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mRow:I

    .line 652
    return-void
.end method


# virtual methods
.method bs()V
    .locals 3

    .line 576
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroidx/media2/widget/Cea608CCParser$CCMemory;->moveCursorByCol(I)V

    .line 577
    iget-object v0, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mLines:[Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;

    iget v1, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mRow:I

    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    .line 578
    aget-object v0, v0, v1

    iget v1, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mCol:I

    const/16 v2, 0xa0

    invoke-virtual {v0, v1, v2}, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->setCharAt(IC)V

    .line 579
    iget v0, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mCol:I

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    .line 583
    iget-object v0, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mLines:[Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;

    iget v1, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mRow:I

    aget-object v0, v0, v1

    const/16 v1, 0x20

    invoke-virtual {v0, v1, v2}, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->setCharAt(IC)V

    goto :goto_0

    .line 579
    :cond_0
    goto :goto_0

    .line 577
    :cond_1
    nop

    .line 586
    :goto_0
    return-void
.end method

.method cr()V
    .locals 2

    .line 589
    iget v0, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mRow:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-direct {p0, v0, v1}, Landroidx/media2/widget/Cea608CCParser$CCMemory;->moveCursorTo(II)V

    .line 590
    return-void
.end method

.method der()V
    .locals 5

    .line 558
    iget-object v0, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mLines:[Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;

    iget v1, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mRow:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    .line 559
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mCol:I

    if-ge v0, v1, :cond_2

    .line 560
    iget-object v1, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mLines:[Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;

    iget v2, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mRow:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0xa0

    if-eq v1, v2, :cond_1

    .line 561
    iget v1, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mCol:I

    .local v1, "j":I
    :goto_1
    iget-object v3, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mLines:[Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;

    iget v4, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mRow:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 562
    iget-object v3, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mLines:[Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;

    aget-object v3, v3, v1

    invoke-virtual {v3, v1, v2}, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->setCharAt(IC)V

    .line 561
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 564
    .end local v1    # "j":I
    :cond_0
    return-void

    .line 559
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 567
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mLines:[Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;

    iget v1, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mRow:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    goto :goto_2

    .line 558
    :cond_3
    nop

    .line 569
    :goto_2
    return-void
.end method

.method erase()V
    .locals 3

    .line 550
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mLines:[Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 551
    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 550
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 553
    .end local v0    # "i":I
    :cond_0
    const/16 v0, 0xf

    iput v0, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mRow:I

    .line 554
    const/4 v0, 0x1

    iput v0, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mCol:I

    .line 555
    return-void
.end method

.method getStyledText(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)[Landroid/text/SpannableStringBuilder;
    .locals 5
    .param p1, "captionStyle"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 634
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 635
    .local v0, "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/SpannableStringBuilder;>;"
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-gt v2, v1, :cond_1

    .line 636
    iget-object v3, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mLines:[Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;

    aget-object v4, v3, v2

    if-eqz v4, :cond_0

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->getStyledText(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 638
    .end local v2    # "i":I
    :cond_1
    new-array v1, v1, [Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/SpannableStringBuilder;

    return-object v1
.end method

.method moveBaselineTo(II)V
    .locals 5
    .param p1, "baseRow"    # I
    .param p2, "windowSize"    # I

    .line 659
    iget v0, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mRow:I

    if-ne v0, p1, :cond_0

    .line 660
    return-void

    .line 662
    :cond_0
    move v0, p2

    .line 663
    .local v0, "actualWindowSize":I
    if-ge p1, v0, :cond_1

    .line 664
    move v0, p1

    goto :goto_0

    .line 663
    :cond_1
    nop

    .line 666
    :goto_0
    iget v1, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mRow:I

    if-ge v1, v0, :cond_2

    .line 667
    iget v0, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mRow:I

    goto :goto_1

    .line 666
    :cond_2
    nop

    .line 671
    :goto_1
    iget v1, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mRow:I

    if-ge p1, v1, :cond_4

    .line 673
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_3

    .line 674
    iget-object v2, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mLines:[Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;

    sub-int v3, p1, v1

    iget v4, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mRow:I

    sub-int/2addr v4, v1

    aget-object v4, v2, v4

    aput-object v4, v2, v3

    .line 673
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_3
    goto :goto_4

    .line 678
    .end local v1    # "i":I
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    if-ge v1, v0, :cond_5

    .line 679
    iget-object v2, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mLines:[Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;

    sub-int v3, p1, v1

    iget v4, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mRow:I

    sub-int/2addr v4, v1

    aget-object v4, v2, v4

    aput-object v4, v2, v3

    .line 678
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 683
    :cond_5
    :goto_4
    const/4 v1, 0x0

    :goto_5
    sub-int v2, p1, p2

    const/4 v3, 0x0

    if-gt v1, v2, :cond_6

    .line 684
    iget-object v2, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mLines:[Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;

    aput-object v3, v2, v1

    .line 683
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 686
    :cond_6
    add-int/lit8 v1, p1, 0x1

    :goto_6
    iget-object v2, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mLines:[Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;

    array-length v4, v2

    if-ge v1, v4, :cond_7

    .line 687
    aput-object v3, v2, v1

    .line 686
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 689
    :cond_7
    return-void
.end method

.method rollUp(I)V
    .locals 6
    .param p1, "windowSize"    # I

    .line 594
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mRow:I

    sub-int v2, v1, p1

    const/4 v3, 0x0

    if-gt v0, v2, :cond_0

    .line 595
    iget-object v1, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mLines:[Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;

    aput-object v3, v1, v0

    .line 594
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 597
    :cond_0
    sub-int/2addr v1, p1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 598
    .local v1, "startRow":I
    if-ge v1, v2, :cond_1

    .line 599
    const/4 v1, 0x1

    goto :goto_1

    .line 598
    :cond_1
    nop

    .line 601
    :goto_1
    move v0, v1

    :goto_2
    iget v4, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mRow:I

    if-ge v0, v4, :cond_2

    .line 602
    iget-object v4, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mLines:[Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;

    add-int/lit8 v5, v0, 0x1

    aget-object v5, v4, v5

    aput-object v5, v4, v0

    .line 601
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 604
    :cond_2
    iget v0, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mRow:I

    :goto_3
    iget-object v4, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mLines:[Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;

    array-length v5, v4

    if-ge v0, v5, :cond_3

    .line 606
    aput-object v3, v4, v0

    .line 604
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 609
    :cond_3
    iput v2, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mCol:I

    .line 610
    return-void
.end method

.method tab(I)V
    .locals 0
    .param p1, "tabs"    # I

    .line 572
    invoke-direct {p0, p1}, Landroidx/media2/widget/Cea608CCParser$CCMemory;->moveCursorByCol(I)V

    .line 573
    return-void
.end method

.method writeMidRowCode(Landroidx/media2/widget/Cea608CCParser$StyleCode;)V
    .locals 2
    .param p1, "m"    # Landroidx/media2/widget/Cea608CCParser$StyleCode;

    .line 620
    iget v0, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mRow:I

    invoke-direct {p0, v0}, Landroidx/media2/widget/Cea608CCParser$CCMemory;->getLineBuffer(I)Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mCol:I

    invoke-virtual {v0, v1, p1}, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->setMidRowAt(ILandroidx/media2/widget/Cea608CCParser$StyleCode;)V

    .line 621
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/media2/widget/Cea608CCParser$CCMemory;->moveCursorByCol(I)V

    .line 622
    return-void
.end method

.method writePAC(Landroidx/media2/widget/Cea608CCParser$PAC;)V
    .locals 2
    .param p1, "pac"    # Landroidx/media2/widget/Cea608CCParser$PAC;

    .line 625
    invoke-virtual {p1}, Landroidx/media2/widget/Cea608CCParser$PAC;->isIndentPAC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    invoke-virtual {p1}, Landroidx/media2/widget/Cea608CCParser$PAC;->getRow()I

    move-result v0

    invoke-virtual {p1}, Landroidx/media2/widget/Cea608CCParser$PAC;->getCol()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroidx/media2/widget/Cea608CCParser$CCMemory;->moveCursorTo(II)V

    goto :goto_0

    .line 628
    :cond_0
    invoke-virtual {p1}, Landroidx/media2/widget/Cea608CCParser$PAC;->getRow()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/media2/widget/Cea608CCParser$CCMemory;->moveCursorTo(II)V

    .line 630
    :goto_0
    iget v0, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mRow:I

    invoke-direct {p0, v0}, Landroidx/media2/widget/Cea608CCParser$CCMemory;->getLineBuffer(I)Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mCol:I

    invoke-virtual {v0, v1, p1}, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->setPACAt(ILandroidx/media2/widget/Cea608CCParser$PAC;)V

    .line 631
    return-void
.end method

.method writeText(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .line 613
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 614
    iget v1, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mRow:I

    invoke-direct {p0, v1}, Landroidx/media2/widget/Cea608CCParser$CCMemory;->getLineBuffer(I)Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mCol:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->setCharAt(IC)V

    .line 615
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroidx/media2/widget/Cea608CCParser$CCMemory;->moveCursorByCol(I)V

    .line 613
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 617
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
