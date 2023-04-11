.class public final Landroidx/media2/exoplayer/external/text/tx3g/Tx3gDecoder;
.super Landroidx/media2/exoplayer/external/text/SimpleSubtitleDecoder;
.source "Tx3gDecoder.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final BOM_UTF16_BE:C = '\ufeff'

.field private static final BOM_UTF16_LE:C = '\ufffe'

.field private static final DEFAULT_COLOR:I = -0x1

.field private static final DEFAULT_FONT_FACE:I = 0x0

.field private static final DEFAULT_FONT_FAMILY:Ljava/lang/String; = "sans-serif"

.field private static final DEFAULT_VERTICAL_PLACEMENT:F = 0.85f

.field private static final FONT_FACE_BOLD:I = 0x1

.field private static final FONT_FACE_ITALIC:I = 0x2

.field private static final FONT_FACE_UNDERLINE:I = 0x4

.field private static final SIZE_ATOM_HEADER:I = 0x8

.field private static final SIZE_BOM_UTF16:I = 0x2

.field private static final SIZE_SHORT:I = 0x2

.field private static final SIZE_STYLE_RECORD:I = 0xc

.field private static final SPAN_PRIORITY_HIGH:I = 0x0

.field private static final SPAN_PRIORITY_LOW:I = 0xff0000

.field private static final TX3G_SERIF:Ljava/lang/String; = "Serif"

.field private static final TYPE_STYL:I = 0x7374796c

.field private static final TYPE_TBOX:I = 0x74626f78


# instance fields
.field private calculatedVideoTrackHeight:I

.field private customVerticalPlacement:Z

.field private defaultColorRgba:I

.field private defaultFontFace:I

.field private defaultFontFamily:Ljava/lang/String;

.field private defaultVerticalPlacement:F

.field private final parsableByteArray:Landroidx/media2/exoplayer/external/util/ParsableByteArray;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 87
    .local p1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const-string v0, "Tx3gDecoder"

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/text/SimpleSubtitleDecoder;-><init>(Ljava/lang/String;)V

    .line 88
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/tx3g/Tx3gDecoder;->parsableByteArray:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 89
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/text/tx3g/Tx3gDecoder;->decodeInitializationData(Ljava/util/List;)V

    .line 90
    return-void
.end method

