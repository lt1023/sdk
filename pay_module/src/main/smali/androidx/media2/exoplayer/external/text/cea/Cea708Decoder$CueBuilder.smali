.class final Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;
.super Ljava/lang/Object;
.source "Cea708Decoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CueBuilder"
.end annotation


# static fields
.field private static final BORDER_AND_EDGE_TYPE_NONE:I = 0x0

.field private static final BORDER_AND_EDGE_TYPE_UNIFORM:I = 0x3

.field public static final COLOR_SOLID_BLACK:I

.field public static final COLOR_SOLID_WHITE:I

.field public static final COLOR_TRANSPARENT:I

.field private static final DEFAULT_PRIORITY:I = 0x4

.field private static final DIRECTION_BOTTOM_TO_TOP:I = 0x3

.field private static final DIRECTION_LEFT_TO_RIGHT:I = 0x0

.field private static final DIRECTION_RIGHT_TO_LEFT:I = 0x1

.field private static final DIRECTION_TOP_TO_BOTTOM:I = 0x2

.field private static final HORIZONTAL_SIZE:I = 0xd1

.field private static final JUSTIFICATION_CENTER:I = 0x2

.field private static final JUSTIFICATION_FULL:I = 0x3

.field private static final JUSTIFICATION_LEFT:I = 0x0

.field private static final JUSTIFICATION_RIGHT:I = 0x1

.field private static final MAXIMUM_ROW_COUNT:I = 0xf

.field private static final PEN_FONT_STYLE_DEFAULT:I = 0x0

.field private static final PEN_FONT_STYLE_MONOSPACED_WITHOUT_SERIFS:I = 0x3

.field private static final PEN_FONT_STYLE_MONOSPACED_WITH_SERIFS:I = 0x1

.field private static final PEN_FONT_STYLE_PROPORTIONALLY_SPACED_WITHOUT_SERIFS:I = 0x4

.field private static final PEN_FONT_STYLE_PROPORTIONALLY_SPACED_WITH_SERIFS:I = 0x2

.field private static final PEN_OFFSET_NORMAL:I = 0x1

.field private static final PEN_SIZE_STANDARD:I = 0x1

