.class Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;
.super Ljava/lang/Object;
.source "Cea608Decoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CueBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder$CueStyle;
    }
.end annotation


# static fields
.field private static final BASE_ROW:I = 0xf

.field private static final SCREEN_CHARWIDTH:I = 0x20


# instance fields
.field private captionMode:I

.field private captionRowCount:I

.field private final captionStringBuilder:Ljava/lang/StringBuilder;

.field private final cueStyles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder$CueStyle;",
            ">;"
        }
    .end annotation
.end field

.field private indent:I

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

.field private tabOffset:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "captionMode"    # I
    .param p2, "captionRowCount"    # I

    .line 765
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 766
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    .line 767
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    .line 768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    .line 769
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->reset(I)V

    .line 770
    invoke-virtual {p0, p2}, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->setCaptionRowCount(I)V

    .line 771
    return-void
.end method

.method static synthetic access$002(Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;I)I
    .locals 0
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;
    .param p1, "x1"    # I

    .line 748
    iput p1, p0, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->tabOffset:I

    return p1
.end method

.method static synthetic access$100(Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;

    .line 748
    iget v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->row:I

    return v0
.end method

.method static synthetic access$102(Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;I)I
    .locals 0
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;
    .param p1, "x1"    # I

    .line 748
    iput p1, p0, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->row:I

    return p1
.end method

.method static synthetic access$202(Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;I)I
    .locals 0
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;
    .param p1, "x1"    # I

    .line 748
    iput p1, p0, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->indent:I

    return p1
.end method

.method private buildCurrentLine()Landroid/text/SpannableString;
    .locals 16

    .line 915
    move-object/from16 v0, p0

    new-instance v1, Landroid/text/SpannableStringBuilder;

    iget-object v2, v0, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 916
    .local v1, "builder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 918
    .local v2, "length":I
    const/4 v3, -0x1

    .line 919
    .local v3, "underlineStartPosition":I
    const/4 v4, -0x1

    .line 920
    .local v4, "italicStartPosition":I
    const/4 v5, 0x0

    .line 921
    .local v5, "colorStartPosition":I
    const/4 v6, -0x1

    .line 923
    .local v6, "color":I
    const/4 v7, 0x0

    .line 924
    .local v7, "nextItalic":Z
    const/4 v8, -0x1

    .line 926
    .local v8, "nextColor":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    iget-object v10, v0, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_a

    .line 927
    iget-object v10, v0, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder$CueStyle;

    .line 928
    .local v10, "cueStyle":Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder$CueStyle;
    iget-boolean v12, v10, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder$CueStyle;->underline:Z

    .line 929
    .local v12, "underline":Z
    iget v13, v10, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder$CueStyle;->style:I

    .line 930
    .local v13, "style":I
    const/16 v14, 0x8

    if-eq v13, v14, :cond_2

    .line 932
    const/4 v14, 0x7

    if-ne v13, v14, :cond_0

    const/4 v15, 0x1

    goto :goto_1

    :cond_0
    const/4 v15, 0x0

    :goto_1
    move v7, v15

    .line 934
    if-ne v13, v14, :cond_1

    move v14, v8

    goto :goto_2

    :cond_1
    invoke-static {}, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder;->access$300()[I

    move-result-object v14

    aget v14, v14, v13

    :goto_2
    move v8, v14

    goto :goto_3

    .line 930
    :cond_2
    nop

    .line 937
    :goto_3
    iget v14, v10, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder$CueStyle;->start:I

    .line 938
    .local v14, "position":I
    add-int/lit8 v15, v9, 0x1

    iget-object v11, v0, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v15, v11, :cond_3

    iget-object v11, v0, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    add-int/lit8 v15, v9, 0x1

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder$CueStyle;

    iget v11, v11, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder$CueStyle;->start:I

    goto :goto_4

    :cond_3
    move v11, v2

    .line 939
    .local v11, "nextPosition":I
    :goto_4
    if-ne v14, v11, :cond_4

    .line 941
    goto :goto_7

    .line 945
    :cond_4
    const/4 v15, -0x1

    if-eq v3, v15, :cond_5

    if-nez v12, :cond_5

    .line 946
    invoke-static {v1, v3, v14}, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->setUnderlineSpan(Landroid/text/SpannableStringBuilder;II)V

    .line 947
    const/4 v3, -0x1

    goto :goto_5

    .line 945
    :cond_5
    nop

    .line 948
    const/4 v15, -0x1

    if-ne v3, v15, :cond_6

    if-eqz v12, :cond_6

    .line 949
    move v3, v14

    goto :goto_5

    .line 948
    :cond_6
    nop

    .line 952
    :goto_5
    const/4 v15, -0x1

    if-eq v4, v15, :cond_7

    if-nez v7, :cond_7

    .line 953
    invoke-static {v1, v4, v14}, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->setItalicSpan(Landroid/text/SpannableStringBuilder;II)V

    .line 954
    const/4 v4, -0x1

    goto :goto_6

    .line 952
    :cond_7
    nop

    .line 955
    const/4 v15, -0x1

    if-ne v4, v15, :cond_8

    if-eqz v7, :cond_8

    .line 956
    move v4, v14

    goto :goto_6

    .line 955
    :cond_8
    nop

    .line 959
    :goto_6
    if-eq v8, v6, :cond_9

    .line 960
    invoke-static {v1, v5, v14, v6}, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->setColorSpan(Landroid/text/SpannableStringBuilder;III)V

    .line 961
    move v6, v8

    .line 962
    move v5, v14

    goto :goto_7

    .line 959
    :cond_9
    nop

    .line 926
    .end local v10    # "cueStyle":Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder$CueStyle;
    .end local v11    # "nextPosition":I
    .end local v12    # "underline":Z
    .end local v13    # "style":I
    .end local v14    # "position":I
    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 967
    .end local v9    # "i":I
    :cond_a
    const/4 v9, -0x1

    if-eq v3, v9, :cond_b

    if-eq v3, v2, :cond_b

    .line 968
    invoke-static {v1, v3, v2}, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->setUnderlineSpan(Landroid/text/SpannableStringBuilder;II)V

    goto :goto_8

    .line 967
    :cond_b
    nop

    .line 970
    :goto_8
    if-eq v4, v9, :cond_c

    if-eq v4, v2, :cond_c

    .line 971
    invoke-static {v1, v4, v2}, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->setItalicSpan(Landroid/text/SpannableStringBuilder;II)V

    goto :goto_9

    .line 970
    :cond_c
    nop

    .line 973
    :goto_9
    if-eq v5, v2, :cond_d

    .line 974
    invoke-static {v1, v5, v2, v6}, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->setColorSpan(Landroid/text/SpannableStringBuilder;III)V

    goto :goto_a

    .line 973
    :cond_d
    nop

    .line 977
    :goto_a
    new-instance v9, Landroid/text/SpannableString;

    invoke-direct {v9, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v9
.end method

.method private static setColorSpan(Landroid/text/SpannableStringBuilder;III)V
    .locals 2
    .param p0, "builder"    # Landroid/text/SpannableStringBuilder;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "color"    # I

    .line 990
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 992
    return-void

    .line 994
    :cond_0
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v1, 0x21

    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 995
    return-void
.end method

.method private static setItalicSpan(Landroid/text/SpannableStringBuilder;II)V
    .locals 2
    .param p0, "builder"    # Landroid/text/SpannableStringBuilder;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 985
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v1, 0x21

    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 986
    return-void
.end method

.method private static setUnderlineSpan(Landroid/text/SpannableStringBuilder;II)V
    .locals 2
    .param p0, "builder"    # Landroid/text/SpannableStringBuilder;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 981
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    const/16 v1, 0x21

    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 982
    return-void
.end method


# virtual methods
.method public append(C)V
    .locals 1
    .param p1, "text"    # C

    .line 819
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 820
    return-void
.end method

.method public backspace()V
    .locals 4

    .line 802
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 803
    .local v0, "length":I
    if-lez v0, :cond_2

    .line 804
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 806
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 807
    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder$CueStyle;

    .line 808
    .local v2, "style":Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder$CueStyle;
    iget v3, v2, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder$CueStyle;->start:I

    if-ne v3, v0, :cond_0

    .line 809
    iget v3, v2, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder$CueStyle;->start:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder$CueStyle;->start:I

    .line 806
    .end local v2    # "style":Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder$CueStyle;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 808
    .restart local v2    # "style":Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder$CueStyle;
    :cond_0
    goto :goto_1

    .line 806
    .end local v2    # "style":Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder$CueStyle;
    :cond_1
    goto :goto_1

    .line 803
    .end local v1    # "i":I
    :cond_2
    nop

    .line 816
    :goto_1
    return-void
.end method

.method public build(I)Landroidx/media2/exoplayer/external/text/Cue;
    .locals 21
    .param p1, "forcedPositionAnchor"    # I

    .line 833
    move-object/from16 v0, p0

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 835
    .local v1, "cueString":Landroid/text/SpannableStringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, v0, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 836
    iget-object v3, v0, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 837
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 835
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 840
    .end local v2    # "i":I
    :cond_0
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->buildCurrentLine()Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 842
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 844
    const/4 v2, 0x0

    return-object v2

    .line 849
    :cond_1
    iget v2, v0, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->indent:I

    iget v3, v0, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->tabOffset:I

    add-int v11, v2, v3

    .line 851
    .local v11, "startPadding":I
    rsub-int/lit8 v2, v11, 0x20

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    sub-int v12, v2, v3

    .line 852
    .local v12, "endPadding":I
    sub-int v13, v11, v12

    .line 853
    .local v13, "startEndPaddingDelta":I
    const/high16 v2, -0x80000000

    move/from16 v14, p1

    if-eq v14, v2, :cond_2

    .line 854
    move/from16 v2, p1

    move v15, v2

    goto :goto_3

    .line 855
    :cond_2
    iget v2, v0, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->captionMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 856
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v4, 0x3

    if-lt v2, v4, :cond_4

    if-gez v12, :cond_3

    goto :goto_1

    :cond_3
    goto :goto_2

    .line 860
    :cond_4
    :goto_1
    const/4 v2, 0x1

    move v15, v2

    goto :goto_3

    .line 855
    :cond_5
    nop

    .line 861
    :goto_2
    iget v2, v0, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->captionMode:I

    if-ne v2, v3, :cond_6

    if-lez v13, :cond_6

    .line 863
    const/4 v2, 0x2

    move v15, v2

    goto :goto_3

    .line 861
    :cond_6
    nop

    .line 866
    const/4 v2, 0x0

    move v15, v2

    .line 870
    .local v15, "positionAnchor":I
    :goto_3
    const v2, 0x3dcccccd    # 0.1f

    const v3, 0x3f4ccccd    # 0.8f

    const/high16 v4, 0x42000000    # 32.0f

    packed-switch v15, :pswitch_data_0

    .line 881
    int-to-float v5, v11

    div-float/2addr v5, v4

    .line 883
    .local v5, "position":F
    mul-float v3, v3, v5

    add-float/2addr v3, v2

    move/from16 v16, v3

    goto :goto_4

    .line 875
    .end local v5    # "position":F
    :pswitch_0
    rsub-int/lit8 v5, v12, 0x20

    int-to-float v5, v5

    div-float/2addr v5, v4

    .line 877
    .restart local v5    # "position":F
    mul-float v3, v3, v5

    add-float/2addr v3, v2

    .line 878
    .end local v5    # "position":F
    .local v3, "position":F
    move/from16 v16, v3

    goto :goto_4

    .line 872
    .end local v3    # "position":F
    :pswitch_1
    const/high16 v2, 0x3f000000    # 0.5f

    .line 873
    .local v2, "position":F
    move/from16 v16, v2

    .line 890
    .end local v2    # "position":F
    .local v16, "position":F
    :goto_4
    iget v2, v0, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->captionMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_8

    iget v2, v0, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->row:I

    const/4 v3, 0x7

    if-le v2, v3, :cond_7

    goto :goto_5

    .line 897
    :cond_7
    const/4 v2, 0x0

    .line 900
    .local v2, "lineAnchor":I
    iget v3, v0, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->row:I

    move/from16 v17, v2

    move v10, v3

    goto :goto_6

    .line 890
    .end local v2    # "lineAnchor":I
    :cond_8
    :goto_5
    nop

    .line 891
    const/4 v2, 0x2

    .line 892
    .restart local v2    # "lineAnchor":I
    iget v3, v0, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->row:I

    add-int/lit8 v3, v3, -0xf

    .line 895
    .local v3, "line":I
    add-int/lit8 v3, v3, -0x2

    move/from16 v17, v2

    move v10, v3

    .line 903
    .end local v2    # "lineAnchor":I
    .end local v3    # "line":I
    .local v10, "line":I
    .local v17, "lineAnchor":I
    :goto_6
    new-instance v18, Landroidx/media2/exoplayer/external/text/Cue;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    int-to-float v5, v10

    const/4 v6, 0x1

    const/16 v19, 0x1

    move-object/from16 v2, v18

    move-object v3, v1

    move/from16 v7, v17

    move/from16 v8, v16

    move v9, v15

    move/from16 v20, v10

    .end local v10    # "line":I
    .local v20, "line":I
    move/from16 v10, v19

    invoke-direct/range {v2 .. v10}, Landroidx/media2/exoplayer/external/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V

    return-object v18

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isEmpty()Z
    .locals 1

    .line 784
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    .line 785
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    .line 786
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    goto :goto_0

    .line 785
    :cond_1
    goto :goto_0

    .line 784
    :cond_2
    nop

    .line 786
    :goto_0
    const/4 v0, 0x0

    .line 784
    :goto_1
    return v0
.end method

.method public reset(I)V
    .locals 2
    .param p1, "captionMode"    # I

    .line 774
    iput p1, p0, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->captionMode:I

    .line 775
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 776
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 777
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 778
    const/16 v0, 0xf

    iput v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->row:I

    .line 779
    iput v1, p0, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->indent:I

    .line 780
    iput v1, p0, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->tabOffset:I

    .line 781
    return-void
.end method

.method public rollUp()V
    .locals 3

    .line 823
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->buildCurrentLine()Landroid/text/SpannableString;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 824
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 825
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 826
    iget v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->captionRowCount:I

    iget v2, p0, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->row:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 827
    .local v0, "numRows":I
    :goto_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v0, :cond_0

    .line 828
    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 830
    :cond_0
    return-void
.end method

.method public setCaptionMode(I)V
    .locals 0
    .param p1, "captionMode"    # I

    .line 790
    iput p1, p0, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->captionMode:I

    .line 791
    return-void
.end method

.method public setCaptionRowCount(I)V
    .locals 0
    .param p1, "captionRowCount"    # I

    .line 794
    iput p1, p0, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->captionRowCount:I

    .line 795
    return-void
.end method

.method public setStyle(IZ)V
    .locals 3
    .param p1, "style"    # I
    .param p2, "underline"    # Z

    .line 798
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    new-instance v1, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder$CueStyle;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-direct {v1, p1, p2, v2}, Landroidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder$CueStyle;-><init>(IZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 799
    return-void
.end method