.method private applyStyleRecord(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Landroid/text/SpannableStringBuilder;)V
    .locals 10
    .param p1, "parsableByteArray"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p2, "cueText"    # Landroid/text/SpannableStringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;
        }
    .end annotation

    .line 182
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xc

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/text/tx3g/Tx3gDecoder;->assertTrue(Z)V

    .line 183
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    .line 184
    .local v0, "start":I
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    .line 185
    .local v8, "end":I
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 186
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    .line 187
    .local v9, "fontFace":I
    invoke-virtual {p1, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 188
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 189
    .local v1, "colorRgba":I
    iget v4, p0, Landroidx/media2/exoplayer/external/text/tx3g/Tx3gDecoder;->defaultFontFace:I

    const/4 v7, 0x0

    move-object v2, p2

    move v3, v9

    move v5, v0

    move v6, v8

    invoke-static/range {v2 .. v7}, Landroidx/media2/exoplayer/external/text/tx3g/Tx3gDecoder;->attachFontFace(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 190
    iget v4, p0, Landroidx/media2/exoplayer/external/text/tx3g/Tx3gDecoder;->defaultColorRgba:I

    move v3, v1

    invoke-static/range {v2 .. v7}, Landroidx/media2/exoplayer/external/text/tx3g/Tx3gDecoder;->attachColor(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 191
    return-void
.end method

.method private static assertTrue(Z)V
    .locals 2
    .param p0, "checkValue"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;
        }
    .end annotation

    .line 237
    if-eqz p0, :cond_0

    .line 240
    return-void

    .line 238
    :cond_0
    new-instance v0, Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;

    const-string v1, "Unexpected subtitle format."

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static attachColor(Landroid/text/SpannableStringBuilder;IIIII)V
    .locals 3
    .param p0, "cueText"    # Landroid/text/SpannableStringBuilder;
    .param p1, "colorRgba"    # I
    .param p2, "defaultColorRgba"    # I
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "spanPriority"    # I

    .line 220
    if-eq p1, p2, :cond_0

    .line 221
    and-int/lit16 v0, p1, 0xff

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    .line 222
    .local v0, "colorArgb":I
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    or-int/lit8 v2, p5, 0x21

    invoke-virtual {p0, v1, p3, p4, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 220
    .end local v0    # "colorArgb":I
    :cond_0
    nop

    .line 225
    :goto_0
    return-void
.end method

.method private static attachFontFace(Landroid/text/SpannableStringBuilder;IIIII)V
    .locals 7
    .param p0, "cueText"    # Landroid/text/SpannableStringBuilder;
    .param p1, "fontFace"    # I
    .param p2, "defaultFontFace"    # I
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "spanPriority"    # I

    .line 195
    if-eq p1, p2, :cond_8

    .line 196
    or-int/lit8 v0, p5, 0x21

    .line 197
    .local v0, "flags":I
    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 198
    .local v1, "isBold":Z
    :goto_0
    and-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 199
    .local v4, "isItalic":Z
    :goto_1
    if-eqz v1, :cond_3

    .line 200
    if-eqz v4, :cond_2

    .line 201
    new-instance v5, Landroid/text/style/StyleSpan;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v5, p3, p4, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 203
    :cond_2
    new-instance v5, Landroid/text/style/StyleSpan;

    invoke-direct {v5, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v5, p3, p4, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 205
    :cond_3
    if-eqz v4, :cond_4

    .line 206
    new-instance v5, Landroid/text/style/StyleSpan;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v5, p3, p4, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 205
    :cond_4
    nop

    .line 208
    :goto_2
    and-int/lit8 v5, p1, 0x4

    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    .line 209
    .local v3, "isUnderlined":Z
    :goto_3
    if-eqz v3, :cond_6

    .line 210
    new-instance v5, Landroid/text/style/UnderlineSpan;

    invoke-direct {v5}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p0, v5, p3, p4, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4

    .line 209
    :cond_6
    nop

    .line 212
    :goto_4
    if-nez v3, :cond_7

    if-nez v1, :cond_7

    if-nez v4, :cond_7

    .line 213
    new-instance v5, Landroid/text/style/StyleSpan;

    invoke-direct {v5, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v5, p3, p4, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_5

    .line 212
    :cond_7
    goto :goto_5

    .line 195
    .end local v0    # "flags":I
    .end local v1    # "isBold":Z
    .end local v3    # "isUnderlined":Z
    .end local v4    # "isItalic":Z
    :cond_8
    nop

    .line 216
    :goto_5
    return-void
.end method

.method private static attachFontFamily(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 2
    .param p0, "cueText"    # Landroid/text/SpannableStringBuilder;
    .param p1, "fontFamily"    # Ljava/lang/String;
    .param p2, "defaultFontFamily"    # Ljava/lang/String;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "spanPriority"    # I

    .line 230
    if-eq p1, p2, :cond_0

    .line 231
    new-instance v0, Landroid/text/style/TypefaceSpan;

    invoke-direct {v0, p1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    or-int/lit8 v1, p5, 0x21

    invoke-virtual {p0, v0, p3, p4, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 230
    :cond_0
    nop

    .line 234
    :goto_0
    return-void
.end method

.method private decodeInitializationData(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 93
    .local p1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const v0, 0x3f59999a    # 0.85f

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 94
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v2, v2

    const/16 v4, 0x30

    if-eq v2, v4, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v2, v2

    const/16 v4, 0x35

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    goto/16 :goto_3

    .line 95
    :cond_1
    :goto_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 96
    .local v2, "initializationBytes":[B
    const/16 v4, 0x18

    aget-byte v5, v2, v4

    iput v5, p0, Landroidx/media2/exoplayer/external/text/tx3g/Tx3gDecoder;->defaultFontFace:I

    .line 97
    const/16 v5, 0x1a

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v4, v5, 0x18

    const/16 v5, 0x1b

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/16 v5, 0x1c

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/16 v5, 0x1d

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    iput v4, p0, Landroidx/media2/exoplayer/external/text/tx3g/Tx3gDecoder;->defaultColorRgba:I

    .line 101
    array-length v4, v2

    const/16 v5, 0x2b

    sub-int/2addr v4, v5

    .line 102
    invoke-static {v2, v5, v4}, Landroidx/media2/exoplayer/external/util/Util;->fromUtf8Bytes([BII)Ljava/lang/String;

    move-result-object v4

    .line 103
    .local v4, "fontFamily":Ljava/lang/String;
    const-string v5, "Serif"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "serif"

    goto :goto_1

    :cond_2
    const-string v5, "sans-serif"

    :goto_1
    iput-object v5, p0, Landroidx/media2/exoplayer/external/text/tx3g/Tx3gDecoder;->defaultFontFamily:Ljava/lang/String;

    .line 105
    const/16 v5, 0x19

    aget-byte v5, v2, v5

    mul-int/lit8 v5, v5, 0x14

    iput v5, p0, Landroidx/media2/exoplayer/external/text/tx3g/Tx3gDecoder;->calculatedVideoTrackHeight:I

    .line 106
    aget-byte v5, v2, v1

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_3

    const/4 v1, 0x1

    nop

    :cond_3
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/text/tx3g/Tx3gDecoder;->customVerticalPlacement:Z

    .line 107
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/text/tx3g/Tx3gDecoder;->customVerticalPlacement:Z

    if-eqz v1, :cond_4

    .line 108
    const/16 v0, 0xa

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/16 v1, 0xb

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 110
    .local v0, "requestedVerticalPlacement":I
    int-to-float v1, v0

    iget v3, p0, Landroidx/media2/exoplayer/external/text/tx3g/Tx3gDecoder;->calculatedVideoTrackHeight:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    iput v1, p0, Landroidx/media2/exoplayer/external/text/tx3g/Tx3gDecoder;->defaultVerticalPlacement:F

    .line 111
    iget v1, p0, Landroidx/media2/exoplayer/external/text/tx3g/Tx3gDecoder;->defaultVerticalPlacement:F

    const/4 v3, 0x0

    const v5, 0x3f733333    # 0.95f

    invoke-static {v1, v3, v5}, Landroidx/media2/exoplayer/external/util/Util;->constrainValue(FFF)F

    move-result v1

    iput v1, p0, Landroidx/media2/exoplayer/external/text/tx3g/Tx3gDecoder;->defaultVerticalPlacement:F

    .line 112
    .end local v0    # "requestedVerticalPlacement":I
    goto :goto_2

    .line 113
    :cond_4
    iput v0, p0, Landroidx/media2/exoplayer/external/text/tx3g/Tx3gDecoder;->defaultVerticalPlacement:F

    .line 115
    .end local v2    # "initializationBytes":[B
    .end local v4    # "fontFamily":Ljava/lang/String;
    :goto_2
    goto :goto_4

    .line 93
    :cond_5
    nop

    .line 116
    :goto_3
    iput v1, p0, Landroidx/media2/exoplayer/external/text/tx3g/Tx3gDecoder;->defaultFontFace:I

    .line 117
    const/4 v2, -0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/text/tx3g/Tx3gDecoder;->defaultColorRgba:I

    .line 118
    const-string v2, "sans-serif"

    iput-object v2, p0, Landroidx/media2/exoplayer/external/text/tx3g/Tx3gDecoder;->defaultFontFamily:Ljava/lang/String;

    .line 119
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/text/tx3g/Tx3gDecoder;->customVerticalPlacement:Z

    .line 120
    iput v0, p0, Landroidx/media2/exoplayer/external/text/tx3g/Tx3gDecoder;->defaultVerticalPlacement:F

    .line 122
    :goto_4
    return-void
.end method

.method private static readSubtitleText(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Ljava/lang/String;
    .locals 3
    .param p0, "parsableByteArray"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;
        }
    .end annotation

    .line 166
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/text/tx3g/Tx3gDecoder;->assertTrue(Z)V

    .line 167
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    .line 168
    .local v0, "textLength":I
    if-nez v0, :cond_1

    .line 169
    const-string v1, ""

    return-object v1

    .line 171
    :cond_1
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-lt v2, v1, :cond_4

    .line 172
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->peekChar()C

    move-result v1

    .line 173
    .local v1, "firstChar":C
    const v2, 0xfeff

    if-eq v1, v2, :cond_3

    const v2, 0xfffe

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_2

    .line 174
    :cond_3
    :goto_1
    const-string v2, "UTF-16"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 171
    .end local v1    # "firstChar":C
    :cond_4
    nop

    .line 177
    :goto_2
    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected decode([BIZ)Landroidx/media2/exoplayer/external/text/Subtitle;
    .locals 17
    .param p1, "bytes"    # [B
    .param p2, "length"    # I
    .param p3, "reset"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;
        }
    .end annotation

    .line 127
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media2/exoplayer/external/text/tx3g/Tx3gDecoder;->parsableByteArray:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual {v1, v2, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset([BI)V

    .line 128
    iget-object v1, v0, Landroidx/media2/exoplayer/external/text/tx3g/Tx3gDecoder;->parsableByteArray:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/text/tx3g/Tx3gDecoder;->readSubtitleText(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "cueTextString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 130
    sget-object v4, Landroidx/media2/exoplayer/external/text/tx3g/Tx3gSubtitle;->EMPTY:Landroidx/media2/exoplayer/external/text/tx3g/Tx3gSubtitle;

    return-object v4

    .line 133
    :cond_0
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 134
    .local v4, "cueText":Landroid/text/SpannableStringBuilder;
    iget v6, v0, Landroidx/media2/exoplayer/external/text/tx3g/Tx3gDecoder;->defaultFontFace:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    const/high16 v10, 0xff0000

    move-object v5, v4

    invoke-static/range {v5 .. v10}, Landroidx/media2/exoplayer/external/text/tx3g/Tx3gDecoder;->attachFontFace(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 136
    iget v6, v0, Landroidx/media2/exoplayer/external/text/tx3g/Tx3gDecoder;->defaultColorRgba:I

    const/4 v7, -0x1

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    invoke-static/range {v5 .. v10}, Landroidx/media2/exoplayer/external/text/tx3g/Tx3gDecoder;->attachColor(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 138
    iget-object v6, v0, Landroidx/media2/exoplayer/external/text/tx3g/Tx3gDecoder;->defaultFontFamily:Ljava/lang/String;

    const-string v7, "sans-serif"

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    invoke-static/range {v5 .. v10}, Landroidx/media2/exoplayer/external/text/tx3g/Tx3gDecoder;->attachFontFamily(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;III)V

    .line 140
    iget v5, v0, Landroidx/media2/exoplayer/external/text/tx3g/Tx3gDecoder;->defaultVerticalPlacement:F

    move v14, v5

    .line 142
    .local v14, "verticalPlacement":F
    :goto_0
    iget-object v5, v0, Landroidx/media2/exoplayer/external/text/tx3g/Tx3gDecoder;->parsableByteArray:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    const/16 v6, 0x8

    if-lt v5, v6, :cond_6

    .line 143
    iget-object v5, v0, Landroidx/media2/exoplayer/external/text/tx3g/Tx3gDecoder;->parsableByteArray:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v5

    .line 144
    .local v5, "position":I
    iget-object v6, v0, Landroidx/media2/exoplayer/external/text/tx3g/Tx3gDecoder;->parsableByteArray:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 145
    .local v6, "atomSize":I
    iget-object v7, v0, Landroidx/media2/exoplayer/external/text/tx3g/Tx3gDecoder;->parsableByteArray:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v7}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v7

    .line 146
    .local v7, "atomType":I
    const v8, 0x7374796c

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-ne v7, v8, :cond_3

    .line 147
    iget-object v8, v0, Landroidx/media2/exoplayer/external/text/tx3g/Tx3gDecoder;->parsableByteArray:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v8}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v8

    if-lt v8, v10, :cond_1

    const/4 v9, 0x1

    nop

    :cond_1
    invoke-static {v9}, Landroidx/media2/exoplayer/external/text/tx3g/Tx3gDecoder;->assertTrue(Z)V

    .line 148
    iget-object v8, v0, Landroidx/media2/exoplayer/external/text/tx3g/Tx3gDecoder;->parsableByteArray:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v8}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    .line 149
    .local v8, "styleRecordCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v8, :cond_2

    .line 150
    iget-object v10, v0, Landroidx/media2/exoplayer/external/text/tx3g/Tx3gDecoder;->parsableByteArray:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {v0, v10, v4}, Landroidx/media2/exoplayer/external/text/tx3g/Tx3gDecoder;->applyStyleRecord(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Landroid/text/SpannableStringBuilder;)V

    .line 149
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .end local v8    # "styleRecordCount":I
    .end local v9    # "i":I
    :cond_2
    goto :goto_2

    .line 152
    :cond_3
    const v8, 0x74626f78

    if-ne v7, v8, :cond_5

    iget-boolean v8, v0, Landroidx/media2/exoplayer/external/text/tx3g/Tx3gDecoder;->customVerticalPlacement:Z

    if-eqz v8, :cond_5

    .line 153
    iget-object v8, v0, Landroidx/media2/exoplayer/external/text/tx3g/Tx3gDecoder;->parsableByteArray:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v8}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v8

    if-lt v8, v10, :cond_4

    const/4 v9, 0x1

    nop

    :cond_4
    invoke-static {v9}, Landroidx/media2/exoplayer/external/text/tx3g/Tx3gDecoder;->assertTrue(Z)V

    .line 154
    iget-object v8, v0, Landroidx/media2/exoplayer/external/text/tx3g/Tx3gDecoder;->parsableByteArray:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v8}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    .line 155
    .local v8, "requestedVerticalPlacement":I
    int-to-float v9, v8

    iget v10, v0, Landroidx/media2/exoplayer/external/text/tx3g/Tx3gDecoder;->calculatedVideoTrackHeight:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    .line 156
    .end local v14    # "verticalPlacement":F
    .local v9, "verticalPlacement":F
    const/4 v10, 0x0

    const v11, 0x3f733333    # 0.95f

    invoke-static {v9, v10, v11}, Landroidx/media2/exoplayer/external/util/Util;->constrainValue(FFF)F

    move-result v14

    goto :goto_3

    .line 152
    .end local v8    # "requestedVerticalPlacement":I
    .end local v9    # "verticalPlacement":F
    .restart local v14    # "verticalPlacement":F
    :cond_5
    :goto_2
    nop

    .line 158
    :goto_3
    iget-object v8, v0, Landroidx/media2/exoplayer/external/text/tx3g/Tx3gDecoder;->parsableByteArray:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    add-int v9, v5, v6

    invoke-virtual {v8, v9}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 159
    .end local v5    # "position":I
    .end local v6    # "atomSize":I
    .end local v7    # "atomType":I
    goto :goto_0

    .line 160
    :cond_6
    new-instance v15, Landroidx/media2/exoplayer/external/text/tx3g/Tx3gSubtitle;

    new-instance v13, Landroidx/media2/exoplayer/external/text/Cue;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/high16 v12, -0x80000000

    const/16 v16, 0x1

    move-object v5, v13

    move-object v6, v4

    move v8, v14

    move-object v0, v13

    move/from16 v13, v16

    invoke-direct/range {v5 .. v13}, Landroidx/media2/exoplayer/external/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V

    invoke-direct {v15, v0}, Landroidx/media2/exoplayer/external/text/tx3g/Tx3gSubtitle;-><init>(Landroidx/media2/exoplayer/external/text/Cue;)V

    return-object v15
.end method
