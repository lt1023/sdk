.class public final Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;
.super Landroidx/media2/exoplayer/external/text/SimpleSubtitleDecoder;
.source "TtmlDecoder.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$TtsExtent;,
        Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$CellResolution;,
        Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$FrameAndTickRate;
    }
.end annotation


# static fields
.field private static final ATTR_BEGIN:Ljava/lang/String; = "begin"

.field private static final ATTR_DURATION:Ljava/lang/String; = "dur"

.field private static final ATTR_END:Ljava/lang/String; = "end"

.field private static final ATTR_IMAGE:Ljava/lang/String; = "backgroundImage"

.field private static final ATTR_REGION:Ljava/lang/String; = "region"

.field private static final ATTR_STYLE:Ljava/lang/String; = "style"

.field private static final CELL_RESOLUTION:Ljava/util/regex/Pattern;

.field private static final CLOCK_TIME:Ljava/util/regex/Pattern;

.field private static final DEFAULT_CELL_RESOLUTION:Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$CellResolution;

.field private static final DEFAULT_FRAME_AND_TICK_RATE:Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$FrameAndTickRate;

.field private static final DEFAULT_FRAME_RATE:I = 0x1e

.field private static final FONT_SIZE:Ljava/util/regex/Pattern;

.field private static final OFFSET_TIME:Ljava/util/regex/Pattern;

.field private static final PERCENTAGE_COORDINATES:Ljava/util/regex/Pattern;

.field private static final PIXEL_COORDINATES:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "TtmlDecoder"

.field private static final TTP:Ljava/lang/String; = "http://www.w3.org/ns/ttml#parameter"


# instance fields
.field private final xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 79
    const-string v0, "^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$"

    .line 80
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->CLOCK_TIME:Ljava/util/regex/Pattern;

    .line 82
    const-string v0, "^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$"

    .line 83
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->OFFSET_TIME:Ljava/util/regex/Pattern;

    .line 84
    const-string v0, "^(([0-9]*.)?[0-9]+)(px|em|%)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->FONT_SIZE:Ljava/util/regex/Pattern;

    .line 85
    const-string v0, "^(\\d+\\.?\\d*?)% (\\d+\\.?\\d*?)%$"

    .line 86
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->PERCENTAGE_COORDINATES:Ljava/util/regex/Pattern;

    .line 87
    const-string v0, "^(\\d+\\.?\\d*?)px (\\d+\\.?\\d*?)px$"

    .line 88
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->PIXEL_COORDINATES:Ljava/util/regex/Pattern;

    .line 89
    const-string v0, "^(\\d+) (\\d+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->CELL_RESOLUTION:Ljava/util/regex/Pattern;

    .line 93
    new-instance v0, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$FrameAndTickRate;

    const/4 v1, 0x1

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-direct {v0, v2, v1, v1}, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$FrameAndTickRate;-><init>(FII)V

    sput-object v0, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->DEFAULT_FRAME_AND_TICK_RATE:Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$FrameAndTickRate;

    .line 95
    new-instance v0, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$CellResolution;

    const/16 v1, 0x20

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$CellResolution;-><init>(II)V

    sput-object v0, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->DEFAULT_CELL_RESOLUTION:Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$CellResolution;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 101
    const-string v0, "TtmlDecoder"

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/text/SimpleSubtitleDecoder;-><init>(Ljava/lang/String;)V

    .line 103
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 104
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    nop

    .line 108
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t create XmlPullParserFactory instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private createIfNull(Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;)Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;
    .locals 1
    .param p1, "style"    # Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;

    .line 536
    if-nez p1, :cond_0

    new-instance v0, Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method private static isSupportedTag(Ljava/lang/String;)Z
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;

    .line 611
    const-string/jumbo v0, "tt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "head"

    .line 612
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "body"

    .line 613
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "div"

    .line 614
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "p"

    .line 615
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "span"

    .line 616
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "br"

    .line 617
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "style"

    .line 618
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "styling"

    .line 619
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "layout"

    .line 620
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "region"

    .line 621
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "metadata"

    .line 622
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "image"

    .line 623
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "data"

    .line 624
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "information"

    .line 625
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 624
    :cond_1
    goto :goto_0

    .line 623
    :cond_2
    goto :goto_0

    .line 622
    :cond_3
    goto :goto_0

    .line 621
    :cond_4
    goto :goto_0

    .line 620
    :cond_5
    goto :goto_0

    .line 619
    :cond_6
    goto :goto_0

    .line 618
    :cond_7
    goto :goto_0

    .line 617
    :cond_8
    goto :goto_0

    .line 616
    :cond_9
    goto :goto_0

    .line 615
    :cond_a
    goto :goto_0

    .line 614
    :cond_b
    goto :goto_0

    .line 613
    :cond_c
    goto :goto_0

    .line 612
    :cond_d
    goto :goto_0

    .line 611
    :cond_e
    nop

    .line 625
    :goto_0
    const/4 v0, 0x1

    .line 611
    :goto_1
    return v0
.end method

.method private parseCellResolution(Lorg/xmlpull/v1/XmlPullParser;Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$CellResolution;)Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$CellResolution;
    .locals 7
    .param p1, "xmlParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "defaultValue"    # Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$CellResolution;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;
        }
    .end annotation

    .line 218
    const-string v0, "http://www.w3.org/ns/ttml#parameter"

    const-string v1, "cellResolution"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "cellResolution":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 220
    return-object p2

    .line 223
    :cond_0
    sget-object v1, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->CELL_RESOLUTION:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 224
    .local v1, "cellResolutionMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_2

    .line 225
    const-string v2, "TtmlDecoder"

    const-string v3, "Ignoring malformed cell resolution: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    :goto_0
    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return-object p2

    .line 229
    :cond_2
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 230
    .local v2, "columns":I
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 231
    .local v3, "rows":I
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    .line 234
    new-instance v4, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$CellResolution;

    invoke-direct {v4, v2, v3}, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$CellResolution;-><init>(II)V

    return-object v4

    .line 231
    :cond_3
    nop

    .line 232
    new-instance v4, Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;

    const/16 v5, 0x2f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Invalid cell resolution "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    .end local v0    # "cellResolution":Ljava/lang/String;
    .end local v1    # "cellResolutionMatcher":Ljava/util/regex/Matcher;
    .end local p1    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    .end local p2    # "defaultValue":Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$CellResolution;
    throw v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .end local v2    # "columns":I
    .end local v3    # "rows":I
    .restart local v0    # "cellResolution":Ljava/lang/String;
    .restart local v1    # "cellResolutionMatcher":Ljava/util/regex/Matcher;
    .restart local p1    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local p2    # "defaultValue":Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$CellResolution;
    :catch_0
    move-exception v2

    .line 236
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "TtmlDecoder"

    const-string v4, "Ignoring malformed cell resolution: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_4
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    :goto_1
    invoke-static {v3, v4}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-object p2
.end method

