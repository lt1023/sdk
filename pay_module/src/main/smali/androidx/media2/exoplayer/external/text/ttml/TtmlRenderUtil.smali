.class final Landroidx/media2/exoplayer/external/text/ttml/TtmlRenderUtil;
.super Ljava/lang/Object;
.source "TtmlRenderUtil.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyStylesToSpan(Landroid/text/SpannableStringBuilder;IILandroidx/media2/exoplayer/external/text/ttml/TtmlStyle;)V
    .locals 4
    .param p0, "builder"    # Landroid/text/SpannableStringBuilder;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "style"    # Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;

    .line 75
    invoke-virtual {p3}, Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;->getStyle()I

    move-result v0

    const/16 v1, 0x21

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 76
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-virtual {p3}, Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;->getStyle()I

    move-result v2

    invoke-direct {v0, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 75
    :cond_0
    nop

    .line 79
    :goto_0
    invoke-virtual {p3}, Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;->isLinethrough()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    new-instance v0, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v0}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 79
    :cond_1
    nop

    .line 82
    :goto_1
    invoke-virtual {p3}, Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;->isUnderline()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 82
    :cond_2
    nop

    .line 85
    :goto_2
    invoke-virtual {p3}, Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;->hasFontColor()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 86
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p3}, Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;->getFontColor()I

    move-result v2

    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    .line 85
    :cond_3
    nop

    .line 89
    :goto_3
    invoke-virtual {p3}, Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;->hasBackgroundColor()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 90
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {p3}, Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;->getBackgroundColor()I

    move-result v2

    invoke-direct {v0, v2}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4

    .line 89
    :cond_4
    nop

    .line 93
    :goto_4
    invoke-virtual {p3}, Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;->getFontFamily()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 94
    new-instance v0, Landroid/text/style/TypefaceSpan;

    invoke-virtual {p3}, Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;->getFontFamily()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_5

    .line 93
    :cond_5
    nop

    .line 97
    :goto_5
    invoke-virtual {p3}, Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;->getTextAlign()Landroid/text/Layout$Alignment;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 98
    new-instance v0, Landroid/text/style/AlignmentSpan$Standard;

    invoke-virtual {p3}, Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;->getTextAlign()Landroid/text/Layout$Alignment;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_6

    .line 97
    :cond_6
    nop

    .line 101
    :goto_6
    invoke-virtual {p3}, Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;->getFontSizeUnit()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_7

    .line 111
    :pswitch_0
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    invoke-virtual {p3}, Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;->getFontSize()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    invoke-direct {v0, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 113
    goto :goto_7

    .line 107
    :pswitch_1
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    invoke-virtual {p3}, Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;->getFontSize()F

    move-result v2

    invoke-direct {v0, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 109
    goto :goto_7

    .line 103
    :pswitch_2
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p3}, Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;->getFontSize()F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 105
    nop

    .line 118
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static applyTextElementSpacePolicy(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "in"    # Ljava/lang/String;

    .line 144
    const-string v0, "\r\n"

    const-string v1, "\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "out":Ljava/lang/String;
    const-string v1, " *\n *"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    const-string v1, "\n"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    const-string v1, "[ \t\\x0B\u000c\r]+"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    return-object v0
.end method

.method static endParagraph(Landroid/text/SpannableStringBuilder;)V
    .locals 3
    .param p0, "builder"    # Landroid/text/SpannableStringBuilder;

    .line 127
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 128
    .local v0, "position":I
    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    .line 129
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 128
    :cond_0
    nop

    .line 131
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    .line 132
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 131
    :cond_1
    nop

    .line 134
    :goto_1
    return-void
.end method

.method public static resolveStyle(Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/util/Map;)Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;
    .locals 5
    .param p0, "style"    # Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;
    .param p1, "styleIds"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;",
            ">;)",
            "Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;"
        }
    .end annotation

    .line 45
    .local p2, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;>;"
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 47
    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_0
    nop

    .line 48
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_1

    array-length v2, p1

    if-ne v2, v1, :cond_1

    .line 50
    aget-object v0, p1, v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;

    return-object v0

    .line 48
    :cond_1
    nop

    .line 51
    if-nez p0, :cond_3

    array-length v2, p1

    if-le v2, v1, :cond_3

    .line 53
    new-instance v1, Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;-><init>()V

    .line 54
    .local v1, "chainedStyle":Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;
    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, p1, v0

    .line 55
    .local v3, "id":Ljava/lang/String;
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;

    invoke-virtual {v1, v4}, Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;->chain(Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;)Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;

    .line 54
    .end local v3    # "id":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_2
    return-object v1

    .line 51
    .end local v1    # "chainedStyle":Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;
    :cond_3
    nop

    .line 58
    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    array-length v2, p1

    if-ne v2, v1, :cond_4

    .line 60
    aget-object v0, p1, v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;->chain(Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;)Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;

    move-result-object v0

    return-object v0

    .line 58
    :cond_4
    nop

    .line 61
    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    array-length v2, p1

    if-le v2, v1, :cond_6

    .line 63
    array-length v1, p1

    :goto_1
    if-ge v0, v1, :cond_5

    aget-object v2, p1, v0

    .line 64
    .local v2, "id":Ljava/lang/String;
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;

    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;->chain(Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;)Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;

    .line 63
    .end local v2    # "id":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 66
    :cond_5
    return-object p0

    .line 61
    :cond_6
    nop

    .line 69
    return-object p0
.end method
