.class Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;
.super Ljava/lang/Object;
.source "Cea608CCParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/Cea608CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CCLineBuilder"
.end annotation


# instance fields
.field private final mDisplayChars:Ljava/lang/StringBuilder;

.field private final mMidRowStyles:[Landroidx/media2/widget/Cea608CCParser$StyleCode;

.field private final mPACStyles:[Landroidx/media2/widget/Cea608CCParser$StyleCode;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    .line 445
    iget-object v0, p0, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    new-array v0, v0, [Landroidx/media2/widget/Cea608CCParser$StyleCode;

    iput-object v0, p0, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->mMidRowStyles:[Landroidx/media2/widget/Cea608CCParser$StyleCode;

    .line 446
    iget-object v0, p0, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    new-array v0, v0, [Landroidx/media2/widget/Cea608CCParser$StyleCode;

    iput-object v0, p0, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->mPACStyles:[Landroidx/media2/widget/Cea608CCParser$StyleCode;

    .line 447
    return-void
.end method


# virtual methods
.method applyStyleSpan(Landroid/text/SpannableStringBuilder;Landroidx/media2/widget/Cea608CCParser$StyleCode;II)V
    .locals 3
    .param p1, "styledText"    # Landroid/text/SpannableStringBuilder;
    .param p2, "s"    # Landroidx/media2/widget/Cea608CCParser$StyleCode;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .line 474
    invoke-virtual {p2}, Landroidx/media2/widget/Cea608CCParser$StyleCode;->isItalics()Z

    move-result v0

    const/16 v1, 0x21

    if-eqz v0, :cond_0

    .line 475
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p1, v0, p3, p4, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 474
    :cond_0
    nop

    .line 479
    :goto_0
    invoke-virtual {p2}, Landroidx/media2/widget/Cea608CCParser$StyleCode;->isUnderline()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 480
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p1, v0, p3, p4, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 479
    :cond_1
    nop

    .line 484
    :goto_1
    return-void
.end method

.method charAt(I)C
    .locals 1
    .param p1, "index"    # I

    .line 464
    iget-object v0, p0, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    return v0
.end method

.method getStyledText(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Landroid/text/SpannableStringBuilder;
    .locals 10
    .param p1, "captionStyle"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 487
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 488
    .local v0, "styledText":Landroid/text/SpannableStringBuilder;
    const/4 v1, -0x1

    .local v1, "start":I
    const/4 v2, 0x0

    .line 489
    .local v2, "next":I
    const/4 v3, -0x1

    .line 490
    .local v3, "styleStart":I
    const/4 v4, 0x0

    .line 491
    .local v4, "curStyle":Landroidx/media2/widget/Cea608CCParser$StyleCode;
    :goto_0
    iget-object v5, p0, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-ge v2, v5, :cond_b

    .line 492
    const/4 v5, 0x0

    .line 493
    .local v5, "newStyle":Landroidx/media2/widget/Cea608CCParser$StyleCode;
    iget-object v6, p0, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->mMidRowStyles:[Landroidx/media2/widget/Cea608CCParser$StyleCode;

    aget-object v7, v6, v2

    if-eqz v7, :cond_0

    .line 495
    aget-object v5, v6, v2

    goto :goto_1

    .line 496
    :cond_0
    iget-object v6, p0, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->mPACStyles:[Landroidx/media2/widget/Cea608CCParser$StyleCode;

    aget-object v6, v6, v2

    if-eqz v6, :cond_2

    if-ltz v3, :cond_1

    if-gez v1, :cond_2

    .line 500
    :cond_1
    iget-object v6, p0, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->mPACStyles:[Landroidx/media2/widget/Cea608CCParser$StyleCode;

    aget-object v5, v6, v2

    goto :goto_1

    .line 496
    :cond_2
    nop

    .line 502
    :goto_1
    if-eqz v5, :cond_4

    .line 503
    move-object v4, v5

    .line 504
    if-ltz v3, :cond_3

    if-ltz v1, :cond_3

    .line 505
    invoke-virtual {p0, v0, v5, v3, v2}, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->applyStyleSpan(Landroid/text/SpannableStringBuilder;Landroidx/media2/widget/Cea608CCParser$StyleCode;II)V

    goto :goto_2

    .line 504
    :cond_3
    nop

    .line 507
    :goto_2
    move v3, v2

    goto :goto_3

    .line 502
    :cond_4
    nop

    .line 510
    :goto_3
    iget-object v6, p0, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    const/16 v7, 0xa0

    if-eq v6, v7, :cond_6

    .line 511
    if-gez v1, :cond_5

    .line 512
    move v1, v2

    goto :goto_7

    .line 511
    :cond_5
    goto :goto_7

    .line 514
    :cond_6
    if-ltz v1, :cond_a

    .line 515
    iget-object v6, p0, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_7

    move v6, v1

    goto :goto_4

    :cond_7
    add-int/lit8 v6, v1, -0x1

    .line 516
    .local v6, "expandedStart":I
    :goto_4
    iget-object v8, p0, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    add-int/lit8 v9, v2, -0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v7, :cond_8

    move v7, v2

    goto :goto_5

    :cond_8
    add-int/lit8 v7, v2, 0x1

    .line 517
    .local v7, "expandedEnd":I
    :goto_5
    new-instance v8, Landroidx/media2/widget/Cea608CCParser$MutableBackgroundColorSpan;

    iget v9, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    invoke-direct {v8, v9}, Landroidx/media2/widget/Cea608CCParser$MutableBackgroundColorSpan;-><init>(I)V

    const/16 v9, 0x21

    invoke-virtual {v0, v8, v6, v7, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 521
    if-ltz v3, :cond_9

    .line 522
    invoke-virtual {p0, v0, v4, v3, v7}, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->applyStyleSpan(Landroid/text/SpannableStringBuilder;Landroidx/media2/widget/Cea608CCParser$StyleCode;II)V

    goto :goto_6

    .line 521
    :cond_9
    nop

    .line 524
    :goto_6
    const/4 v1, -0x1

    goto :goto_7

    .line 514
    .end local v6    # "expandedStart":I
    .end local v7    # "expandedEnd":I
    :cond_a
    nop

    .line 526
    :goto_7
    nop

    .end local v5    # "newStyle":Landroidx/media2/widget/Cea608CCParser$StyleCode;
    add-int/lit8 v2, v2, 0x1

    .line 527
    goto :goto_0

    .line 529
    :cond_b
    return-object v0
.end method

.method length()I
    .locals 1

    .line 468
    iget-object v0, p0, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method

.method setCharAt(IC)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "ch"    # C

    .line 450
    iget-object v0, p0, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 451
    iget-object v0, p0, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->mMidRowStyles:[Landroidx/media2/widget/Cea608CCParser$StyleCode;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 452
    return-void
.end method

.method setMidRowAt(ILandroidx/media2/widget/Cea608CCParser$StyleCode;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "m"    # Landroidx/media2/widget/Cea608CCParser$StyleCode;

    .line 455
    iget-object v0, p0, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, p1, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 456
    iget-object v0, p0, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->mMidRowStyles:[Landroidx/media2/widget/Cea608CCParser$StyleCode;

    aput-object p2, v0, p1

    .line 457
    return-void
.end method

.method setPACAt(ILandroidx/media2/widget/Cea608CCParser$PAC;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "pac"    # Landroidx/media2/widget/Cea608CCParser$PAC;

    .line 460
    iget-object v0, p0, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->mPACStyles:[Landroidx/media2/widget/Cea608CCParser$StyleCode;

    aput-object p2, v0, p1

    .line 461
    return-void
.end method