.method private static parseFontSize(Ljava/lang/String;Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;)V
    .locals 9
    .param p0, "expression"    # Ljava/lang/String;
    .param p1, "out"    # Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;
        }
    .end annotation

    .line 630
    const-string v0, "\\s+"

    invoke-static {p0, v0}, Landroidx/media2/exoplayer/external/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 632
    .local v0, "expressions":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 633
    sget-object v1, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->FONT_SIZE:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    goto :goto_0

    .line 634
    :cond_0
    array-length v1, v0

    if-ne v1, v2, :cond_6

    .line 635
    sget-object v1, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->FONT_SIZE:Ljava/util/regex/Pattern;

    aget-object v4, v0, v3

    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 636
    .local v1, "matcher":Ljava/util/regex/Matcher;
    const-string v4, "TtmlDecoder"

    const-string v5, "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first."

    invoke-static {v4, v5}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 644
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 645
    .local v5, "unit":Ljava/lang/String;
    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v8, 0x25

    if-eq v7, v8, :cond_4

    const/16 v8, 0xca8

    if-eq v7, v8, :cond_3

    const/16 v8, 0xe08

    if-eq v7, v8, :cond_2

    :cond_1
    goto :goto_1

    :cond_2
    const-string v7, "px"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    const-string v7, "em"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    const-string v7, "%"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v6, 0x2

    :goto_1
    packed-switch v6, :pswitch_data_0

    .line 656
    new-instance v2, Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Invalid unit for fontSize: \'"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 653
    :pswitch_0
    invoke-virtual {p1, v4}, Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;->setFontSizeUnit(I)Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;

    .line 654
    goto :goto_2

    .line 650
    :pswitch_1
    invoke-virtual {p1, v2}, Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;->setFontSizeUnit(I)Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;

    .line 651
    goto :goto_2

    .line 647
    :pswitch_2
    invoke-virtual {p1, v3}, Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;->setFontSizeUnit(I)Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;

    .line 648
    nop

    .line 658
    :goto_2
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p1, v2}, Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;->setFontSize(F)Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;

    .line 659
    .end local v5    # "unit":Ljava/lang/String;
    nop

    .line 662
    return-void

    .line 660
    :cond_5
    new-instance v2, Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x24

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Invalid expression for fontSize: \'"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 639
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    :cond_6
    new-instance v1, Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;

    array-length v2, v0

    const/16 v3, 0x34

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Invalid number of entries for fontSize: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v1

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseFrameAndTickRates(Lorg/xmlpull/v1/XmlPullParser;)Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$FrameAndTickRate;
    .locals 10
    .param p1, "xmlParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;
        }
    .end annotation

    .line 184
    const/16 v0, 0x1e

    .line 185
    .local v0, "frameRate":I
    const-string v1, "http://www.w3.org/ns/ttml#parameter"

    const-string v2, "frameRate"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "frameRateString":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 187
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 186
    :cond_0
    nop

    .line 190
    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 191
    .local v2, "frameRateMultiplier":F
    const-string v3, "http://www.w3.org/ns/ttml#parameter"

    const-string v4, "frameRateMultiplier"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, "frameRateMultiplierString":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 193
    const-string v4, " "

    invoke-static {v3, v4}, Landroidx/media2/exoplayer/external/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 194
    .local v4, "parts":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 197
    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    .line 198
    .local v5, "numerator":F
    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-float v6, v6

    .line 199
    .local v6, "denominator":F
    div-float v2, v5, v6

    goto :goto_1

    .line 195
    .end local v5    # "numerator":F
    .end local v6    # "denominator":F
    :cond_1
    new-instance v5, Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;

    const-string v6, "frameRateMultiplier doesn\'t have 2 parts"

    invoke-direct {v5, v6}, Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 192
    .end local v4    # "parts":[Ljava/lang/String;
    :cond_2
    nop

    .line 202
    :goto_1
    sget-object v4, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->DEFAULT_FRAME_AND_TICK_RATE:Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$FrameAndTickRate;

    iget v4, v4, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$FrameAndTickRate;->subFrameRate:I

    .line 203
    .local v4, "subFrameRate":I
    const-string v5, "http://www.w3.org/ns/ttml#parameter"

    const-string v6, "subFrameRate"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 204
    .local v5, "subFrameRateString":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 205
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_2

    .line 204
    :cond_3
    nop

    .line 208
    :goto_2
    sget-object v6, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->DEFAULT_FRAME_AND_TICK_RATE:Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$FrameAndTickRate;

    iget v6, v6, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$FrameAndTickRate;->tickRate:I

    .line 209
    .local v6, "tickRate":I
    const-string v7, "http://www.w3.org/ns/ttml#parameter"

    const-string/jumbo v8, "tickRate"

    invoke-interface {p1, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 210
    .local v7, "tickRateString":Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 211
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_3

    .line 210
    :cond_4
    nop

    .line 213
    :goto_3
    new-instance v8, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$FrameAndTickRate;

    int-to-float v9, v0

    mul-float v9, v9, v2

    invoke-direct {v8, v9, v4, v6}, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$FrameAndTickRate;-><init>(FII)V

    return-object v8
.end method

.method private parseHeader(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$CellResolution;Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$TtsExtent;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .param p1, "xmlParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "cellResolution"    # Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$CellResolution;
    .param p4, "ttsExtent"    # Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$TtsExtent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;",
            ">;",
            "Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$CellResolution;",
            "Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$TtsExtent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/text/ttml/TtmlRegion;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 271
    .local p2, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;>;"
    .local p5, "globalRegions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/media2/exoplayer/external/text/ttml/TtmlRegion;>;"
    .local p6, "imageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 272
    const-string v0, "style"

    invoke-static {p1, v0}, Landroidx/media2/exoplayer/external/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 273
    const-string v0, "style"

    invoke-static {p1, v0}, Landroidx/media2/exoplayer/external/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "parentStyleId":Ljava/lang/String;
    new-instance v1, Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;-><init>()V

    invoke-direct {p0, p1, v1}, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->parseStyleAttributes(Lorg/xmlpull/v1/XmlPullParser;Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;)Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;

    move-result-object v1

    .line 275
    .local v1, "style":Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;
    if-eqz v0, :cond_1

    .line 276
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->parseStyleIds(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 277
    .local v5, "id":Ljava/lang/String;
    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;

    invoke-virtual {v1, v6}, Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;->chain(Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;)Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;

    .line 276
    .end local v5    # "id":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    goto :goto_2

    .line 275
    :cond_1
    nop

    .line 280
    :goto_2
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 281
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 280
    :cond_2
    nop

    .line 283
    .end local v0    # "parentStyleId":Ljava/lang/String;
    .end local v1    # "style":Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;
    :goto_3
    goto :goto_5

    :cond_3
    const-string v0, "region"

    invoke-static {p1, v0}, Landroidx/media2/exoplayer/external/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 284
    invoke-direct {p0, p1, p3, p4}, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->parseRegionAttributes(Lorg/xmlpull/v1/XmlPullParser;Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$CellResolution;Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$TtsExtent;)Landroidx/media2/exoplayer/external/text/ttml/TtmlRegion;

    move-result-object v0

    .line 285
    .local v0, "ttmlRegion":Landroidx/media2/exoplayer/external/text/ttml/TtmlRegion;
    if-eqz v0, :cond_4

    .line 286
    iget-object v1, v0, Landroidx/media2/exoplayer/external/text/ttml/TtmlRegion;->id:Ljava/lang/String;

    invoke-interface {p5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 285
    :cond_4
    goto :goto_4

    .line 288
    .end local v0    # "ttmlRegion":Landroidx/media2/exoplayer/external/text/ttml/TtmlRegion;
    :cond_5
    const-string v0, "metadata"

    invoke-static {p1, v0}, Landroidx/media2/exoplayer/external/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 289
    invoke-direct {p0, p1, p6}, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->parseMetadata(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V

    goto :goto_5

    .line 288
    :cond_6
    :goto_4
    nop

    .line 291
    :goto_5
    const-string v0, "head"

    invoke-static {p1, v0}, Landroidx/media2/exoplayer/external/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 292
    return-object p2

    .line 291
    :cond_7
    goto :goto_0
.end method

.method private parseMetadata(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    .locals 2
    .param p1, "xmlParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 298
    .local p2, "imageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 299
    const-string v0, "image"

    invoke-static {p1, v0}, Landroidx/media2/exoplayer/external/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    const-string v0, "id"

    invoke-static {p1, v0}, Landroidx/media2/exoplayer/external/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 302
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, "encodedBitmapData":Ljava/lang/String;
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 301
    .end local v1    # "encodedBitmapData":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 299
    .end local v0    # "id":Ljava/lang/String;
    :cond_1
    nop

    .line 306
    :goto_1
    const-string v0, "metadata"

    invoke-static {p1, v0}, Landroidx/media2/exoplayer/external/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 307
    return-void

    .line 306
    :cond_2
    goto :goto_0
.end method

.method private parseNode(Lorg/xmlpull/v1/XmlPullParser;Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;Ljava/util/Map;Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$FrameAndTickRate;)Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;
    .locals 26
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "parent"    # Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;
    .param p4, "frameAndTickRate"    # Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$FrameAndTickRate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/text/ttml/TtmlRegion;",
            ">;",
            "Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$FrameAndTickRate;",
            ")",
            "Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;
        }
    .end annotation

    .line 542
    .local p3, "regionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/media2/exoplayer/external/text/ttml/TtmlRegion;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 543
    .local v4, "duration":J
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 544
    .local v6, "startTime":J
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 545
    .local v8, "endTime":J
    const-string v10, ""

    .line 546
    .local v10, "regionId":Ljava/lang/String;
    const/4 v11, 0x0

    .line 547
    .local v11, "imageId":Ljava/lang/String;
    const/4 v12, 0x0

    .line 548
    .local v12, "styleIds":[Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v13

    .line 549
    .local v13, "attributeCount":I
    const/4 v14, 0x0

    invoke-direct {v0, v1, v14}, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->parseStyleAttributes(Lorg/xmlpull/v1/XmlPullParser;Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;)Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;

    move-result-object v14

    .line 550
    .local v14, "style":Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    if-ge v15, v13, :cond_4

    .line 551
    move/from16 v24, v13

    .end local v13    # "attributeCount":I
    .local v24, "attributeCount":I
    invoke-interface {v1, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v13

    .line 552
    .local v13, "attr":Ljava/lang/String;
    move-object/from16 v25, v11

    .end local v11    # "imageId":Ljava/lang/String;
    .local v25, "imageId":Ljava/lang/String;
    invoke-interface {v1, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    .line 553
    .local v11, "value":Ljava/lang/String;
    const/16 v16, -0x1

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v1, "backgroundImage"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v16, 0x5

    goto :goto_1

    :sswitch_1
    const-string v1, "style"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v16, 0x3

    goto :goto_1

    :sswitch_2
    const-string v1, "begin"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v16, 0x0

    goto :goto_1

    :sswitch_3
    const-string v1, "end"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v16, 0x1

    goto :goto_1

    :sswitch_4
    const-string v1, "dur"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v16, 0x2

    goto :goto_1

    :sswitch_5
    const-string v1, "region"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v16, 0x4

    :goto_1
    packed-switch v16, :pswitch_data_0

    goto :goto_2

    .line 580
    :pswitch_0
    const-string v1, "#"

    invoke-virtual {v11, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 581
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    goto :goto_3

    .line 580
    :cond_1
    goto :goto_2

    .line 571
    :pswitch_1
    move-object/from16 v1, p3

    invoke-interface {v1, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 574
    move-object v10, v11

    move-object/from16 v11, v25

    goto :goto_3

    .line 571
    :cond_2
    goto :goto_2

    .line 565
    :pswitch_2
    move-object/from16 v1, p3

    invoke-direct {v0, v11}, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->parseStyleIds(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 566
    .local v1, "ids":[Ljava/lang/String;
    array-length v0, v1

    if-lez v0, :cond_3

    .line 567
    move-object v0, v1

    move-object v12, v0

    move-object/from16 v11, v25

    goto :goto_3

    .line 566
    :cond_3
    goto :goto_2

    .line 561
    .end local v1    # "ids":[Ljava/lang/String;
    :pswitch_3
    invoke-static {v11, v3}, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->parseTimeExpression(Ljava/lang/String;Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$FrameAndTickRate;)J

    move-result-wide v0

    .line 562
    .end local v4    # "duration":J
    .local v0, "duration":J
    move-wide v4, v0

    move-object/from16 v11, v25

    goto :goto_3

    .line 558
    .end local v0    # "duration":J
    .restart local v4    # "duration":J
    :pswitch_4
    invoke-static {v11, v3}, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->parseTimeExpression(Ljava/lang/String;Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$FrameAndTickRate;)J

    move-result-wide v0

    .line 559
    .end local v8    # "endTime":J
    .local v0, "endTime":J
    move-wide v8, v0

    move-object/from16 v11, v25

    goto :goto_3

    .line 555
    .end local v0    # "endTime":J
    .restart local v8    # "endTime":J
    :pswitch_5
    invoke-static {v11, v3}, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->parseTimeExpression(Ljava/lang/String;Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$FrameAndTickRate;)J

    move-result-wide v0

    .line 556
    .end local v6    # "startTime":J
    .local v0, "startTime":J
    move-wide v6, v0

    move-object/from16 v11, v25

    goto :goto_3

    .line 550
    .end local v0    # "startTime":J
    .end local v11    # "value":Ljava/lang/String;
    .end local v13    # "attr":Ljava/lang/String;
    .restart local v6    # "startTime":J
    :goto_2
    move-object/from16 v11, v25

    .end local v25    # "imageId":Ljava/lang/String;
    .local v11, "imageId":Ljava/lang/String;
    :goto_3
    add-int/lit8 v15, v15, 0x1

    move/from16 v13, v24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_0

    .end local v24    # "attributeCount":I
    .local v13, "attributeCount":I
    :cond_4
    move-object/from16 v25, v11

    move/from16 v24, v13

    .line 589
    .end local v11    # "imageId":Ljava/lang/String;
    .end local v13    # "attributeCount":I
    .end local v15    # "i":I
    .restart local v24    # "attributeCount":I
    .restart local v25    # "imageId":Ljava/lang/String;
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_7

    move-object v13, v10

    .end local v10    # "regionId":Ljava/lang/String;
    .local v13, "regionId":Ljava/lang/String;
    iget-wide v10, v2, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->startTimeUs:J

    cmp-long v15, v10, v0

    if-eqz v15, :cond_8

    .line 590
    cmp-long v10, v6, v0

    if-eqz v10, :cond_5

    .line 591
    iget-wide v10, v2, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->startTimeUs:J

    add-long/2addr v6, v10

    goto :goto_4

    .line 590
    :cond_5
    nop

    .line 593
    :goto_4
    cmp-long v10, v8, v0

    if-eqz v10, :cond_6

    .line 594
    iget-wide v10, v2, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->startTimeUs:J

    add-long/2addr v8, v10

    goto :goto_5

    .line 593
    :cond_6
    goto :goto_5

    .line 589
    .end local v13    # "regionId":Ljava/lang/String;
    .restart local v10    # "regionId":Ljava/lang/String;
    :cond_7
    move-object v13, v10

    .line 597
    .end local v10    # "regionId":Ljava/lang/String;
    .restart local v13    # "regionId":Ljava/lang/String;
    :cond_8
    :goto_5
    cmp-long v10, v8, v0

    if-nez v10, :cond_b

    .line 598
    cmp-long v10, v4, v0

    if-eqz v10, :cond_9

    .line 600
    add-long v0, v6, v4

    goto :goto_7

    .line 601
    :cond_9
    if-eqz v2, :cond_a

    iget-wide v10, v2, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->endTimeUs:J

    cmp-long v15, v10, v0

    if-eqz v15, :cond_a

    .line 603
    iget-wide v0, v2, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->endTimeUs:J

    goto :goto_7

    .line 601
    :cond_a
    goto :goto_6

    .line 597
    :cond_b
    nop

    .line 606
    :goto_6
    move-wide v0, v8

    .end local v8    # "endTime":J
    .local v0, "endTime":J
    :goto_7
    nop

    .line 607
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 606
    move-wide/from16 v16, v6

    move-wide/from16 v18, v0

    move-object/from16 v20, v14

    move-object/from16 v21, v12

    move-object/from16 v22, v13

    move-object/from16 v23, v25

    invoke-static/range {v15 .. v23}, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->buildNode(Ljava/lang/String;JJLandroidx/media2/exoplayer/external/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;

    move-result-object v8

    return-object v8

    :sswitch_data_0
    .sparse-switch
        -0x37b7d90c -> :sswitch_5
        0x18601 -> :sswitch_4
        0x188db -> :sswitch_3
        0x59478a9 -> :sswitch_2
        0x68b1db1 -> :sswitch_1
        0x4d0b70cd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseRegionAttributes(Lorg/xmlpull/v1/XmlPullParser;Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$CellResolution;Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$TtsExtent;)Landroidx/media2/exoplayer/external/text/ttml/TtmlRegion;
    .locals 22
    .param p1, "xmlParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "cellResolution"    # Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$CellResolution;
    .param p3, "ttsExtent"    # Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$TtsExtent;

    .line 319
    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const-string v0, "id"

    invoke-static {v1, v0}, Landroidx/media2/exoplayer/external/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 320
    .local v12, "regionId":Ljava/lang/String;
    const/4 v3, 0x0

    if-nez v12, :cond_0

    .line 321
    return-object v3

    .line 327
    :cond_0
    const-string v0, "origin"

    invoke-static {v1, v0}, Landroidx/media2/exoplayer/external/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 328
    .local v13, "regionOrigin":Ljava/lang/String;
    if-eqz v13, :cond_14

    .line 329
    sget-object v0, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->PERCENTAGE_COORDINATES:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 330
    .local v4, "originPercentageMatcher":Ljava/util/regex/Matcher;
    sget-object v0, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->PIXEL_COORDINATES:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 331
    .local v5, "originPixelMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v6, 0x2

    const/high16 v7, 0x42c80000    # 100.0f

    const/4 v8, 0x1

    if-eqz v0, :cond_2

    .line 333
    :try_start_0
    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    div-float/2addr v0, v7

    .line 334
    .local v0, "position":F
    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    div-float/2addr v9, v7

    .line 338
    .local v9, "line":F
    move v14, v0

    goto :goto_2

    .line 335
    .end local v0    # "position":F
    .end local v9    # "line":F
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v6, "TtmlDecoder"

    const-string v7, "Ignoring region with malformed origin: "

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_1
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v7, v8

    :goto_0
    invoke-static {v6, v7}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    return-object v3

    .line 339
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 340
    if-nez v2, :cond_4

    .line 341
    const-string v0, "TtmlDecoder"

    const-string v6, "Ignoring region with missing tts:extent: "

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_3
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v6, v7

    :goto_1
    invoke-static {v0, v6}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    return-object v3

    .line 345
    :cond_4
    :try_start_1
    invoke-virtual {v5, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 346
    .local v0, "width":I
    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 348
    .local v9, "height":I
    int-to-float v10, v0

    iget v11, v2, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$TtsExtent;->width:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    .line 349
    .local v10, "position":F
    int-to-float v11, v9

    iget v14, v2, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$TtsExtent;->height:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3

    int-to-float v14, v14

    div-float v9, v11, v14

    .line 353
    .end local v0    # "width":I
    .local v9, "line":F
    move v14, v10

    .line 358
    .end local v4    # "originPercentageMatcher":Ljava/util/regex/Matcher;
    .end local v5    # "originPixelMatcher":Ljava/util/regex/Matcher;
    .end local v10    # "position":F
    .local v14, "position":F
    :goto_2
    nop

    .line 370
    const-string v0, "extent"

    invoke-static {v1, v0}, Landroidx/media2/exoplayer/external/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 371
    .local v15, "regionExtent":Ljava/lang/String;
    if-eqz v15, :cond_10

    .line 372
    sget-object v0, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->PERCENTAGE_COORDINATES:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 373
    .local v4, "extentPercentageMatcher":Ljava/util/regex/Matcher;
    sget-object v0, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->PIXEL_COORDINATES:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 374
    .local v5, "extentPixelMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 376
    :try_start_2
    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    div-float/2addr v0, v7

    .line 377
    .local v0, "width":F
    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    div-float/2addr v3, v7

    .line 381
    .local v3, "height":F
    move/from16 v16, v3

    goto :goto_5

    .line 378
    .end local v0    # "width":F
    .end local v3    # "height":F
    :catch_1
    move-exception v0

    .line 379
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v6, "TtmlDecoder"

    const-string v7, "Ignoring region with malformed extent: "

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_5
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v7, v8

    :goto_3
    invoke-static {v6, v7}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    return-object v3

    .line 382
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_6
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 383
    if-nez v2, :cond_8

    .line 384
    const-string v0, "TtmlDecoder"

    const-string v6, "Ignoring region with missing tts:extent: "

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_7
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v6, v7

    :goto_4
    invoke-static {v0, v6}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    return-object v3

    .line 388
    :cond_8
    :try_start_3
    invoke-virtual {v5, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 389
    .local v0, "extentWidth":I
    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 391
    .local v6, "extentHeight":I
    int-to-float v7, v0

    iget v10, v2, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$TtsExtent;->width:I

    int-to-float v10, v10

    div-float/2addr v7, v10

    .line 392
    .local v7, "width":F
    int-to-float v10, v6

    iget v3, v2, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$TtsExtent;->height:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    int-to-float v3, v3

    div-float v3, v10, v3

    .line 396
    .end local v0    # "extentWidth":I
    .end local v6    # "extentHeight":I
    .restart local v3    # "height":F
    move/from16 v16, v3

    move v0, v7

    .line 401
    .end local v3    # "height":F
    .end local v4    # "extentPercentageMatcher":Ljava/util/regex/Matcher;
    .end local v5    # "extentPixelMatcher":Ljava/util/regex/Matcher;
    .end local v7    # "width":F
    .local v0, "width":F
    .local v16, "height":F
    :goto_5
    nop

    .line 411
    const/4 v3, 0x0

    .line 412
    .local v3, "lineAnchor":I
    const-string v4, "displayAlign"

    invoke-static {v1, v4}, Landroidx/media2/exoplayer/external/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 414
    .local v17, "displayAlign":Ljava/lang/String;
    if-eqz v17, :cond_c

    .line 415
    invoke-static/range {v17 .. v17}, Landroidx/media2/exoplayer/external/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x514d33ab

    if-eq v6, v7, :cond_b

    const v7, 0x58705dc

    if-eq v6, v7, :cond_a

    :cond_9
    goto :goto_6

    :cond_a
    const-string v6, "after"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_7

    :cond_b
    const-string v6, "center"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v8, 0x0

    goto :goto_7

    :goto_6
    const/4 v8, -0x1

    :goto_7
    packed-switch v8, :pswitch_data_0

    goto :goto_8

    .line 421
    :pswitch_0
    const/4 v3, 0x2

    .line 422
    add-float v9, v9, v16

    .line 423
    move/from16 v19, v3

    move/from16 v18, v9

    goto :goto_9

    .line 417
    :pswitch_1
    const/4 v3, 0x1

    .line 418
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v16, v4

    add-float/2addr v9, v4

    .line 419
    move/from16 v19, v3

    move/from16 v18, v9

    goto :goto_9

    .line 414
    :cond_c
    nop

    .line 430
    :goto_8
    move/from16 v19, v3

    move/from16 v18, v9

    .end local v3    # "lineAnchor":I
    .end local v9    # "line":F
    .local v18, "line":F
    .local v19, "lineAnchor":I
    :goto_9
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v11, p2

    iget v4, v11, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$CellResolution;->rows:I

    int-to-float v4, v4

    div-float v20, v3, v4

    .line 431
    .local v20, "regionTextHeight":F
    new-instance v21, Landroidx/media2/exoplayer/external/text/ttml/TtmlRegion;

    const/4 v7, 0x0

    const/4 v10, 0x1

    move-object/from16 v3, v21

    move-object v4, v12

    move v5, v14

    move/from16 v6, v18

    move/from16 v8, v19

    move v9, v0

    move/from16 v11, v20

    invoke-direct/range {v3 .. v11}, Landroidx/media2/exoplayer/external/text/ttml/TtmlRegion;-><init>(Ljava/lang/String;FFIIFIF)V

    return-object v21

    .line 393
    .end local v0    # "width":F
    .end local v16    # "height":F
    .end local v17    # "displayAlign":Ljava/lang/String;
    .end local v18    # "line":F
    .end local v19    # "lineAnchor":I
    .end local v20    # "regionTextHeight":F
    .restart local v4    # "extentPercentageMatcher":Ljava/util/regex/Matcher;
    .restart local v5    # "extentPixelMatcher":Ljava/util/regex/Matcher;
    .restart local v9    # "line":F
    :catch_2
    move-exception v0

    .line 394
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v6, "TtmlDecoder"

    const-string v7, "Ignoring region with malformed extent: "

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_d

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_a

    :cond_d
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v7, v8

    :goto_a
    invoke-static {v6, v7}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    return-object v3

    .line 398
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_e
    const-string v0, "TtmlDecoder"

    const-string v6, "Ignoring region with unsupported extent: "

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_f

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_b

    :cond_f
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v6, v7

    :goto_b
    invoke-static {v0, v6}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    return-object v3

    .line 402
    .end local v4    # "extentPercentageMatcher":Ljava/util/regex/Matcher;
    .end local v5    # "extentPixelMatcher":Ljava/util/regex/Matcher;
    :cond_10
    const-string v0, "TtmlDecoder"

    const-string v4, "Ignoring region without an extent"

    invoke-static {v0, v4}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    return-object v3

    .line 350
    .end local v9    # "line":F
    .end local v14    # "position":F
    .end local v15    # "regionExtent":Ljava/lang/String;
    .local v4, "originPercentageMatcher":Ljava/util/regex/Matcher;
    .local v5, "originPixelMatcher":Ljava/util/regex/Matcher;
    :catch_3
    move-exception v0

    .line 351
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, "TtmlDecoder"

    const-string v7, "Ignoring region with malformed origin: "

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_11

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_c

    :cond_11
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v7, v8

    :goto_c
    invoke-static {v6, v7}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    return-object v3

    .line 355
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_12
    const-string v0, "TtmlDecoder"

    const-string v6, "Ignoring region with unsupported origin: "

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_13

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_d

    :cond_13
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v6, v7

    :goto_d
    invoke-static {v0, v6}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    return-object v3

    .line 359
    .end local v4    # "originPercentageMatcher":Ljava/util/regex/Matcher;
    .end local v5    # "originPixelMatcher":Ljava/util/regex/Matcher;
    :cond_14
    const-string v0, "TtmlDecoder"

    const-string v4, "Ignoring region without an origin"

    invoke-static {v0, v4}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseStyleAttributes(Lorg/xmlpull/v1/XmlPullParser;Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;)Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;
    .locals 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "style"    # Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;

    .line 448
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 449
    .local v0, "attributeCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_b

    .line 450
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 451
    .local v2, "attributeValue":Ljava/lang/String;
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    sparse-switch v4, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v4, "backgroundColor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_2

    :sswitch_1
    const-string v4, "fontSize"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_2

    :sswitch_2
    const-string v4, "color"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_2

    :sswitch_3
    const-string v4, "id"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_2

    :sswitch_4
    const-string v4, "fontWeight"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto :goto_2

    :sswitch_5
    const-string v4, "textDecoration"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    goto :goto_2

    :sswitch_6
    const-string v4, "textAlign"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x7

    goto :goto_2

    :sswitch_7
    const-string v4, "fontFamily"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto :goto_2

    :sswitch_8
    const-string v4, "fontStyle"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x6

    goto :goto_2

    :goto_1
    const/4 v3, -0x1

    :goto_2
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_c

    .line 512
    :pswitch_0
    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x57195dd5

    if-eq v4, v5, :cond_5

    const v5, -0x3d363934

    if-eq v4, v5, :cond_4

    const v5, 0x36723ff0

    if-eq v4, v5, :cond_3

    const v5, 0x641ec051

    if-eq v4, v5, :cond_2

    :cond_1
    goto :goto_3

    :cond_2
    const-string v4, "linethrough"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v6, 0x0

    goto :goto_4

    :cond_3
    const-string v4, "nolinethrough"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v6, 0x1

    goto :goto_4

    :cond_4
    const-string/jumbo v4, "underline"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_4

    :cond_5
    const-string v4, "nounderline"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v6, 0x3

    goto :goto_4

    :goto_3
    const/4 v6, -0x1

    :goto_4
    packed-switch v6, :pswitch_data_1

    goto :goto_5

    .line 523
    :pswitch_1
    invoke-direct {p0, p2}, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->createIfNull(Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;)Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;->setUnderline(Z)Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;

    move-result-object p2

    goto :goto_5

    .line 520
    :pswitch_2
    invoke-direct {p0, p2}, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->createIfNull(Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;)Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;->setUnderline(Z)Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;

    move-result-object p2

    .line 521
    goto :goto_5

    .line 517
    :pswitch_3
    invoke-direct {p0, p2}, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->createIfNull(Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;)Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;->setLinethrough(Z)Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;

    move-result-object p2

    .line 518
    goto :goto_5

    .line 514
    :pswitch_4
    invoke-direct {p0, p2}, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->createIfNull(Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;)Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;->setLinethrough(Z)Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;

    move-result-object p2

    .line 515
    nop

    .line 526
    :goto_5
    goto/16 :goto_c

    .line 493
    :pswitch_5
    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_1

    :cond_6
    goto :goto_6

    :sswitch_9
    const-string v4, "start"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v5, 0x1

    goto :goto_7

    :sswitch_a
    const-string v4, "right"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v5, 0x2

    goto :goto_7

    :sswitch_b
    const-string v4, "left"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v5, 0x0

    goto :goto_7

    :sswitch_c
    const-string v4, "end"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v5, 0x3

    goto :goto_7

    :sswitch_d
    const-string v4, "center"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_7

    :goto_6
    const/4 v5, -0x1

    :goto_7
    packed-switch v5, :pswitch_data_2

    goto :goto_8

    .line 507
    :pswitch_6
    invoke-direct {p0, p2}, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->createIfNull(Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;)Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;

    move-result-object v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;->setTextAlign(Landroid/text/Layout$Alignment;)Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;

    move-result-object p2

    goto :goto_8

    .line 504
    :pswitch_7
    invoke-direct {p0, p2}, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->createIfNull(Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;)Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;

    move-result-object v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;->setTextAlign(Landroid/text/Layout$Alignment;)Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;

    move-result-object p2

    .line 505
    goto :goto_8

    .line 501
    :pswitch_8
    invoke-direct {p0, p2}, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->createIfNull(Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;)Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;

    move-result-object v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;->setTextAlign(Landroid/text/Layout$Alignment;)Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;

    move-result-object p2

    .line 502
    goto :goto_8

    .line 498
    :pswitch_9
    invoke-direct {p0, p2}, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->createIfNull(Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;)Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;

    move-result-object v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;->setTextAlign(Landroid/text/Layout$Alignment;)Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;

    move-result-object p2

    .line 499
    goto :goto_8

    .line 495
    :pswitch_a
    invoke-direct {p0, p2}, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->createIfNull(Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;)Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;

    move-result-object v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;->setTextAlign(Landroid/text/Layout$Alignment;)Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;

    move-result-object p2

    .line 496
    nop

    .line 510
    :goto_8
    goto/16 :goto_c

    .line 489
    :pswitch_b
    invoke-direct {p0, p2}, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->createIfNull(Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;)Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;

    move-result-object v3

    const-string v4, "italic"

    .line 490
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    .line 489
    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;->setItalic(Z)Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;

    move-result-object p2

    .line 491
    goto/16 :goto_c

    .line 485
    :pswitch_c
    invoke-direct {p0, p2}, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->createIfNull(Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;)Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;

    move-result-object v3

    const-string v4, "bold"

    .line 486
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    .line 485
    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;->setBold(Z)Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;

    move-result-object p2

    .line 487
    goto/16 :goto_c

    .line 478
    :pswitch_d
    :try_start_0
    invoke-direct {p0, p2}, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->createIfNull(Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;)Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;

    move-result-object v3

    move-object p2, v3

    .line 479
    invoke-static {v2, p2}, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->parseFontSize(Ljava/lang/String;Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;)V
    :try_end_0
    .catch Landroidx/media2/exoplayer/external/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    goto/16 :goto_c

    .line 480
    :catch_0
    move-exception v3

    .line 481
    .local v3, "e":Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;
    const-string v4, "TtmlDecoder"

    const-string v5, "Failed parsing fontSize value: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_9

    :cond_7
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    :goto_9
    invoke-static {v4, v5}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    .end local v3    # "e":Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;
    goto/16 :goto_c

    .line 474
    :pswitch_e
    invoke-direct {p0, p2}, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->createIfNull(Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;)Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;->setFontFamily(Ljava/lang/String;)Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;

    move-result-object p2

    .line 475
    goto/16 :goto_c

    .line 466
    :pswitch_f
    invoke-direct {p0, p2}, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->createIfNull(Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;)Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;

    move-result-object p2

    .line 468
    :try_start_1
    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/ColorParser;->parseTtmlColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;->setFontColor(I)Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 471
    goto :goto_c

    .line 469
    :catch_1
    move-exception v3

    .line 470
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "TtmlDecoder"

    const-string v5, "Failed parsing color value: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_a

    :cond_8
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    :goto_a
    invoke-static {v4, v5}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_c

    .line 458
    :pswitch_10
    invoke-direct {p0, p2}, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->createIfNull(Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;)Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;

    move-result-object p2

    .line 460
    :try_start_2
    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/ColorParser;->parseTtmlColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;->setBackgroundColor(I)Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 463
    goto :goto_c

    .line 461
    :catch_2
    move-exception v3

    .line 462
    .restart local v3    # "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "TtmlDecoder"

    const-string v5, "Failed parsing background value: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_b

    :cond_9
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    :goto_b
    invoke-static {v4, v5}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_c

    .line 453
    :pswitch_11
    const-string v3, "style"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 454
    invoke-direct {p0, p2}, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->createIfNull(Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;)Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;->setId(Ljava/lang/String;)Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;

    move-result-object p2

    goto :goto_c

    .line 453
    :cond_a
    nop

    .line 449
    .end local v2    # "attributeValue":Ljava/lang/String;
    :goto_c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 532
    .end local v1    # "i":I
    :cond_b
    return-object p2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5c71855e -> :sswitch_8
        -0x48ff636d -> :sswitch_7
        -0x3f826a28 -> :sswitch_6
        -0x3468fa43 -> :sswitch_5
        -0x2bc67c59 -> :sswitch_4
        0xd1b -> :sswitch_3
        0x5a72f63 -> :sswitch_2
        0x15caa0f0 -> :sswitch_1
        0x4cb7f6d5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_5
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x514d33ab -> :sswitch_d
        0x188db -> :sswitch_c
        0x32a007 -> :sswitch_b
        0x677c21c -> :sswitch_a
        0x68ac462 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method private parseStyleIds(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "parentStyleIds"    # Ljava/lang/String;

    .line 443
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 444
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "\\s+"

    invoke-static {p1, v0}, Landroidx/media2/exoplayer/external/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static parseTimeExpression(Ljava/lang/String;Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$FrameAndTickRate;)J
    .locals 16
    .param p0, "time"    # Ljava/lang/String;
    .param p1, "frameAndTickRate"    # Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$FrameAndTickRate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;
        }
    .end annotation

    .line 677
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->CLOCK_TIME:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 678
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v3, :cond_3

    .line 679
    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 680
    .local v3, "hours":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0xe10

    mul-long v10, v10, v12

    long-to-double v10, v10

    .line 681
    .local v10, "durationSeconds":D
    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 682
    .local v9, "minutes":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    const-wide/16 v14, 0x3c

    mul-long v12, v12, v14

    long-to-double v12, v12

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v10, v12

    .line 683
    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 684
    .local v8, "seconds":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    long-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v10, v12

    .line 685
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 686
    .local v7, "fraction":Ljava/lang/String;
    const-wide/16 v12, 0x0

    if-eqz v7, :cond_0

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    goto :goto_0

    :cond_0
    move-wide v14, v12

    :goto_0
    add-double/2addr v10, v14

    .line 687
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 688
    .local v6, "frames":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 689
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    long-to-float v14, v14

    iget v15, v1, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$FrameAndTickRate;->effectiveFrameRate:F

    div-float/2addr v14, v15

    float-to-double v14, v14

    goto :goto_1

    :cond_1
    move-wide v14, v12

    :goto_1
    add-double/2addr v10, v14

    .line 690
    const/4 v14, 0x6

    invoke-virtual {v2, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    .line 691
    .local v14, "subframes":Ljava/lang/String;
    if-eqz v14, :cond_2

    .line 693
    nop

    .line 692
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    long-to-double v12, v12

    iget v15, v1, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$FrameAndTickRate;->subFrameRate:I

    int-to-double v4, v15

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v12, v4

    iget v4, v1, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$FrameAndTickRate;->effectiveFrameRate:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v12, v4

    goto :goto_2

    .line 694
    :cond_2
    nop

    :goto_2
    add-double/2addr v10, v12

    .line 695
    nop

    const-wide v4, 0x412e848000000000L    # 1000000.0

    mul-double v4, v4, v10

    double-to-long v4, v4

    return-wide v4

    .line 697
    .end local v3    # "hours":Ljava/lang/String;
    .end local v6    # "frames":Ljava/lang/String;
    .end local v7    # "fraction":Ljava/lang/String;
    .end local v8    # "seconds":Ljava/lang/String;
    .end local v9    # "minutes":Ljava/lang/String;
    .end local v10    # "durationSeconds":D
    .end local v14    # "subframes":Ljava/lang/String;
    :cond_3
    nop

    sget-object v3, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->OFFSET_TIME:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 698
    nop

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 699
    nop

    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 700
    .local v3, "timeValue":Ljava/lang/String;
    nop

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 701
    .local v4, "offsetSeconds":D
    nop

    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    .line 702
    .local v11, "unit":Ljava/lang/String;
    nop

    const/4 v12, -0x1

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v13

    const/16 v14, 0x66

    if-eq v13, v14, :cond_8

    const/16 v7, 0x68

    if-eq v13, v7, :cond_7

    const/16 v7, 0x6d

    if-eq v13, v7, :cond_6

    const/16 v7, 0xda6

    if-eq v13, v7, :cond_5

    packed-switch v13, :pswitch_data_0

    :cond_4
    nop

    goto :goto_3

    :pswitch_0
    nop

    const-string v7, "t"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    nop

    goto :goto_4

    :pswitch_1
    nop

    const-string v6, "s"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    nop

    const/4 v6, 0x2

    goto :goto_4

    :cond_5
    nop

    const-string v6, "ms"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    nop

    const/4 v6, 0x3

    goto :goto_4

    :cond_6
    nop

    const-string v6, "m"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    nop

    const/4 v6, 0x1

    goto :goto_4

    :cond_7
    nop

    const-string v6, "h"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    nop

    const/4 v6, 0x0

    goto :goto_4

    :cond_8
    nop

    const-string v6, "f"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    nop

    const/4 v6, 0x4

    goto :goto_4

    :goto_3
    const/4 v6, -0x1

    :goto_4
    nop

    packed-switch v6, :pswitch_data_1

    nop

    goto :goto_5

    .line 719
    :pswitch_2
    nop

    iget v6, v1, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$FrameAndTickRate;->tickRate:I

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    goto :goto_5

    .line 716
    :pswitch_3
    nop

    iget v6, v1, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$FrameAndTickRate;->effectiveFrameRate:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    .line 717
    nop

    goto :goto_5

    .line 713
    :pswitch_4
    nop

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    .line 714
    nop

    goto :goto_5

    .line 711
    :pswitch_5
    nop

    goto :goto_5

    .line 707
    :pswitch_6
    nop

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    mul-double v4, v4, v6

    .line 708
    nop

    goto :goto_5

    .line 704
    :pswitch_7
    nop

    const-wide v6, 0x40ac200000000000L    # 3600.0

    mul-double v4, v4, v6

    .line 705
    nop

    .line 722
    :goto_5
    nop

    const-wide v6, 0x412e848000000000L    # 1000000.0

    mul-double v6, v6, v4

    double-to-long v6, v6

    return-wide v6

    .line 724
    .end local v3    # "timeValue":Ljava/lang/String;
    .end local v4    # "offsetSeconds":D
    .end local v11    # "unit":Ljava/lang/String;
    :cond_9
    nop

    new-instance v3, Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;

    const-string v4, "Malformed time expression: "

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_a

    nop

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_a
    nop

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    :goto_6
    nop

    invoke-direct {v3, v4}, Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v3

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x73
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private parseTtsExtent(Lorg/xmlpull/v1/XmlPullParser;)Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$TtsExtent;
    .locals 8
    .param p1, "xmlParser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 242
    const-string v0, "extent"

    invoke-static {p1, v0}, Landroidx/media2/exoplayer/external/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "ttsExtent":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 244
    return-object v1

    .line 247
    :cond_0
    sget-object v2, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->PIXEL_COORDINATES:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 248
    .local v2, "extentMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_2

    .line 249
    const-string v3, "TtmlDecoder"

    const-string v4, "Ignoring non-pixel tts extent: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    :goto_0
    invoke-static {v3, v4}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-object v1

    .line 253
    :cond_2
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 254
    .local v3, "width":I
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 255
    .local v4, "height":I
    new-instance v5, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$TtsExtent;

    invoke-direct {v5, v3, v4}, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$TtsExtent;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 256
    .end local v3    # "width":I
    .end local v4    # "height":I
    :catch_0
    move-exception v3

    .line 257
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v4, "TtmlDecoder"

    const-string v5, "Ignoring malformed tts extent: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

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
    invoke-static {v4, v5}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    return-object v1
.end method


# virtual methods
.method protected bridge synthetic decode([BIZ)Landroidx/media2/exoplayer/external/text/Subtitle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;
        }
    .end annotation

    .line 65
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->decode([BIZ)Landroidx/media2/exoplayer/external/text/ttml/TtmlSubtitle;

    move-result-object p1

    return-object p1
.end method

.method protected decode([BIZ)Landroidx/media2/exoplayer/external/text/ttml/TtmlSubtitle;
    .locals 23
    .param p1, "bytes"    # [B
    .param p2, "length"    # I
    .param p3, "reset"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;
        }
    .end annotation

    move-object/from16 v8, p0

    .line 114
    :try_start_0
    iget-object v0, v8, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v9, v0

    .line 115
    .local v9, "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v10, v0

    .line 116
    .local v10, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v11, v0

    .line 117
    .local v11, "regionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/media2/exoplayer/external/text/ttml/TtmlRegion;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v12, v0

    .line 118
    .local v12, "imageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, ""

    new-instance v1, Landroidx/media2/exoplayer/external/text/ttml/TtmlRegion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/text/ttml/TtmlRegion;-><init>(Ljava/lang/String;)V

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const/4 v1, 0x0

    move-object/from16 v13, p1

    move/from16 v14, p2

    invoke-direct {v0, v13, v1, v14}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    move-object v15, v0

    .line 120
    .local v15, "inputStream":Ljava/io/ByteArrayInputStream;
    invoke-interface {v9, v15, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, "ttmlSubtitle":Landroidx/media2/exoplayer/external/text/ttml/TtmlSubtitle;
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    move-object v7, v1

    .line 123
    .local v7, "nodeStack":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;>;"
    const/4 v1, 0x0

    .line 124
    .local v1, "unsupportedNodeDepth":I
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 125
    .local v2, "eventType":I
    sget-object v3, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->DEFAULT_FRAME_AND_TICK_RATE:Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$FrameAndTickRate;

    .line 126
    .local v3, "frameAndTickRate":Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$FrameAndTickRate;
    sget-object v4, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->DEFAULT_CELL_RESOLUTION:Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$CellResolution;

    .line 127
    .local v4, "cellResolution":Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$CellResolution;
    const/4 v5, 0x0

    move-object/from16 v16, v0

    move/from16 v17, v1

    move v6, v2

    .line 128
    .end local v0    # "ttmlSubtitle":Landroidx/media2/exoplayer/external/text/ttml/TtmlSubtitle;
    .end local v1    # "unsupportedNodeDepth":I
    .end local v2    # "eventType":I
    .local v5, "ttsExtent":Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$TtsExtent;
    .local v6, "eventType":I
    .local v16, "ttmlSubtitle":Landroidx/media2/exoplayer/external/text/ttml/TtmlSubtitle;
    .local v17, "unsupportedNodeDepth":I
    :goto_0
    const/4 v0, 0x1

    if-eq v6, v0, :cond_c

    .line 129
    invoke-virtual {v7}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;

    move-object v2, v0

    .line 130
    .local v2, "parent":Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;
    const/4 v0, 0x3

    const/4 v1, 0x2

    if-nez v17, :cond_9

    .line 131
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v19, v18

    .line 132
    .local v19, "name":Ljava/lang/String;
    if-ne v6, v1, :cond_5

    .line 133
    const-string/jumbo v0, "tt"

    move-object/from16 v1, v19

    .end local v19    # "name":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-direct {v8, v9}, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->parseFrameAndTickRates(Lorg/xmlpull/v1/XmlPullParser;)Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$FrameAndTickRate;

    move-result-object v0

    move-object v3, v0

    .line 135
    sget-object v0, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->DEFAULT_CELL_RESOLUTION:Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$CellResolution;

    invoke-direct {v8, v9, v0}, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->parseCellResolution(Lorg/xmlpull/v1/XmlPullParser;Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$CellResolution;)Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$CellResolution;

    move-result-object v0

    .line 136
    .end local v4    # "cellResolution":Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$CellResolution;
    .local v0, "cellResolution":Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$CellResolution;
    invoke-direct {v8, v9}, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->parseTtsExtent(Lorg/xmlpull/v1/XmlPullParser;)Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$TtsExtent;

    move-result-object v4

    move-object/from16 v18, v0

    move-object v5, v3

    move-object/from16 v19, v4

    goto :goto_1

    .line 133
    .end local v0    # "cellResolution":Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$CellResolution;
    .restart local v4    # "cellResolution":Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$CellResolution;
    :cond_0
    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object v5, v3

    .line 138
    .end local v3    # "frameAndTickRate":Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$FrameAndTickRate;
    .end local v4    # "cellResolution":Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$CellResolution;
    .local v5, "frameAndTickRate":Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$FrameAndTickRate;
    .local v18, "cellResolution":Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$CellResolution;
    .local v19, "ttsExtent":Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$TtsExtent;
    :goto_1
    invoke-static {v1}, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->isSupportedTag(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 139
    const-string v0, "TtmlDecoder"

    const-string v3, "Ignoring unsupported tag: "

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v20

    if-eqz v20, :cond_1

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    :goto_2
    invoke-static {v0, v3}, Landroidx/media2/exoplayer/external/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    add-int/lit8 v17, v17, 0x1

    move-object v13, v2

    move-object v14, v5

    move-object v2, v10

    move-object/from16 v21, v15

    move v15, v6

    move-object v10, v7

    goto/16 :goto_7

    .line 141
    :cond_2
    const-string v0, "head"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 142
    move-object/from16 v20, v1

    .end local v1    # "name":Ljava/lang/String;
    .local v20, "name":Ljava/lang/String;
    move-object/from16 v1, p0

    move-object v4, v2

    .end local v2    # "parent":Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;
    .local v4, "parent":Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;
    move-object v2, v9

    move-object v3, v10

    move-object v13, v4

    .end local v4    # "parent":Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;
    .local v13, "parent":Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;
    move-object/from16 v4, v18

    move-object v14, v5

    .end local v5    # "frameAndTickRate":Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$FrameAndTickRate;
    .local v14, "frameAndTickRate":Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$FrameAndTickRate;
    move-object/from16 v5, v19

    move-object/from16 v21, v15

    move v15, v6

    .end local v6    # "eventType":I
    .local v15, "eventType":I
    .local v21, "inputStream":Ljava/io/ByteArrayInputStream;
    move-object v6, v11

    move-object/from16 v22, v10

    move-object v10, v7

    .end local v7    # "nodeStack":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;>;"
    .local v10, "nodeStack":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;>;"
    .local v22, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;>;"
    move-object v7, v12

    invoke-direct/range {v1 .. v7}, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->parseHeader(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$CellResolution;Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$TtsExtent;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_4

    .line 145
    .end local v13    # "parent":Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;
    .end local v14    # "frameAndTickRate":Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$FrameAndTickRate;
    .end local v20    # "name":Ljava/lang/String;
    .end local v21    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local v22    # "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;>;"
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "parent":Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;
    .restart local v5    # "frameAndTickRate":Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$FrameAndTickRate;
    .restart local v6    # "eventType":I
    .restart local v7    # "nodeStack":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;>;"
    .local v10, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;>;"
    .local v15, "inputStream":Ljava/io/ByteArrayInputStream;
    :cond_3
    move-object/from16 v20, v1

    move-object v13, v2

    move-object v14, v5

    move-object/from16 v22, v10

    move-object/from16 v21, v15

    move v15, v6

    move-object v10, v7

    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "parent":Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;
    .end local v5    # "frameAndTickRate":Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$FrameAndTickRate;
    .end local v6    # "eventType":I
    .end local v7    # "nodeStack":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;>;"
    .local v10, "nodeStack":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;>;"
    .restart local v13    # "parent":Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;
    .restart local v14    # "frameAndTickRate":Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$FrameAndTickRate;
    .local v15, "eventType":I
    .restart local v20    # "name":Ljava/lang/String;
    .restart local v21    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v22    # "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;>;"
    :try_start_1
    invoke-direct {v8, v9, v13, v11, v14}, Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder;->parseNode(Lorg/xmlpull/v1/XmlPullParser;Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;Ljava/util/Map;Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$FrameAndTickRate;)Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;

    move-result-object v0

    .line 146
    .local v0, "node":Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;
    invoke-virtual {v10, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 147
    if-eqz v13, :cond_4

    .line 148
    invoke-virtual {v13, v0}, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->addChild(Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;)V
    :try_end_1
    .catch Landroidx/media2/exoplayer/external/text/SubtitleDecoderException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 147
    :cond_4
    nop

    .line 154
    .end local v0    # "node":Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;
    :goto_3
    nop

    .line 164
    .end local v20    # "name":Ljava/lang/String;
    :goto_4
    move-object/from16 v2, v22

    goto :goto_7

    .line 150
    .restart local v20    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;
    :try_start_2
    const-string v1, "TtmlDecoder"

    const-string v2, "Suppressing parser error"

    invoke-static {v1, v2, v0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 153
    nop

    .end local v0    # "e":Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;
    add-int/lit8 v17, v17, 0x1

    .line 154
    move-object/from16 v2, v22

    goto :goto_7

    .line 156
    .end local v13    # "parent":Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;
    .end local v14    # "frameAndTickRate":Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$FrameAndTickRate;
    .end local v18    # "cellResolution":Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$CellResolution;
    .end local v20    # "name":Ljava/lang/String;
    .end local v21    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local v22    # "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;>;"
    .restart local v2    # "parent":Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;
    .restart local v3    # "frameAndTickRate":Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$FrameAndTickRate;
    .local v4, "cellResolution":Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$CellResolution;
    .local v5, "ttsExtent":Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$TtsExtent;
    .restart local v6    # "eventType":I
    .restart local v7    # "nodeStack":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;>;"
    .local v10, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;>;"
    .local v15, "inputStream":Ljava/io/ByteArrayInputStream;
    .local v19, "name":Ljava/lang/String;
    :cond_5
    move-object v13, v2

    move-object/from16 v22, v10

    move-object/from16 v21, v15

    move-object/from16 v20, v19

    move v15, v6

    move-object v10, v7

    .end local v2    # "parent":Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;
    .end local v6    # "eventType":I
    .end local v7    # "nodeStack":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;>;"
    .end local v19    # "name":Ljava/lang/String;
    .local v10, "nodeStack":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;>;"
    .restart local v13    # "parent":Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;
    .local v15, "eventType":I
    .restart local v20    # "name":Ljava/lang/String;
    .restart local v21    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v22    # "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;>;"
    const/4 v1, 0x4

    if-ne v15, v1, :cond_6

    .line 157
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->buildTextNode(Ljava/lang/String;)Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->addChild(Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;)V

    move-object/from16 v2, v22

    goto :goto_6

    .line 158
    :cond_6
    if-ne v15, v0, :cond_8

    .line 159
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 160
    new-instance v0, Landroidx/media2/exoplayer/external/text/ttml/TtmlSubtitle;

    invoke-virtual {v10}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;

    move-object/from16 v2, v22

    .end local v22    # "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;>;"
    .local v2, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;>;"
    invoke-direct {v0, v1, v2, v11, v12}, Landroidx/media2/exoplayer/external/text/ttml/TtmlSubtitle;-><init>(Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    move-object/from16 v16, v0

    goto :goto_5

    .line 159
    .end local v2    # "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;>;"
    .restart local v22    # "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;>;"
    :cond_7
    move-object/from16 v2, v22

    .line 162
    .end local v22    # "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;>;"
    .restart local v2    # "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;>;"
    :goto_5
    invoke-virtual {v10}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-object v14, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    goto :goto_7

    .line 158
    .end local v2    # "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;>;"
    .restart local v22    # "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;>;"
    :cond_8
    move-object/from16 v2, v22

    .line 164
    .end local v20    # "name":Ljava/lang/String;
    .end local v22    # "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;>;"
    .restart local v2    # "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;>;"
    :goto_6
    move-object v14, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    .end local v3    # "frameAndTickRate":Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$FrameAndTickRate;
    .end local v4    # "cellResolution":Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$CellResolution;
    .end local v5    # "ttsExtent":Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$TtsExtent;
    .restart local v14    # "frameAndTickRate":Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$FrameAndTickRate;
    .restart local v18    # "cellResolution":Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$CellResolution;
    .local v19, "ttsExtent":Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$TtsExtent;
    :goto_7
    move-object v3, v14

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    goto :goto_8

    .line 165
    .end local v13    # "parent":Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;
    .end local v14    # "frameAndTickRate":Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$FrameAndTickRate;
    .end local v18    # "cellResolution":Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$CellResolution;
    .end local v19    # "ttsExtent":Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$TtsExtent;
    .end local v21    # "inputStream":Ljava/io/ByteArrayInputStream;
    .local v2, "parent":Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;
    .restart local v3    # "frameAndTickRate":Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$FrameAndTickRate;
    .restart local v4    # "cellResolution":Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$CellResolution;
    .restart local v5    # "ttsExtent":Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$TtsExtent;
    .restart local v6    # "eventType":I
    .restart local v7    # "nodeStack":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;>;"
    .local v10, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;>;"
    .local v15, "inputStream":Ljava/io/ByteArrayInputStream;
    :cond_9
    move-object v13, v2

    move-object v2, v10

    move-object/from16 v21, v15

    move v15, v6

    move-object v10, v7

    .end local v6    # "eventType":I
    .end local v7    # "nodeStack":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;>;"
    .local v2, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;>;"
    .local v10, "nodeStack":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;>;"
    .restart local v13    # "parent":Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;
    .local v15, "eventType":I
    .restart local v21    # "inputStream":Ljava/io/ByteArrayInputStream;
    if-ne v15, v1, :cond_a

    .line 166
    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    .line 167
    :cond_a
    if-ne v15, v0, :cond_b

    .line 168
    add-int/lit8 v17, v17, -0x1

    goto :goto_8

    .line 167
    :cond_b
    nop

    .line 171
    :goto_8
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 172
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move v6, v0

    .line 173
    .end local v13    # "parent":Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;
    .end local v15    # "eventType":I
    .restart local v6    # "eventType":I
    move-object v7, v10

    move-object/from16 v15, v21

    move-object/from16 v13, p1

    move/from16 v14, p2

    move-object v10, v2

    goto/16 :goto_0

    .line 174
    .end local v2    # "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;>;"
    .end local v21    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v7    # "nodeStack":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;>;"
    .local v10, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;>;"
    .local v15, "inputStream":Ljava/io/ByteArrayInputStream;
    :cond_c
    move-object v2, v10

    move-object/from16 v21, v15

    move v15, v6

    move-object v10, v7

    .end local v6    # "eventType":I
    .end local v7    # "nodeStack":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;>;"
    .restart local v2    # "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;>;"
    .local v10, "nodeStack":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;>;"
    .local v15, "eventType":I
    .restart local v21    # "inputStream":Ljava/io/ByteArrayInputStream;
    return-object v16

    .line 177
    .end local v2    # "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;>;"
    .end local v3    # "frameAndTickRate":Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$FrameAndTickRate;
    .end local v4    # "cellResolution":Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$CellResolution;
    .end local v5    # "ttsExtent":Landroidx/media2/exoplayer/external/text/ttml/TtmlDecoder$TtsExtent;
    .end local v9    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "nodeStack":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;>;"
    .end local v11    # "regionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/media2/exoplayer/external/text/ttml/TtmlRegion;>;"
    .end local v12    # "imageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15    # "eventType":I
    .end local v16    # "ttmlSubtitle":Landroidx/media2/exoplayer/external/text/ttml/TtmlSubtitle;
    .end local v17    # "unsupportedNodeDepth":I
    .end local v21    # "inputStream":Ljava/io/ByteArrayInputStream;
    :catch_1
    move-exception v0

    .line 178
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected error when reading input."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 175
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 176
    .local v0, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;

    const-string v2, "Unable to decode source"

    invoke-direct {v1, v2, v0}, Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    return-void
.end method
