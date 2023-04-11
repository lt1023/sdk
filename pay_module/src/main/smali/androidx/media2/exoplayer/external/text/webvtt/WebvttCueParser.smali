.class public final Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser;
.super Ljava/lang/Object;
.source "WebvttCueParser.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StartTag;,
        Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StyleMatch;
    }
.end annotation


# static fields
.field private static final CHAR_AMPERSAND:C = '&'

.field private static final CHAR_GREATER_THAN:C = '>'

.field private static final CHAR_LESS_THAN:C = '<'

.field private static final CHAR_SEMI_COLON:C = ';'

.field private static final CHAR_SLASH:C = '/'

.field private static final CHAR_SPACE:C = ' '

.field public static final CUE_HEADER_PATTERN:Ljava/util/regex/Pattern;

.field private static final CUE_SETTING_PATTERN:Ljava/util/regex/Pattern;

.field private static final ENTITY_AMPERSAND:Ljava/lang/String; = "amp"

.field private static final ENTITY_GREATER_THAN:Ljava/lang/String; = "gt"

.field private static final ENTITY_LESS_THAN:Ljava/lang/String; = "lt"

.field private static final ENTITY_NON_BREAK_SPACE:Ljava/lang/String; = "nbsp"

.field private static final STYLE_BOLD:I = 0x1

.field private static final STYLE_ITALIC:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WebvttCueParser"

.field private static final TAG_BOLD:Ljava/lang/String; = "b"

.field private static final TAG_CLASS:Ljava/lang/String; = "c"

.field private static final TAG_ITALIC:Ljava/lang/String; = "i"

.field private static final TAG_LANG:Ljava/lang/String; = "lang"

.field private static final TAG_UNDERLINE:Ljava/lang/String; = "u"

.field private static final TAG_VOICE:Ljava/lang/String; = "v"


# instance fields
.field private final textBuilder:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-string v0, "^(\\S+)\\s+-->\\s+(\\S+)(.*)?$"

    .line 58
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser;->CUE_HEADER_PATTERN:Ljava/util/regex/Pattern;

    .line 60
    const-string v0, "(\\S+?):(\\S+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser;->CUE_SETTING_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser;->textBuilder:Ljava/lang/StringBuilder;

    .line 90
    return-void
.end method