.field private static final PEN_STYLE_BACKGROUND:[I

.field private static final PEN_STYLE_EDGE_TYPE:[I

.field private static final PEN_STYLE_FONT_STYLE:[I

.field private static final RELATIVE_CUE_SIZE:I = 0x63

.field private static final VERTICAL_SIZE:I = 0x4a

.field private static final WINDOW_STYLE_FILL:[I

.field private static final WINDOW_STYLE_JUSTIFICATION:[I

.field private static final WINDOW_STYLE_PRINT_DIRECTION:[I

.field private static final WINDOW_STYLE_SCROLL_DIRECTION:[I

.field private static final WINDOW_STYLE_WORD_WRAP:[Z


# instance fields
.field private anchorId:I

.field private backgroundColor:I

.field private backgroundColorStartPosition:I

.field private final captionStringBuilder:Landroid/text/SpannableStringBuilder;

.field private defined:Z

.field private foregroundColor:I

.field private foregroundColorStartPosition:I

.field private horizontalAnchor:I

.field private italicsStartPosition:I

.field private justification:I

.field private penStyleId:I

.field private priority:I

.field private relativePositioning:Z

.field private final rolledUpCaptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/SpannableString;",
            ">;"
        }
    .end annotation
.end field

.field private row:I

.field private rowCount:I

.field private rowLock:Z

.field private underlineStartPosition:I

.field private verticalAnchor:I

.field private visible:Z

.field private windowFillColor:I

.field private windowStyleId:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 807
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, v0, v0, v1}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v2

    sput v2, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->COLOR_SOLID_WHITE:I

    .line 808
    invoke-static {v1, v1, v1, v1}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v2

    sput v2, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->COLOR_SOLID_BLACK:I

    .line 809
    const/4 v2, 0x3

    invoke-static {v1, v1, v1, v2}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v3

    sput v3, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->COLOR_TRANSPARENT:I

    .line 825
    const/4 v3, 0x7

    new-array v4, v3, [I

    fill-array-data v4, :array_0

    sput-object v4, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->WINDOW_STYLE_JUSTIFICATION:[I

    .line 830
    new-array v4, v3, [I

    fill-array-data v4, :array_1

    sput-object v4, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->WINDOW_STYLE_PRINT_DIRECTION:[I

    .line 835
    new-array v4, v3, [I

    fill-array-data v4, :array_2

    sput-object v4, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->WINDOW_STYLE_SCROLL_DIRECTION:[I

    .line 840
    new-array v4, v3, [Z

    fill-array-data v4, :array_3

    sput-object v4, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->WINDOW_STYLE_WORD_WRAP:[Z

    .line 843
    new-array v4, v3, [I

    sget v5, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->COLOR_SOLID_BLACK:I

    aput v5, v4, v1

    sget v6, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->COLOR_TRANSPARENT:I

    const/4 v7, 0x1

    aput v6, v4, v7

    aput v5, v4, v0

    aput v5, v4, v2

    const/4 v8, 0x4

    aput v6, v4, v8

    const/4 v9, 0x5

    aput v5, v4, v9

    const/4 v10, 0x6

    aput v5, v4, v10

    sput-object v4, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->WINDOW_STYLE_FILL:[I

    .line 849
    new-array v4, v3, [I

    fill-array-data v4, :array_4

    sput-object v4, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->PEN_STYLE_FONT_STYLE:[I

    .line 856
    new-array v4, v3, [I

    fill-array-data v4, :array_5

    sput-object v4, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->PEN_STYLE_EDGE_TYPE:[I

    .line 861
    new-array v3, v3, [I

    aput v5, v3, v1

    aput v5, v3, v7

    aput v5, v3, v0

    aput v5, v3, v2

    aput v5, v3, v8

    aput v6, v3, v9

    aput v6, v3, v10

    sput-object v3, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->PEN_STYLE_BACKGROUND:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x1
    .end array-data

    :array_3
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x3
        0x4
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 892
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 893
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    .line 894
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 895
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->reset()V

    .line 896
    return-void
.end method

.method public static getArgbColorFromCeaColor(III)I
    .locals 1
    .param p0, "red"    # I
    .param p1, "green"    # I
    .param p2, "blue"    # I

    .line 1222
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v0

    return v0
.end method

.method public static getArgbColorFromCeaColor(IIII)I
    .locals 6
    .param p0, "red"    # I
    .param p1, "green"    # I
    .param p2, "blue"    # I
    .param p3, "opacity"    # I

    .line 1226
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkIndex(III)I

    .line 1227
    invoke-static {p1, v1, v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkIndex(III)I

    .line 1228
    invoke-static {p2, v1, v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkIndex(III)I

    .line 1229
    invoke-static {p3, v1, v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkIndex(III)I

    .line 1232
    packed-switch p3, :pswitch_data_0

    .line 1245
    const/16 v0, 0xff

    goto :goto_0

    .line 1242
    :pswitch_0
    const/4 v0, 0x0

    .line 1243
    .local v0, "alpha":I
    goto :goto_0

    .line 1239
    .end local v0    # "alpha":I
    :pswitch_1
    const/16 v0, 0x7f

    .line 1240
    .restart local v0    # "alpha":I
    goto :goto_0

    .line 1236
    .end local v0    # "alpha":I
    :pswitch_2
    const/16 v0, 0xff

    .line 1237
    .restart local v0    # "alpha":I
    nop

    .line 1251
    :goto_0
    nop

    .line 1252
    const/16 v2, 0xff

    const/4 v3, 0x1

    if-le p0, v3, :cond_0

    const/16 v4, 0xff

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 1253
    :goto_1
    if-le p1, v3, :cond_1

    const/16 v5, 0xff

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    .line 1254
    :goto_2
    if-le p2, v3, :cond_2

    const/16 v1, 0xff

    nop

    .line 1251
    :cond_2
    invoke-static {v0, v4, v5, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public append(C)V
    .locals 3
    .param p1, "text"    # C

    .line 1085
    const/16 v0, 0xa

    if-ne p1, v0, :cond_7

    .line 1086
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->buildSpannableString()Landroid/text/SpannableString;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1087
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1089
    iget v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->italicsStartPosition:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 1090
    iput v2, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->italicsStartPosition:I

    goto :goto_0

    .line 1089
    :cond_0
    nop

    .line 1092
    :goto_0
    iget v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->underlineStartPosition:I

    if-eq v0, v1, :cond_1

    .line 1093
    iput v2, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->underlineStartPosition:I

    goto :goto_1

    .line 1092
    :cond_1
    nop

    .line 1095
    :goto_1
    iget v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->foregroundColorStartPosition:I

    if-eq v0, v1, :cond_2

    .line 1096
    iput v2, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->foregroundColorStartPosition:I

    goto :goto_2

    .line 1095
    :cond_2
    nop

    .line 1098
    :goto_2
    iget v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->backgroundColorStartPosition:I

    if-eq v0, v1, :cond_3

    .line 1099
    iput v2, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->backgroundColorStartPosition:I

    goto :goto_3

    .line 1098
    :cond_3
    nop

    .line 1102
    :goto_3
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->rowLock:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->rowCount:I

    if-ge v0, v1, :cond_4

    goto :goto_4

    :cond_4
    goto :goto_5

    :cond_5
    :goto_4
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    .line 1103
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xf

    if-lt v0, v1, :cond_6

    .line 1104
    :goto_5
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 1103
    :cond_6
    goto :goto_6

    .line 1107
    :cond_7
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 1109
    :goto_6
    return-void
.end method

.method public backspace()V
    .locals 3

    .line 1078
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 1079
    .local v0, "length":I
    if-lez v0, :cond_0

    .line 1080
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 1079
    :cond_0
    nop

    .line 1082
    :goto_0
    return-void
.end method

.method public build()Landroidx/media2/exoplayer/external/text/cea/Cea708Cue;
    .locals 20

    .line 1142
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1144
    const/4 v1, 0x0

    return-object v1

    .line 1147
    :cond_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1150
    .local v1, "cueString":Landroid/text/SpannableStringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, v0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1151
    iget-object v3, v0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1152
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 1150
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1155
    .end local v2    # "i":I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->buildSpannableString()Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1160
    iget v2, v0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->justification:I

    packed-switch v2, :pswitch_data_0

    .line 1173
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const/16 v4, 0x2b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unexpected justification value: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1170
    :pswitch_0
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 1171
    .local v2, "alignment":Landroid/text/Layout$Alignment;
    move-object v14, v2

    goto :goto_1

    .line 1167
    .end local v2    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_1
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 1168
    .restart local v2    # "alignment":Landroid/text/Layout$Alignment;
    move-object v14, v2

    goto :goto_1

    .line 1164
    .end local v2    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_2
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 1165
    .restart local v2    # "alignment":Landroid/text/Layout$Alignment;
    move-object v14, v2

    .line 1178
    .end local v2    # "alignment":Landroid/text/Layout$Alignment;
    .local v14, "alignment":Landroid/text/Layout$Alignment;
    :goto_1
    iget-boolean v2, v0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->relativePositioning:Z

    if-eqz v2, :cond_2

    .line 1179
    iget v2, v0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->horizontalAnchor:I

    int-to-float v2, v2

    const/high16 v3, 0x42c60000    # 99.0f

    div-float/2addr v2, v3

    .line 1180
    .local v2, "position":F
    iget v4, v0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->verticalAnchor:I

    int-to-float v4, v4

    div-float/2addr v4, v3

    goto :goto_2

    .line 1182
    .end local v2    # "position":F
    :cond_2
    iget v2, v0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->horizontalAnchor:I

    int-to-float v2, v2

    const/high16 v3, 0x43510000    # 209.0f

    div-float/2addr v2, v3

    .line 1183
    .restart local v2    # "position":F
    iget v3, v0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->verticalAnchor:I

    int-to-float v3, v3

    const/high16 v4, 0x42940000    # 74.0f

    div-float v4, v3, v4

    .line 1186
    .local v4, "line":F
    :goto_2
    const v3, 0x3f666666    # 0.9f

    mul-float v5, v2, v3

    const v6, 0x3d4ccccd    # 0.05f

    add-float v15, v5, v6

    .line 1187
    .end local v2    # "position":F
    .local v15, "position":F
    mul-float v3, v3, v4

    add-float v16, v3, v6

    .line 1197
    .end local v4    # "line":F
    .local v16, "line":F
    iget v2, v0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->anchorId:I

    rem-int/lit8 v3, v2, 0x3

    const/4 v4, 0x1

    if-nez v3, :cond_3

    .line 1198
    const/4 v2, 0x0

    move/from16 v17, v2

    goto :goto_3

    .line 1199
    :cond_3
    rem-int/lit8 v2, v2, 0x3

    if-ne v2, v4, :cond_4

    .line 1200
    const/4 v2, 0x1

    move/from16 v17, v2

    goto :goto_3

    .line 1202
    :cond_4
    const/4 v2, 0x2

    move/from16 v17, v2

    .line 1206
    .local v17, "verticalAnchorType":I
    :goto_3
    iget v2, v0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->anchorId:I

    div-int/lit8 v3, v2, 0x3

    if-nez v3, :cond_5

    .line 1207
    const/4 v2, 0x0

    move/from16 v18, v2

    goto :goto_4

    .line 1208
    :cond_5
    div-int/lit8 v2, v2, 0x3

    if-ne v2, v4, :cond_6

    .line 1209
    const/4 v2, 0x1

    move/from16 v18, v2

    goto :goto_4

    .line 1211
    :cond_6
    const/4 v2, 0x2

    move/from16 v18, v2

    .line 1214
    .local v18, "horizontalAnchorType":I
    :goto_4
    iget v2, v0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->windowFillColor:I

    sget v3, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->COLOR_SOLID_BLACK:I

    if-eq v2, v3, :cond_7

    const/4 v11, 0x1

    goto :goto_5

    :cond_7
    const/4 v2, 0x0

    const/4 v11, 0x0

    .line 1216
    .local v11, "windowColorSet":Z
    :goto_5
    new-instance v19, Landroidx/media2/exoplayer/external/text/cea/Cea708Cue;

    const/4 v6, 0x0

    const/4 v10, 0x1

    iget v12, v0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->windowFillColor:I

    iget v13, v0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->priority:I

    move-object/from16 v2, v19

    move-object v3, v1

    move-object v4, v14

    move/from16 v5, v16

    move/from16 v7, v17

    move v8, v15

    move/from16 v9, v18

    invoke-direct/range {v2 .. v13}, Landroidx/media2/exoplayer/external/text/cea/Cea708Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZII)V

    return-object v19

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public buildSpannableString()Landroid/text/SpannableString;
    .locals 6

    .line 1112
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1114
    .local v0, "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 1116
    .local v1, "length":I
    if-lez v1, :cond_4

    .line 1117
    iget v2, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->italicsStartPosition:I

    const/16 v3, 0x21

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 1118
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v5, 0x2

    invoke-direct {v2, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget v5, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->italicsStartPosition:I

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 1117
    :cond_0
    nop

    .line 1122
    :goto_0
    iget v2, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->underlineStartPosition:I

    if-eq v2, v4, :cond_1

    .line 1123
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    iget v5, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->underlineStartPosition:I

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 1122
    :cond_1
    nop

    .line 1127
    :goto_1
    iget v2, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->foregroundColorStartPosition:I

    if-eq v2, v4, :cond_2

    .line 1128
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget v5, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->foregroundColor:I

    invoke-direct {v2, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v5, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->foregroundColorStartPosition:I

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 1127
    :cond_2
    nop

    .line 1132
    :goto_2
    iget v2, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->backgroundColorStartPosition:I

    if-eq v2, v4, :cond_3

    .line 1133
    new-instance v2, Landroid/text/style/BackgroundColorSpan;

    iget v4, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->backgroundColor:I

    invoke-direct {v2, v4}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iget v4, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->backgroundColorStartPosition:I

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    .line 1132
    :cond_3
    goto :goto_3

    .line 1116
    :cond_4
    nop

    .line 1138
    :goto_3
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v2
.end method

.method public clear()V
    .locals 1

    .line 924
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 925
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 926
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->italicsStartPosition:I

    .line 927
    iput v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->underlineStartPosition:I

    .line 928
    iput v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->foregroundColorStartPosition:I

    .line 929
    iput v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->backgroundColorStartPosition:I

    .line 930
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->row:I

    .line 931
    return-void
.end method

.method public defineWindow(ZZZIZIIIIIII)V
    .locals 19
    .param p1, "visible"    # Z
    .param p2, "rowLock"    # Z
    .param p3, "columnLock"    # Z
    .param p4, "priority"    # I
    .param p5, "relativePositioning"    # Z
    .param p6, "verticalAnchor"    # I
    .param p7, "horizontalAnchor"    # I
    .param p8, "rowCount"    # I
    .param p9, "columnCount"    # I
    .param p10, "anchorId"    # I
    .param p11, "windowStyleId"    # I
    .param p12, "penStyleId"    # I

    .line 948
    move-object/from16 v8, p0

    move/from16 v9, p2

    move/from16 v10, p11

    move/from16 v11, p12

    const/4 v0, 0x1

    iput-boolean v0, v8, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->defined:Z

    .line 949
    move/from16 v12, p1

    iput-boolean v12, v8, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->visible:Z

    .line 950
    iput-boolean v9, v8, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->rowLock:Z

    .line 951
    move/from16 v13, p4

    iput v13, v8, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->priority:I

    .line 952
    move/from16 v14, p5

    iput-boolean v14, v8, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->relativePositioning:Z

    .line 953
    move/from16 v15, p6

    iput v15, v8, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->verticalAnchor:I

    .line 954
    move/from16 v7, p7

    iput v7, v8, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->horizontalAnchor:I

    .line 955
    move/from16 v6, p10

    iput v6, v8, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->anchorId:I

    .line 958
    iget v0, v8, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->rowCount:I

    add-int/lit8 v1, p8, 0x1

    if-eq v0, v1, :cond_3

    .line 959
    add-int/lit8 v0, p8, 0x1

    iput v0, v8, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->rowCount:I

    .line 962
    :goto_0
    if-eqz v9, :cond_1

    iget-object v0, v8, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, v8, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->rowCount:I

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    goto :goto_2

    :cond_1
    :goto_1
    iget-object v0, v8, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    .line 963
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xf

    if-lt v0, v1, :cond_2

    .line 964
    :goto_2
    iget-object v0, v8, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 963
    :cond_2
    goto :goto_3

    .line 958
    :cond_3
    nop

    .line 970
    :goto_3
    if-eqz v10, :cond_4

    iget v0, v8, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->windowStyleId:I

    if-eq v0, v10, :cond_4

    .line 971
    iput v10, v8, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->windowStyleId:I

    .line 973
    add-int/lit8 v16, v10, -0x1

    .line 975
    .local v16, "windowStyleIdIndex":I
    sget-object v0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->WINDOW_STYLE_FILL:[I

    aget v1, v0, v16

    sget v2, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->COLOR_TRANSPARENT:I

    sget-object v0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->WINDOW_STYLE_WORD_WRAP:[Z

    aget-boolean v3, v0, v16

    const/4 v4, 0x0

    sget-object v0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->WINDOW_STYLE_PRINT_DIRECTION:[I

    aget v5, v0, v16

    sget-object v0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->WINDOW_STYLE_SCROLL_DIRECTION:[I

    aget v17, v0, v16

    sget-object v0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->WINDOW_STYLE_JUSTIFICATION:[I

    aget v18, v0, v16

    move-object/from16 v0, p0

    move/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->setWindowAttributes(IIZIIII)V

    goto :goto_4

    .line 970
    .end local v16    # "windowStyleIdIndex":I
    :cond_4
    nop

    .line 982
    :goto_4
    if-eqz v11, :cond_5

    iget v0, v8, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->penStyleId:I

    if-eq v0, v11, :cond_5

    .line 983
    iput v11, v8, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->penStyleId:I

    .line 985
    add-int/lit8 v16, v11, -0x1

    .line 988
    .local v16, "penStyleIdIndex":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->PEN_STYLE_EDGE_TYPE:[I

    aget v6, v0, v16

    sget-object v0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->PEN_STYLE_FONT_STYLE:[I

    aget v7, v0, v16

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->setPenAttributes(IIIZZII)V

    .line 990
    sget v0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->COLOR_SOLID_WHITE:I

    sget-object v1, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->PEN_STYLE_BACKGROUND:[I

    aget v1, v1, v16

    sget v2, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->COLOR_SOLID_BLACK:I

    invoke-virtual {v8, v0, v1, v2}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->setPenColor(III)V

    goto :goto_5

    .line 982
    .end local v16    # "penStyleIdIndex":I
    :cond_5
    nop

    .line 992
    :goto_5
    return-void
.end method

.method public isDefined()Z
    .locals 1

    .line 934
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->defined:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 899
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->isDefined()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 942
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->visible:Z

    return v0
.end method

.method public reset()V
    .locals 2

    .line 903
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->clear()V

    .line 905
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->defined:Z

    .line 906
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->visible:Z

    .line 907
    const/4 v1, 0x4

    iput v1, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->priority:I

    .line 908
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->relativePositioning:Z

    .line 909
    iput v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->verticalAnchor:I

    .line 910
    iput v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->horizontalAnchor:I

    .line 911
    iput v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->anchorId:I

    .line 912
    const/16 v1, 0xf

    iput v1, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->rowCount:I

    .line 913
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->rowLock:Z

    .line 914
    iput v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->justification:I

    .line 915
    iput v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->windowStyleId:I

    .line 916
    iput v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->penStyleId:I

    .line 917
    sget v0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->COLOR_SOLID_BLACK:I

    iput v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->windowFillColor:I

    .line 919
    sget v1, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->COLOR_SOLID_WHITE:I

    iput v1, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->foregroundColor:I

    .line 920
    iput v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->backgroundColor:I

    .line 921
    return-void
.end method

.method public setPenAttributes(IIIZZII)V
    .locals 6
    .param p1, "textTag"    # I
    .param p2, "offset"    # I
    .param p3, "penSize"    # I
    .param p4, "italicsToggle"    # Z
    .param p5, "underlineToggle"    # Z
    .param p6, "edgeType"    # I
    .param p7, "fontStyle"    # I

    .line 1012
    iget v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->italicsStartPosition:I

    const/16 v1, 0x21

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 1013
    if-nez p4, :cond_0

    .line 1014
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget v4, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->italicsStartPosition:I

    iget-object v5, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 1015
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 1014
    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1016
    iput v2, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->italicsStartPosition:I

    goto :goto_0

    .line 1013
    :cond_0
    goto :goto_0

    .line 1018
    :cond_1
    if-eqz p4, :cond_2

    .line 1019
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->italicsStartPosition:I

    goto :goto_0

    .line 1018
    :cond_2
    nop

    .line 1022
    :goto_0
    iget v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->underlineStartPosition:I

    if-eq v0, v2, :cond_4

    .line 1023
    if-nez p5, :cond_3

    .line 1024
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v3, Landroid/text/style/UnderlineSpan;

    invoke-direct {v3}, Landroid/text/style/UnderlineSpan;-><init>()V

    iget v4, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->underlineStartPosition:I

    iget-object v5, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 1025
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 1024
    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1026
    iput v2, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->underlineStartPosition:I

    goto :goto_1

    .line 1023
    :cond_3
    goto :goto_1

    .line 1028
    :cond_4
    if-eqz p5, :cond_5

    .line 1029
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->underlineStartPosition:I

    goto :goto_1

    .line 1028
    :cond_5
    nop

    .line 1034
    :goto_1
    return-void
.end method

.method public setPenColor(III)V
    .locals 6
    .param p1, "foregroundColor"    # I
    .param p2, "backgroundColor"    # I
    .param p3, "edgeColor"    # I

    .line 1037
    iget v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->foregroundColorStartPosition:I

    const/16 v1, 0x21

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 1038
    iget v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->foregroundColor:I

    if-eq v0, p1, :cond_0

    .line 1039
    iget-object v3, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->foregroundColorStartPosition:I

    iget-object v5, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 1040
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 1039
    invoke-virtual {v3, v4, v0, v5, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 1038
    :cond_0
    goto :goto_0

    .line 1037
    :cond_1
    nop

    .line 1044
    :goto_0
    sget v0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->COLOR_SOLID_WHITE:I

    if-eq p1, v0, :cond_2

    .line 1045
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->foregroundColorStartPosition:I

    .line 1046
    iput p1, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->foregroundColor:I

    goto :goto_1

    .line 1044
    :cond_2
    nop

    .line 1049
    :goto_1
    iget v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->backgroundColorStartPosition:I

    if-eq v0, v2, :cond_4

    .line 1050
    iget v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->backgroundColor:I

    if-eq v0, p2, :cond_3

    .line 1051
    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v3, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v3, v0}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iget v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->backgroundColorStartPosition:I

    iget-object v4, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 1052
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 1051
    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 1050
    :cond_3
    goto :goto_2

    .line 1049
    :cond_4
    nop

    .line 1056
    :goto_2
    sget v0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->COLOR_SOLID_BLACK:I

    if-eq p2, v0, :cond_5

    .line 1057
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->backgroundColorStartPosition:I

    .line 1058
    iput p2, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->backgroundColor:I

    goto :goto_3

    .line 1056
    :cond_5
    nop

    .line 1062
    :goto_3
    return-void
.end method

.method public setPenLocation(II)V
    .locals 1
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 1071
    iget v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->row:I

    if-eq v0, p1, :cond_0

    .line 1072
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto :goto_0

    .line 1071
    :cond_0
    nop

    .line 1074
    :goto_0
    iput p1, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->row:I

    .line 1075
    return-void
.end method

.method public setVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .line 938
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->visible:Z

    .line 939
    return-void
.end method

.method public setWindowAttributes(IIZIIII)V
    .locals 0
    .param p1, "fillColor"    # I
    .param p2, "borderColor"    # I
    .param p3, "wordWrapToggle"    # Z
    .param p4, "borderType"    # I
    .param p5, "printDirection"    # I
    .param p6, "scrollDirection"    # I
    .param p7, "justification"    # I

    .line 997
    iput p1, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->windowFillColor:I

    .line 1002
    iput p7, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->justification:I

    .line 1004
    return-void
.end method
