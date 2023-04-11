.class Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;
.super Landroid/widget/RelativeLayout;
.source "Cea708CaptionRenderer.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CCWindowLayout"
.end annotation


# static fields
.field private static final ANCHOR_HORIZONTAL_16_9_MAX:I = 0xd1

.field private static final ANCHOR_HORIZONTAL_MODE_CENTER:I = 0x1

.field private static final ANCHOR_HORIZONTAL_MODE_LEFT:I = 0x0

.field private static final ANCHOR_HORIZONTAL_MODE_RIGHT:I = 0x2

.field private static final ANCHOR_MODE_DIVIDER:I = 0x3

.field private static final ANCHOR_RELATIVE_POSITIONING_MAX:I = 0x63

.field private static final ANCHOR_VERTICAL_MAX:I = 0x4a

.field private static final ANCHOR_VERTICAL_MODE_BOTTOM:I = 0x2

.field private static final ANCHOR_VERTICAL_MODE_CENTER:I = 0x1

.field private static final ANCHOR_VERTICAL_MODE_TOP:I = 0x0

.field private static final MAX_COLUMN_COUNT_16_9:I = 0x2a

.field private static final PROPORTION_PEN_SIZE_LARGE:F = 1.25f

.field private static final PROPORTION_PEN_SIZE_SMALL:F = 0.75f

.field private static final TAG:Ljava/lang/String; = "CCWindowLayout"


# instance fields
.field private final mBuilder:Landroid/text/SpannableStringBuilder;

.field private mCCLayout:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;

.field private mCCView:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCView;

.field private mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private mCaptionWindowId:I

.field private final mCharacterStyles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/style/CharacterStyle;",
            ">;"
        }
    .end annotation
.end field

.field private mFontScale:F

.field private mLastCaptionLayoutHeight:I

.field private mLastCaptionLayoutWidth:I

.field private mRow:I

.field private mRowLimit:I

.field private mTextSize:F

.field private mWidestChar:Ljava/lang/String;

.field final synthetic this$1:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget;