.method private static applyEntity(Ljava/lang/String;Landroid/text/SpannableStringBuilder;)V
    .locals 3
    .param p0, "entity"    # Ljava/lang/String;
    .param p1, "spannedText"    # Landroid/text/SpannableStringBuilder;

    .line 340
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0xced

    if-eq v0, v1, :cond_4

    const/16 v1, 0xd88

    if-eq v0, v1, :cond_3

    const v1, 0x179c4

    if-eq v0, v1, :cond_2

    const v1, 0x337f11

    if-eq v0, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v0, "nbsp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const-string v0, "amp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :cond_3
    const-string v0, "lt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const-string v0, "gt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 354
    const-string v0, "WebvttCueParser"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ignoring unsupported entity: \'&"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 351
    :pswitch_0
    const/16 v0, 0x26

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 352
    goto :goto_2

    .line 348
    :pswitch_1
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 349
    goto :goto_2

    .line 345
    :pswitch_2
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 346
    goto :goto_2

    .line 342
    :pswitch_3
    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 343
    nop

    .line 357
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static applySpansForTag(Ljava/lang/String;Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StartTag;Landroid/text/SpannableStringBuilder;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .param p0, "cueId"    # Ljava/lang/String;
    .param p1, "startTag"    # Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StartTag;
    .param p2, "text"    # Landroid/text/SpannableStringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StartTag;",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StyleMatch;",
            ">;)V"
        }
    .end annotation

    .line 375
    .local p3, "styles":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;>;"
    .local p4, "scratchStyleMatches":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StyleMatch;>;"
    iget v0, p1, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StartTag;->position:I

    .line 376
    .local v0, "start":I
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 377
    .local v1, "end":I
    iget-object v2, p1, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StartTag;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v3, "lang"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_1
    const-string/jumbo v3, "v"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_2
    const-string/jumbo v3, "u"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_3
    const-string v3, "i"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_4
    const-string v3, "c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_5
    const-string v3, "b"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_6
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    goto :goto_1

    :goto_0
    const/4 v2, -0x1

    :goto_1
    const/16 v3, 0x21

    packed-switch v2, :pswitch_data_0

    .line 395
    return-void

    .line 393
    :pswitch_0
    goto :goto_2

    .line 387
    :pswitch_1
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p2, v2, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 388
    goto :goto_2

    .line 383
    :pswitch_2
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p2, v2, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 385
    goto :goto_2

    .line 379
    :pswitch_3
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p2, v2, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 381
    nop

    .line 397
    :goto_2
    invoke-interface {p4}, Ljava/util/List;->clear()V

    .line 398
    invoke-static {p3, p0, p1, p4}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser;->getApplicableStyles(Ljava/util/List;Ljava/lang/String;Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StartTag;Ljava/util/List;)V

    .line 399
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    .line 400
    .local v2, "styleMatchesCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-ge v3, v2, :cond_1

    .line 401
    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StyleMatch;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StyleMatch;->style:Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;

    invoke-static {p2, v4, v0, v1}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser;->applyStyleToText(Landroid/text/SpannableStringBuilder;Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;II)V

    .line 400
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 403
    .end local v3    # "i":I
    :cond_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x62 -> :sswitch_5
        0x63 -> :sswitch_4
        0x69 -> :sswitch_3
        0x75 -> :sswitch_2
        0x76 -> :sswitch_1
        0x3291ee -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static applyStyleToText(Landroid/text/SpannableStringBuilder;Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;II)V
    .locals 4
    .param p0, "spannedText"    # Landroid/text/SpannableStringBuilder;
    .param p1, "style"    # Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 407
    if-nez p1, :cond_0

    .line 408
    return-void

    .line 410
    :cond_0
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->getStyle()I

    move-result v0

    const/4 v1, -0x1

    const/16 v2, 0x21

    if-eq v0, v1, :cond_1

    .line 411
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->getStyle()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v0, p2, p3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 410
    :cond_1
    nop

    .line 414
    :goto_0
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->isLinethrough()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 415
    new-instance v0, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v0}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {p0, v0, p2, p3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 414
    :cond_2
    nop

    .line 417
    :goto_1
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->isUnderline()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 418
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p0, v0, p2, p3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 417
    :cond_3
    nop

    .line 420
    :goto_2
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->hasFontColor()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 421
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->getFontColor()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p0, v0, p2, p3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    .line 420
    :cond_4
    nop

    .line 424
    :goto_3
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->hasBackgroundColor()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 425
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->getBackgroundColor()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {p0, v0, p2, p3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4

    .line 424
    :cond_5
    nop

    .line 428
    :goto_4
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->getFontFamily()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 429
    new-instance v0, Landroid/text/style/TypefaceSpan;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->getFontFamily()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_5

    .line 428
    :cond_6
    nop

    .line 432
    :goto_5
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->getTextAlign()Landroid/text/Layout$Alignment;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 433
    new-instance v0, Landroid/text/style/AlignmentSpan$Standard;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->getTextAlign()Landroid/text/Layout$Alignment;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    invoke-virtual {p0, v0, p2, p3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_6

    .line 432
    :cond_7
    nop

    .line 436
    :goto_6
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->getFontSizeUnit()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_7

    .line 446
    :pswitch_0
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->getFontSize()F

    move-result v1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v1, v3

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0, v0, p2, p3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 448
    goto :goto_7

    .line 442
    :pswitch_1
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->getFontSize()F

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0, v0, p2, p3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 444
    goto :goto_7

    .line 438
    :pswitch_2
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->getFontSize()F

    move-result v1

    float-to-int v1, v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {p0, v0, p2, p3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 440
    nop

    .line 453
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static findEndOfTag(Ljava/lang/String;I)I
    .locals 2
    .param p0, "markup"    # Ljava/lang/String;
    .param p1, "startPos"    # I

    .line 335
    const/16 v0, 0x3e

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 336
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, 0x1

    :goto_0
    return v1
.end method

.method private static getApplicableStyles(Ljava/util/List;Ljava/lang/String;Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StartTag;Ljava/util/List;)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "tag"    # Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StartTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;",
            ">;",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StartTag;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StyleMatch;",
            ">;)V"
        }
    .end annotation

    .line 471
    .local p0, "declaredStyles":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;>;"
    .local p3, "output":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StyleMatch;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 472
    .local v0, "styleCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 473
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;

    .line 474
    .local v2, "style":Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;
    iget-object v3, p2, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StartTag;->name:Ljava/lang/String;

    iget-object v4, p2, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StartTag;->classes:[Ljava/lang/String;

    iget-object v5, p2, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StartTag;->voice:Ljava/lang/String;

    invoke-virtual {v2, p1, v3, v4, v5}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->getSpecificityScore(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 475
    .local v3, "score":I
    if-lez v3, :cond_0

    .line 476
    new-instance v4, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StyleMatch;

    invoke-direct {v4, v3, v2}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StyleMatch;-><init>(ILandroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;)V

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 475
    :cond_0
    nop

    .line 472
    .end local v2    # "style":Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;
    .end local v3    # "score":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 479
    .end local v1    # "i":I
    :cond_1
    invoke-static {p3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 480
    return-void
.end method

.method private static getTagName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "tagExpression"    # Ljava/lang/String;

    .line 462
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 463
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    const/4 v0, 0x0

    return-object v0

    .line 466
    :cond_0
    const-string v0, "[ \\.]"

    invoke-static {p0, v0}, Landroidx/media2/exoplayer/external/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static isSupportedTag(Ljava/lang/String;)Z
    .locals 3
    .param p0, "tagName"    # Ljava/lang/String;

    .line 360
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "lang"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "v"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_2
    const-string/jumbo v0, "u"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_3
    const-string v0, "i"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_4
    const-string v0, "c"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_5
    const-string v0, "b"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 369
    return v2

    .line 367
    :pswitch_0
    return v1

    :sswitch_data_0
    .sparse-switch
        0x62 -> :sswitch_5
        0x63 -> :sswitch_4
        0x69 -> :sswitch_3
        0x75 -> :sswitch_2
        0x76 -> :sswitch_1
        0x3291ee -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static parseCue(Ljava/lang/String;Ljava/util/regex/Matcher;Landroidx/media2/exoplayer/external/util/ParsableByteArray;Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;Ljava/lang/StringBuilder;Ljava/util/List;)Z
    .locals 6
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "cueHeaderMatcher"    # Ljava/util/regex/Matcher;
    .param p2, "webvttData"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p3, "builder"    # Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;
    .param p4, "textBuilder"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Matcher;",
            "Landroidx/media2/exoplayer/external/util/ParsableByteArray;",
            "Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;",
            ">;)Z"
        }
    .end annotation

    .line 237
    .local p5, "styles":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttParserUtil;->parseTimestampUs(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p3, v2, v3}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->setStartTime(J)Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;

    move-result-object v2

    const/4 v3, 0x2

    .line 238
    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttParserUtil;->parseTimestampUs(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->setEndTime(J)Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    nop

    .line 244
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p3}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser;->parseCueSettingsList(Ljava/lang/String;Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;)V

    .line 247
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 249
    :goto_0
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .local v2, "line":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 250
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 251
    const-string v0, "\n"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 250
    :cond_0
    nop

    .line 253
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 255
    :cond_1
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p3, p5}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser;->parseCueText(Ljava/lang/String;Ljava/lang/String;Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;Ljava/util/List;)V

    .line 256
    return v1

    .line 239
    .end local v2    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 240
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v2, "WebvttCueParser"

    const-string v3, "Skipping cue with bad header: "

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    :goto_2
    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    return v0
.end method

.method static parseCueSettingsList(Ljava/lang/String;Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;)V
    .locals 8
    .param p0, "cueSettingsList"    # Ljava/lang/String;
    .param p1, "builder"    # Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;

    .line 134
    sget-object v0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser;->CUE_SETTING_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 135
    .local v0, "cueSettingMatcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 136
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "value":Ljava/lang/String;
    :try_start_0
    const-string v3, "line"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    invoke-static {v2, p1}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser;->parseLineAttribute(Ljava/lang/String;Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;)V

    goto :goto_1

    .line 141
    :cond_0
    const-string v3, "align"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 142
    invoke-static {v2}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser;->parseTextAlignment(Ljava/lang/String;)Landroid/text/Layout$Alignment;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->setTextAlignment(Landroid/text/Layout$Alignment;)Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;

    goto :goto_1

    .line 143
    :cond_1
    const-string v3, "position"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 144
    invoke-static {v2, p1}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser;->parsePositionAttribute(Ljava/lang/String;Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;)V

    goto :goto_1

    .line 145
    :cond_2
    const-string v3, "size"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 146
    invoke-static {v2}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttParserUtil;->parsePercentage(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {p1, v3}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->setWidth(F)Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;

    goto :goto_1

    .line 148
    :cond_3
    const-string v3, "WebvttCueParser"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x15

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unknown cue setting "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_1
    goto :goto_3

    .line 150
    :catch_0
    move-exception v3

    .line 151
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v4, "WebvttCueParser"

    const-string v5, "Skipping bad cue setting: "

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_4
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    :goto_2
    invoke-static {v4, v5}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :goto_3
    goto/16 :goto_0

    .line 154
    :cond_5
    return-void
.end method

.method static parseCueText(Ljava/lang/String;Ljava/lang/String;Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;Ljava/util/List;)V
    .locals 12
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "markup"    # Ljava/lang/String;
    .param p2, "builder"    # Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;",
            ">;)V"
        }
    .end annotation

    .line 166
    .local p3, "styles":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;>;"
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 167
    .local v0, "spannedText":Landroid/text/SpannableStringBuilder;
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 168
    .local v1, "startTagStack":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StartTag;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v2, "scratchStyleMatches":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StyleMatch;>;"
    const/4 v3, 0x0

    .line 170
    .local v3, "pos":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_11

    .line 171
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 172
    .local v4, "curr":C
    const/16 v5, 0x26

    if-eq v4, v5, :cond_c

    const/16 v5, 0x3c

    if-eq v4, v5, :cond_0

    .line 219
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 220
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_7

    .line 174
    :cond_0
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v5, v6, :cond_1

    .line 175
    add-int/lit8 v3, v3, 0x1

    .line 176
    goto/16 :goto_7

    .line 178
    :cond_1
    move v5, v3

    .line 179
    .local v5, "ltPos":I
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/4 v7, 0x0

    const/16 v8, 0x2f

    const/4 v9, 0x1

    if-ne v6, v8, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 180
    .local v6, "isClosingTag":Z
    :goto_1
    add-int/lit8 v10, v5, 0x1

    invoke-static {p1, v10}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser;->findEndOfTag(Ljava/lang/String;I)I

    move-result v3

    .line 181
    add-int/lit8 v10, v3, -0x2

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v8, :cond_3

    const/4 v7, 0x1

    nop

    .line 182
    .local v7, "isVoidTag":Z
    :cond_3
    if-eqz v6, :cond_4

    const/4 v9, 0x2

    nop

    :cond_4
    add-int/2addr v9, v5

    .line 183
    if-eqz v7, :cond_5

    add-int/lit8 v8, v3, -0x2

    goto :goto_2

    :cond_5
    add-int/lit8 v8, v3, -0x1

    .line 182
    :goto_2
    invoke-virtual {p1, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 184
    .local v8, "fullTagExpression":Ljava/lang/String;
    invoke-static {v8}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser;->getTagName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 185
    .local v9, "tagName":Ljava/lang/String;
    if-eqz v9, :cond_b

    invoke-static {v9}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser;->isSupportedTag(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 186
    goto :goto_0

    .line 188
    :cond_6
    if-eqz v6, :cond_9

    .line 191
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 192
    goto :goto_4

    .line 194
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StartTag;

    .line 195
    .local v10, "startTag":Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StartTag;
    invoke-static {p0, v10, v0, p3, v2}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser;->applySpansForTag(Ljava/lang/String;Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StartTag;Landroid/text/SpannableStringBuilder;Ljava/util/List;Ljava/util/List;)V

    .line 196
    iget-object v11, v10, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StartTag;->name:Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    goto :goto_4

    :cond_8
    goto :goto_3

    .line 197
    .end local v10    # "startTag":Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StartTag;
    :cond_9
    if-nez v7, :cond_a

    .line 198
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    invoke-static {v8, v10}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StartTag;->buildStartTag(Ljava/lang/String;I)Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StartTag;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_7

    .line 197
    :cond_a
    :goto_4
    goto :goto_7

    .line 185
    :cond_b
    goto/16 :goto_0

    .line 202
    .end local v5    # "ltPos":I
    .end local v6    # "isClosingTag":Z
    .end local v7    # "isVoidTag":Z
    .end local v8    # "fullTagExpression":Ljava/lang/String;
    .end local v9    # "tagName":Ljava/lang/String;
    :cond_c
    const/16 v5, 0x3b

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 203
    .local v5, "semiColonEndIndex":I
    const/16 v6, 0x20

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 204
    .local v6, "spaceEndIndex":I
    const/4 v7, -0x1

    if-ne v5, v7, :cond_d

    move v8, v6

    goto :goto_5

    .line 205
    :cond_d
    if-ne v6, v7, :cond_e

    move v8, v5

    goto :goto_5

    .line 206
    :cond_e
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v8

    :goto_5
    nop

    .line 207
    .local v8, "entityEndIndex":I
    if-eq v8, v7, :cond_10

    .line 208
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser;->applyEntity(Ljava/lang/String;Landroid/text/SpannableStringBuilder;)V

    .line 209
    if-ne v8, v6, :cond_f

    .line 210
    const-string v7, " "

    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_6

    .line 209
    :cond_f
    nop

    .line 212
    :goto_6
    add-int/lit8 v3, v8, 0x1

    goto :goto_7

    .line 214
    :cond_10
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 215
    add-int/lit8 v3, v3, 0x1

    .line 217
    nop

    .line 223
    .end local v4    # "curr":C
    .end local v5    # "semiColonEndIndex":I
    .end local v6    # "spaceEndIndex":I
    .end local v8    # "entityEndIndex":I
    :goto_7
    goto/16 :goto_0

    .line 170
    :cond_11
    nop

    .line 225
    :goto_8
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_12

    .line 226
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StartTag;

    invoke-static {p0, v4, v0, p3, v2}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser;->applySpansForTag(Ljava/lang/String;Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StartTag;Landroid/text/SpannableStringBuilder;Ljava/util/List;Ljava/util/List;)V

    goto :goto_8

    .line 228
    :cond_12
    invoke-static {}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StartTag;->buildWholeCueVirtualTag()Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StartTag;

    move-result-object v4

    invoke-static {p0, v4, v0, p3, v2}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser;->applySpansForTag(Ljava/lang/String;Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StartTag;Landroid/text/SpannableStringBuilder;Ljava/util/List;Ljava/util/List;)V

    .line 230
    invoke-virtual {p2, v0}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->setText(Landroid/text/SpannableStringBuilder;)Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;

    .line 231
    return-void
.end method

.method private static parseLineAttribute(Ljava/lang/String;Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;)V
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "builder"    # Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 263
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 264
    .local v0, "commaIndex":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 265
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser;->parsePositionAnchor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->setLineAnchor(I)Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;

    .line 266
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 268
    :cond_0
    const/high16 v2, -0x80000000

    invoke-virtual {p1, v2}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->setLineAnchor(I)Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;

    .line 270
    :goto_0
    const-string v2, "%"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 271
    invoke-static {p0}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttParserUtil;->parsePercentage(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {p1, v2}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->setLine(F)Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->setLineType(I)Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;

    goto :goto_2

    .line 273
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 274
    .local v1, "lineNumber":I
    if-gez v1, :cond_2

    .line 277
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 274
    :cond_2
    nop

    .line 279
    :goto_1
    int-to-float v2, v1

    invoke-virtual {p1, v2}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->setLine(F)Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->setLineType(I)Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;

    .line 281
    .end local v1    # "lineNumber":I
    :goto_2
    return-void
.end method

.method private static parsePositionAnchor(Ljava/lang/String;)I
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .line 296
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x514d33ab

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v1, :cond_4

    const v1, -0x4009266b

    if-eq v0, v1, :cond_3

    const v1, 0x188db

    if-eq v0, v1, :cond_2

    const v1, 0x68ac462

    if-eq v0, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v0, "start"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const-string v0, "end"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :cond_3
    const-string v0, "middle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :cond_4
    const-string v0, "center"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 305
    const-string v0, "WebvttCueParser"

    const-string v1, "Invalid anchor value: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 303
    :pswitch_0
    return v2

    .line 301
    :pswitch_1
    return v3

    .line 298
    :pswitch_2
    return v4

    .line 305
    :cond_5
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_2
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const/high16 v0, -0x80000000

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parsePositionAttribute(Ljava/lang/String;Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "builder"    # Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 285
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 286
    .local v0, "commaIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 287
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser;->parsePositionAnchor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->setPositionAnchor(I)Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;

    .line 288
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 290
    :cond_0
    const/high16 v1, -0x80000000

    invoke-virtual {p1, v1}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->setPositionAnchor(I)Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;

    .line 292
    :goto_0
    invoke-static {p0}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttParserUtil;->parsePercentage(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->setPosition(F)Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;

    .line 293
    return-void
.end method

.method private static parseTextAlignment(Ljava/lang/String;)Landroid/text/Layout$Alignment;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .line 311
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "start"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "right"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_2
    const-string v0, "left"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v0, "end"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_4
    const-string v0, "middle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_5
    const-string v0, "center"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 322
    const-string v0, "WebvttCueParser"

    const-string v1, "Invalid alignment value: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 320
    :pswitch_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    return-object v0

    .line 317
    :pswitch_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object v0

    .line 314
    :pswitch_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    return-object v0

    .line 322
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_2
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const/4 v0, 0x0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_5
        -0x4009266b -> :sswitch_4
        0x188db -> :sswitch_3
        0x32a007 -> :sswitch_2
        0x677c21c -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public parseCue(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;Ljava/util/List;)Z
    .locals 11
    .param p1, "webvttData"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p2, "builder"    # Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/util/ParsableByteArray;",
            "Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;",
            ">;)Z"
        }
    .end annotation

    .line 102
    .local p3, "styles":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;>;"
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "firstLine":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 104
    return v1

    .line 106
    :cond_0
    sget-object v2, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser;->CUE_HEADER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 107
    .local v2, "cueHeaderMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 109
    const/4 v3, 0x0

    iget-object v7, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser;->textBuilder:Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v5, p1

    move-object v6, p2

    move-object v8, p3

    invoke-static/range {v3 .. v8}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser;->parseCue(Ljava/lang/String;Ljava/util/regex/Matcher;Landroidx/media2/exoplayer/external/util/ParsableByteArray;Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;Ljava/lang/StringBuilder;Ljava/util/List;)Z

    move-result v1

    return v1

    .line 112
    :cond_1
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, "secondLine":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 114
    return v1

    .line 116
    :cond_2
    sget-object v4, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser;->CUE_HEADER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 117
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 119
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iget-object v9, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser;->textBuilder:Ljava/lang/StringBuilder;

    move-object v6, v2

    move-object v7, p1

    move-object v8, p2

    move-object v10, p3

    invoke-static/range {v5 .. v10}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser;->parseCue(Ljava/lang/String;Ljava/util/regex/Matcher;Landroidx/media2/exoplayer/external/util/ParsableByteArray;Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;Ljava/lang/StringBuilder;Ljava/util/List;)Z

    move-result v1

    return v1

    .line 122
    :cond_3
    return v1
.end method