# direct methods
.method constructor <init>(Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .line 777
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;-><init>(Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 778
    return-void
.end method

.method constructor <init>(Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 781
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;-><init>(Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 782
    return-void
.end method

.method constructor <init>(Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I

    .line 784
    iput-object p1, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->this$1:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget;

    .line 785
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 765
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mRowLimit:I

    .line 766
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    .line 767
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    .line 769
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mRow:I

    .line 788
    new-instance v0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCView;

    invoke-direct {v0, p1, p2}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCView;-><init>(Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget;Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCCView:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCView;

    .line 789
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 791
    .local p1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCCView:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCView;

    invoke-virtual {p0, v0, p1}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 794
    const-string v0, "captioning"

    .line 795
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    .line 796
    .local v0, "captioningManager":Landroid/view/accessibility/CaptioningManager;
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v1

    iput v1, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mFontScale:F

    .line 797
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    .line 798
    iget-object v1, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCCView:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCView;->setText(Ljava/lang/CharSequence;)V

    .line 799
    invoke-direct {p0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->updateWidestChar()V

    .line 800
    return-void
.end method

.method private getScreenColumnCount()I
    .locals 1

    .line 1129
    const/16 v0, 0x2a

    return v0
.end method

.method private updateText(Ljava/lang/String;Z)V
    .locals 9
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "appended"    # Z

    .line 1154
    if-nez p2, :cond_0

    .line 1155
    iget-object v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    goto :goto_0

    .line 1154
    :cond_0
    nop

    .line 1157
    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 1158
    iget-object v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 1159
    .local v0, "length":I
    iget-object v1, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1160
    iget-object v1, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/style/CharacterStyle;

    .line 1161
    .local v2, "characterStyle":Landroid/text/style/CharacterStyle;
    iget-object v3, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {v3, v2, v0, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1163
    .end local v2    # "characterStyle":Landroid/text/style/CharacterStyle;
    goto :goto_1

    .line 1160
    :cond_1
    goto :goto_2

    .line 1157
    .end local v0    # "length":I
    :cond_2
    nop

    .line 1165
    :goto_2
    iget-object v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1169
    .local v0, "lines":[Ljava/lang/String;
    const-string v1, "\n"

    array-length v2, v0

    iget v3, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mRowLimit:I

    add-int/lit8 v3, v3, 0x1

    sub-int/2addr v2, v3

    .line 1170
    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    array-length v4, v0

    .line 1169
    invoke-static {v0, v2, v4}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1171
    .local v1, "truncatedText":Ljava/lang/String;
    iget-object v2, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 1174
    const/4 v2, 0x0

    .local v2, "start":I
    iget-object v4, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 1175
    .local v4, "last":I
    move v5, v4

    .line 1176
    .local v5, "end":I
    :goto_3
    const/16 v6, 0x20

    if-gt v2, v5, :cond_3

    iget-object v7, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v7

    if-gt v7, v6, :cond_3

    .line 1177
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1176
    :cond_3
    nop

    .line 1179
    :goto_4
    if-lt v5, v2, :cond_4

    iget-object v7, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7, v5}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v7

    if-gt v7, v6, :cond_4

    .line 1180
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 1179
    :cond_4
    nop

    .line 1182
    if-nez v2, :cond_5

    if-ne v5, v4, :cond_5

    .line 1183
    iget-object v3, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCCView:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCView;

    iget-object v6, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v6}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 1182
    :cond_5
    nop

    .line 1185
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1186
    .local v6, "trim":Landroid/text/SpannableStringBuilder;
    iget-object v7, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1187
    if-ge v5, v4, :cond_6

    .line 1188
    add-int/lit8 v7, v5, 0x1

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_5

    .line 1187
    :cond_6
    nop

    .line 1190
    :goto_5
    if-lez v2, :cond_7

    .line 1191
    invoke-virtual {v6, v3, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_6

    .line 1190
    :cond_7
    nop

    .line 1193
    :goto_6
    iget-object v3, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCCView:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCView;

    invoke-virtual {v3, v6}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCView;->setText(Ljava/lang/CharSequence;)V

    .line 1195
    .end local v6    # "trim":Landroid/text/SpannableStringBuilder;
    :goto_7
    return-void
.end method

.method private updateTextSize()V
    .locals 10

    .line 1100
    iget-object v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;

    if-nez v0, :cond_0

    return-void

    .line 1103
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1104
    .local v0, "widestTextBuilder":Ljava/lang/StringBuilder;
    invoke-direct {p0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->getScreenColumnCount()I

    move-result v1

    .line 1105
    .local v1, "screenColumnCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1106
    iget-object v3, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mWidestChar:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1105
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1108
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1109
    .local v2, "widestText":Ljava/lang/String;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 1110
    .local v3, "paint":Landroid/graphics/Paint;
    iget-object v4, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    invoke-virtual {v4}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1111
    const/4 v4, 0x0

    .line 1112
    .local v4, "startFontSize":F
    const/high16 v5, 0x437f0000    # 255.0f

    .line 1113
    .local v5, "endFontSize":F
    :goto_1
    cmpg-float v6, v4, v5

    if-gez v6, :cond_3

    .line 1114
    add-float v6, v4, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    .line 1115
    .local v6, "testTextSize":F
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1116
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 1117
    .local v7, "width":F
    iget-object v8, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;

    invoke-virtual {v8}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;->getWidth()I

    move-result v8

    int-to-float v8, v8

    const v9, 0x3f4ccccd    # 0.8f

    mul-float v8, v8, v9

    const v9, 0x3c23d70a    # 0.01f

    cmpl-float v8, v8, v7

    if-lez v8, :cond_2

    .line 1118
    add-float/2addr v9, v6

    move v4, v9

    goto :goto_2

    .line 1120
    :cond_2
    sub-float v5, v6, v9

    .line 1122
    .end local v6    # "testTextSize":F
    .end local v7    # "width":F
    :goto_2
    goto :goto_1

    .line 1123
    :cond_3
    iget v6, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mFontScale:F

    mul-float v6, v6, v5

    iput v6, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mTextSize:F

    .line 1124
    iget-object v6, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCCView:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCView;

    iget v7, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mTextSize:F

    invoke-virtual {v6, v7}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCView;->setTextSize(F)V

    .line 1125
    return-void
.end method

.method private updateWidestChar()V
    .locals 8

    .line 1084
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 1085
    .local v0, "paint":Landroid/graphics/Paint;
    iget-object v1, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1086
    const-string v1, "ISO-8859-1"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 1087
    .local v1, "latin1":Ljava/nio/charset/Charset;
    const/4 v2, 0x0

    .line 1088
    .local v2, "widestCharWidth":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v4, 0x100

    if-ge v3, v4, :cond_1

    .line 1089
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [B

    const/4 v6, 0x0

    int-to-byte v7, v3

    aput-byte v7, v5, v6

    invoke-direct {v4, v5, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1090
    .local v4, "ch":Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 1091
    .local v5, "charWidth":F
    cmpg-float v6, v2, v5

    if-gez v6, :cond_0

    .line 1092
    move v2, v5

    .line 1093
    iput-object v4, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mWidestChar:Ljava/lang/String;

    goto :goto_1

    .line 1091
    :cond_0
    nop

    .line 1088
    .end local v4    # "ch":Ljava/lang/String;
    .end local v5    # "charWidth":F
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1096
    .end local v3    # "i":I
    :cond_1
    invoke-direct {p0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->updateTextSize()V

    .line 1097
    return-void
.end method


# virtual methods
.method public appendText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 1145
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->updateText(Ljava/lang/String;Z)V

    .line 1146
    return-void
.end method

.method public clear()V
    .locals 0

    .line 821
    invoke-virtual {p0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->clearText()V

    .line 822
    invoke-virtual {p0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->hide()V

    .line 823
    return-void
.end method

.method public clearText()V
    .locals 2

    .line 1149
    iget-object v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1150
    iget-object v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCCView:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCView;->setText(Ljava/lang/CharSequence;)V

    .line 1151
    return-void
.end method

.method public getCaptionWindowId()I
    .locals 1

    .line 813
    iget v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCaptionWindowId:I

    return v0
.end method

.method public hide()V
    .locals 1

    .line 831
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->setVisibility(I)V

    .line 832
    invoke-virtual {p0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->requestLayout()V

    .line 833
    return-void
.end method

.method public initWindow(Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;Landroidx/media2/player/subtitle/Cea708CCParser$CaptionWindow;)V
    .locals 22
    .param p1, "ccLayout"    # Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;
    .param p2, "captionWindow"    # Landroidx/media2/player/subtitle/Cea708CCParser$CaptionWindow;

    .line 945
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;

    if-eq v3, v1, :cond_1

    .line 946
    if-eqz v3, :cond_0

    .line 947
    invoke-virtual {v3, v0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_0

    .line 946
    :cond_0
    nop

    .line 949
    :goto_0
    iput-object v1, v0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;

    .line 950
    iget-object v3, v0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;

    invoke-virtual {v3, v0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 951
    invoke-direct/range {p0 .. p0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->updateWidestChar()V

    goto :goto_1

    .line 945
    :cond_1
    nop

    .line 956
    :goto_1
    iget v3, v2, Landroidx/media2/player/subtitle/Cea708CCParser$CaptionWindow;->anchorVertical:I

    int-to-float v3, v3

    iget-boolean v4, v2, Landroidx/media2/player/subtitle/Cea708CCParser$CaptionWindow;->relativePositioning:Z

    const/16 v5, 0x63

    if-eqz v4, :cond_2

    const/16 v4, 0x63

    goto :goto_2

    :cond_2
    const/16 v4, 0x4a

    :goto_2
    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 961
    .local v3, "scaleRow":F
    iget v4, v2, Landroidx/media2/player/subtitle/Cea708CCParser$CaptionWindow;->anchorHorizontal:I

    int-to-float v4, v4

    iget-boolean v6, v2, Landroidx/media2/player/subtitle/Cea708CCParser$CaptionWindow;->relativePositioning:Z

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    const/16 v5, 0xd1

    :goto_3
    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 967
    .local v4, "scaleCol":F
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    cmpg-float v7, v3, v6

    if-ltz v7, :cond_5

    cmpl-float v7, v3, v5

    if-lez v7, :cond_4

    goto :goto_4

    :cond_4
    goto :goto_5

    .line 968
    :cond_5
    :goto_4
    const-string v7, "CCWindowLayout"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The vertical position of the anchor point should be at the range of 0 and 1 but "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 972
    :goto_5
    cmpg-float v7, v4, v6

    if-ltz v7, :cond_7

    cmpl-float v7, v4, v5

    if-lez v7, :cond_6

    goto :goto_6

    :cond_6
    goto :goto_7

    .line 973
    :cond_7
    :goto_6
    const-string v7, "CCWindowLayout"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The horizontal position of the anchor point should be at the range of 0 and 1 but "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 977
    :goto_7
    const/16 v7, 0x11

    .line 978
    .local v7, "gravity":I
    iget v8, v2, Landroidx/media2/player/subtitle/Cea708CCParser$CaptionWindow;->anchorId:I

    rem-int/lit8 v8, v8, 0x3

    .line 979
    .local v8, "horizontalMode":I
    iget v9, v2, Landroidx/media2/player/subtitle/Cea708CCParser$CaptionWindow;->anchorId:I

    div-int/lit8 v9, v9, 0x3

    .line 980
    .local v9, "verticalMode":I
    const/4 v10, 0x0

    .line 981
    .local v10, "scaleStartRow":F
    const/high16 v11, 0x3f800000    # 1.0f

    .line 982
    .local v11, "scaleEndRow":F
    const/4 v12, 0x0

    .line 983
    .local v12, "scaleStartCol":F
    const/high16 v13, 0x3f800000    # 1.0f

    .line 984
    .local v13, "scaleEndCol":F
    packed-switch v8, :pswitch_data_0

    goto/16 :goto_a

    .line 1032
    :pswitch_0
    const/4 v7, 0x5

    .line 1036
    move v13, v4

    goto/16 :goto_a

    .line 991
    :pswitch_1
    sub-float v14, v5, v4

    invoke-static {v14, v4}, Ljava/lang/Math;->min(FF)F

    move-result v14

    .line 995
    .local v14, "gap":F
    iget v15, v2, Landroidx/media2/player/subtitle/Cea708CCParser$CaptionWindow;->columnCount:I

    add-int/lit8 v15, v15, 0x1

    .line 996
    .local v15, "columnCount":I
    invoke-direct/range {p0 .. p0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->getScreenColumnCount()I

    move-result v5

    invoke-static {v5, v15}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 997
    .end local v15    # "columnCount":I
    .local v5, "columnCount":I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 998
    .local v15, "widestTextBuilder":Ljava/lang/StringBuilder;
    const/16 v16, 0x0

    move/from16 v6, v16

    .local v6, "i":I
    :goto_8
    if-ge v6, v5, :cond_8

    .line 999
    iget-object v1, v0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mWidestChar:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p1

    goto :goto_8

    .line 1001
    .end local v6    # "i":I
    :cond_8
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 1002
    .local v1, "paint":Landroid/graphics/Paint;
    iget-object v6, v0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    invoke-virtual {v6}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1003
    iget v6, v0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mTextSize:F

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1004
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 1005
    .local v6, "maxWindowWidth":F
    move-object/from16 v16, v1

    .end local v1    # "paint":Landroid/graphics/Paint;
    .local v16, "paint":Landroid/graphics/Paint;
    iget-object v1, v0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;

    invoke-virtual {v1}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;->getWidth()I

    move-result v1

    if-lez v1, :cond_9

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v6, v1

    move/from16 v18, v5

    .end local v5    # "columnCount":I
    .local v18, "columnCount":I
    iget-object v5, v0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;

    .line 1006
    invoke-virtual {v5}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const v19, 0x3f4ccccd    # 0.8f

    mul-float v5, v5, v19

    div-float/2addr v1, v5

    goto :goto_9

    .end local v18    # "columnCount":I
    .restart local v5    # "columnCount":I
    :cond_9
    move/from16 v18, v5

    .end local v5    # "columnCount":I
    .restart local v18    # "columnCount":I
    const/4 v1, 0x0

    .line 1007
    .local v1, "halfMaxWidthScale":F
    :goto_9
    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-lez v5, :cond_a

    cmpg-float v5, v1, v4

    if-gez v5, :cond_a

    .line 1012
    const/4 v7, 0x3

    .line 1013
    iget-object v5, v0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCCView:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCView;

    move/from16 v17, v6

    .end local v6    # "maxWindowWidth":F
    .local v17, "maxWindowWidth":F
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v5, v6}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCView;->setAlignment(Landroid/text/Layout$Alignment;)V

    .line 1014
    sub-float v12, v4, v1

    .line 1015
    const/high16 v13, 0x3f800000    # 1.0f

    goto :goto_a

    .line 1007
    .end local v17    # "maxWindowWidth":F
    .restart local v6    # "maxWindowWidth":F
    :cond_a
    move/from16 v17, v6

    .line 1025
    .end local v6    # "maxWindowWidth":F
    .restart local v17    # "maxWindowWidth":F
    const/4 v7, 0x1

    .line 1026
    iget-object v5, v0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCCView:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCView;

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v5, v6}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCView;->setAlignment(Landroid/text/Layout$Alignment;)V

    .line 1027
    sub-float v12, v4, v14

    .line 1028
    add-float v13, v4, v14

    .line 1030
    goto :goto_a

    .line 986
    .end local v1    # "halfMaxWidthScale":F
    .end local v14    # "gap":F
    .end local v15    # "widestTextBuilder":Ljava/lang/StringBuilder;
    .end local v16    # "paint":Landroid/graphics/Paint;
    .end local v17    # "maxWindowWidth":F
    .end local v18    # "columnCount":I
    :pswitch_2
    const/4 v7, 0x3

    .line 987
    iget-object v1, v0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCCView:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCView;

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v1, v5}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCView;->setAlignment(Landroid/text/Layout$Alignment;)V

    .line 988
    move v12, v4

    .line 989
    nop

    .line 1039
    :goto_a
    packed-switch v9, :pswitch_data_1

    goto :goto_b

    .line 1053
    :pswitch_3
    or-int/lit8 v7, v7, 0x50

    .line 1054
    move v11, v3

    goto :goto_b

    .line 1045
    :pswitch_4
    or-int/lit8 v7, v7, 0x10

    .line 1048
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v5, v1, v3

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1049
    .local v1, "gap":F
    sub-float v10, v3, v1

    .line 1050
    add-float v11, v3, v1

    .line 1051
    goto :goto_b

    .line 1041
    .end local v1    # "gap":F
    :pswitch_5
    or-int/lit8 v7, v7, 0x30

    .line 1042
    move v10, v3

    .line 1043
    nop

    .line 1057
    :goto_b
    iget-object v1, v0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;

    new-instance v5, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v16, v5

    move-object/from16 v17, v1

    move/from16 v18, v10

    move/from16 v19, v11

    move/from16 v20, v12

    move/from16 v21, v13

    invoke-direct/range {v16 .. v21}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$ScaledLayoutParams;-><init>(Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;FFFF)V

    invoke-virtual {v1, v0, v5}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;->addOrUpdateViewToSafeTitleArea(Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$ScaledLayoutParams;)V

    .line 1060
    iget v1, v2, Landroidx/media2/player/subtitle/Cea708CCParser$CaptionWindow;->id:I

    invoke-virtual {v0, v1}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->setCaptionWindowId(I)V

    .line 1061
    iget v1, v2, Landroidx/media2/player/subtitle/Cea708CCParser$CaptionWindow;->rowCount:I

    invoke-virtual {v0, v1}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->setRowLimit(I)V

    .line 1062
    invoke-virtual {v0, v7}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->setGravity(I)V

    .line 1063
    iget-boolean v1, v2, Landroidx/media2/player/subtitle/Cea708CCParser$CaptionWindow;->visible:Z

    if-eqz v1, :cond_b

    .line 1064
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->show()V

    goto :goto_c

    .line 1066
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->hide()V

    .line 1068
    :goto_c
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 1074
    sub-int v0, p4, p2

    .line 1075
    .local v0, "width":I
    sub-int v1, p5, p3

    .line 1076
    .local v1, "height":I
    iget v2, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mLastCaptionLayoutWidth:I

    if-ne v0, v2, :cond_1

    iget v2, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mLastCaptionLayoutHeight:I

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    .line 1077
    :cond_1
    :goto_0
    iput v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mLastCaptionLayoutWidth:I

    .line 1078
    iput v1, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mLastCaptionLayoutHeight:I

    .line 1079
    invoke-direct {p0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->updateTextSize()V

    .line 1081
    :goto_1
    return-void
.end method

.method public removeFromCaptionView()V
    .locals 1

    .line 1133
    iget-object v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;

    if-eqz v0, :cond_0

    .line 1134
    invoke-virtual {v0, p0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;->removeViewFromSafeTitleArea(Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;)V

    .line 1135
    iget-object v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;

    invoke-virtual {v0, p0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1136
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;

    goto :goto_0

    .line 1133
    :cond_0
    nop

    .line 1138
    :goto_0
    return-void
.end method

.method public sendBuffer(Ljava/lang/String;)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/String;

    .line 882
    invoke-virtual {p0, p1}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->appendText(Ljava/lang/String;)V

    .line 883
    return-void
.end method

.method public sendControl(C)V
    .locals 0
    .param p1, "control"    # C

    .line 887
    return-void
.end method

.method public setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .locals 1
    .param p1, "style"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 803
    iput-object p1, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 804
    iget-object v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCCView:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCView;

    invoke-virtual {v0, p1}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCView;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    .line 805
    return-void
.end method

.method public setCaptionWindowId(I)V
    .locals 0
    .param p1, "captionWindowId"    # I

    .line 817
    iput p1, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCaptionWindowId:I

    .line 818
    return-void
.end method

.method public setFontScale(F)V
    .locals 0
    .param p1, "fontScale"    # F

    .line 808
    iput p1, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mFontScale:F

    .line 809
    invoke-direct {p0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->updateTextSize()V

    .line 810
    return-void
.end method

.method public setPenAttr(Landroidx/media2/player/subtitle/Cea708CCParser$CaptionPenAttr;)V
    .locals 4
    .param p1, "penAttr"    # Landroidx/media2/player/subtitle/Cea708CCParser$CaptionPenAttr;

    .line 836
    iget-object v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 837
    iget-boolean v0, p1, Landroidx/media2/player/subtitle/Cea708CCParser$CaptionPenAttr;->italic:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 837
    :cond_0
    nop

    .line 840
    :goto_0
    iget-boolean v0, p1, Landroidx/media2/player/subtitle/Cea708CCParser$CaptionPenAttr;->underline:Z

    if-eqz v0, :cond_1

    .line 841
    iget-object v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 840
    :cond_1
    nop

    .line 843
    :goto_1
    iget v0, p1, Landroidx/media2/player/subtitle/Cea708CCParser$CaptionPenAttr;->penSize:I

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    goto :goto_2

    .line 848
    :cond_2
    iget-object v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const/high16 v3, 0x3fa00000    # 1.25f

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 845
    :cond_3
    iget-object v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 846
    nop

    .line 851
    :goto_2
    iget v0, p1, Landroidx/media2/player/subtitle/Cea708CCParser$CaptionPenAttr;->penOffset:I

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    goto :goto_3

    .line 856
    :cond_4
    iget-object v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    new-instance v1, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v1}, Landroid/text/style/SuperscriptSpan;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 853
    :cond_5
    iget-object v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    new-instance v1, Landroid/text/style/SubscriptSpan;

    invoke-direct {v1}, Landroid/text/style/SubscriptSpan;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 854
    nop

    .line 859
    :goto_3
    return-void
.end method

.method public setPenColor(Landroidx/media2/player/subtitle/Cea708CCParser$CaptionPenColor;)V
    .locals 0
    .param p1, "penColor"    # Landroidx/media2/player/subtitle/Cea708CCParser$CaptionPenColor;

    .line 864
    return-void
.end method

.method public setPenLocation(II)V
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 868
    iget v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mRow:I

    if-ltz v0, :cond_1

    .line 869
    iget v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mRow:I

    .local v0, "r":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 870
    const-string v1, "\n"

    invoke-virtual {p0, v1}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->appendText(Ljava/lang/String;)V

    .line 869
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    goto :goto_1

    .line 868
    .end local v0    # "r":I
    :cond_1
    nop

    .line 873
    :goto_1
    iput p1, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mRow:I

    .line 874
    return-void
.end method

.method public setRowLimit(I)V
    .locals 2
    .param p1, "rowLimit"    # I

    .line 1198
    if-ltz p1, :cond_0

    .line 1201
    iput p1, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mRowLimit:I

    .line 1202
    return-void

    .line 1199
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A rowLimit should have a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 1141
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->updateText(Ljava/lang/String;Z)V

    .line 1142
    return-void
.end method

.method public setWindowAttr(Landroidx/media2/player/subtitle/Cea708CCParser$CaptionWindowAttr;)V
    .locals 0
    .param p1, "windowAttr"    # Landroidx/media2/player/subtitle/Cea708CCParser$CaptionWindowAttr;

    .line 879
    return-void
.end method

.method public show()V
    .locals 1

    .line 826
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->setVisibility(I)V

    .line 827
    invoke-virtual {p0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->requestLayout()V

    .line 828
    return-void
.end method
