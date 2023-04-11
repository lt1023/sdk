.class final Landroidx/media2/exoplayer/external/text/webvtt/CssParser;
.super Ljava/lang/Object;
.source "CssParser.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final BLOCK_END:Ljava/lang/String; = "}"

.field private static final BLOCK_START:Ljava/lang/String; = "{"

.field private static final PROPERTY_BGCOLOR:Ljava/lang/String; = "background-color"

.field private static final PROPERTY_FONT_FAMILY:Ljava/lang/String; = "font-family"

.field private static final PROPERTY_FONT_STYLE:Ljava/lang/String; = "font-style"

.field private static final PROPERTY_FONT_WEIGHT:Ljava/lang/String; = "font-weight"

.field private static final PROPERTY_TEXT_DECORATION:Ljava/lang/String; = "text-decoration"

.field private static final VALUE_BOLD:Ljava/lang/String; = "bold"

.field private static final VALUE_ITALIC:Ljava/lang/String; = "italic"

.field private static final VALUE_UNDERLINE:Ljava/lang/String; = "underline"

.field private static final VOICE_NAME_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final stringBuilder:Ljava/lang/StringBuilder;

.field private final styleInput:Landroidx/media2/exoplayer/external/util/ParsableByteArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-string v0, "\\[voice=\"([^\"]*)\"\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/text/webvtt/CssParser;->VOICE_NAME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/CssParser;->styleInput:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/CssParser;->stringBuilder:Ljava/lang/StringBuilder;

    .line 58
    return-void
.end method

.method private applySelectorToStyle(Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;Ljava/lang/String;)V
    .locals 7
    .param p1, "style"    # Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;
    .param p2, "selector"    # Ljava/lang/String;

    .line 318
    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    return-void

    .line 321
    :cond_0
    const/16 v0, 0x5b

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 322
    .local v0, "voiceStartIndex":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    .line 323
    sget-object v4, Landroidx/media2/exoplayer/external/text/webvtt/CssParser;->VOICE_NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 324
    .local v4, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 325
    invoke-virtual {v4, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->setTargetVoice(Ljava/lang/String;)V

    goto :goto_0

    .line 324
    :cond_1
    nop

    .line 327
    :goto_0
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 322
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    :cond_2
    nop

    .line 329
    :goto_1
    const-string v4, "\\."

    invoke-static {p2, v4}, Landroidx/media2/exoplayer/external/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 330
    .local v4, "classDivision":[Ljava/lang/String;
    aget-object v5, v4, v2

    .line 331
    .local v5, "tagAndIdDivision":Ljava/lang/String;
    const/16 v6, 0x23

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 332
    .local v6, "idPrefixIndex":I
    if-eq v6, v1, :cond_3

    .line 333
    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->setTargetTagName(Ljava/lang/String;)V

    .line 334
    add-int/lit8 v1, v6, 0x1

    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->setTargetId(Ljava/lang/String;)V

    goto :goto_2

    .line 336
    :cond_3
    invoke-virtual {p1, v5}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->setTargetTagName(Ljava/lang/String;)V

    .line 338
    :goto_2
    array-length v1, v4

    if-le v1, v3, :cond_4

    .line 339
    array-length v1, v4

    invoke-static {v4, v3, v1}, Landroidx/media2/exoplayer/external/util/Util;->nullSafeArrayCopyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->setTargetClasses([Ljava/lang/String;)V

    goto :goto_3

    .line 338
    :cond_4
    nop

    .line 341
    :goto_3
    return-void
.end method

.method private static maybeSkipComment(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Z
    .locals 7
    .param p0, "input"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 275
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 276
    .local v0, "position":I
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v1

    .line 277
    .local v1, "limit":I
    iget-object v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    .line 278
    .local v2, "data":[B
    add-int/lit8 v3, v0, 0x2

    if-gt v3, v1, :cond_4

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "position":I
    .local v3, "position":I
    aget-byte v0, v2, v0

    const/16 v4, 0x2f

    if-ne v0, v4, :cond_3

    add-int/lit8 v0, v3, 0x1

    .end local v3    # "position":I
    .restart local v0    # "position":I
    aget-byte v3, v2, v3

    const/16 v5, 0x2a

    if-ne v3, v5, :cond_4

    .line 279
    :goto_0
    add-int/lit8 v3, v0, 0x1

    if-ge v3, v1, :cond_2

    .line 280
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "position":I
    .restart local v3    # "position":I
    aget-byte v0, v2, v0

    int-to-char v0, v0

    .line 281
    .local v0, "skippedChar":C
    if-ne v0, v5, :cond_1

    .line 282
    aget-byte v6, v2, v3

    int-to-char v6, v6

    if-ne v6, v4, :cond_0

    .line 283
    add-int/lit8 v3, v3, 0x1

    .line 284
    move v1, v3

    move v0, v3

    goto :goto_2

    .line 282
    :cond_0
    goto :goto_1

    .line 281
    :cond_1
    nop

    .line 287
    .end local v0    # "skippedChar":C
    :goto_1
    move v0, v3

    .end local v3    # "position":I
    .local v0, "position":I
    :goto_2
    goto :goto_0

    .line 288
    :cond_2
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 289
    const/4 v3, 0x1

    return v3

    .line 278
    .end local v0    # "position":I
    .restart local v3    # "position":I
    :cond_3
    move v0, v3

    nop

    .line 291
    .end local v3    # "position":I
    .restart local v0    # "position":I
    :cond_4
    const/4 v3, 0x0

    return v3
.end method

.method private static maybeSkipWhitespace(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Z
    .locals 1
    .param p0, "input"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 223
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/media2/exoplayer/external/text/webvtt/CssParser;->peekCharAtPosition(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 232
    const/4 v0, 0x0

    return v0

    .line 229
    :sswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 230
    return v0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private static parseIdentifier(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 5
    .param p0, "input"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p1, "stringBuilder"    # Ljava/lang/StringBuilder;

    .line 295
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 296
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 297
    .local v0, "position":I
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v1

    .line 298
    .local v1, "limit":I
    const/4 v2, 0x0

    .line 299
    .local v2, "identifierEndFound":Z
    :goto_0
    if-ge v0, v1, :cond_5

    if-nez v2, :cond_5

    .line 300
    iget-object v3, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    aget-byte v3, v3, v0

    int-to-char v3, v3

    .line 301
    .local v3, "c":C
    const/16 v4, 0x41

    if-lt v3, v4, :cond_1

    const/16 v4, 0x5a

    if-le v3, v4, :cond_0

    goto :goto_2

    :cond_0
    :goto_1
    goto :goto_3

    :cond_1
    :goto_2
    const/16 v4, 0x61

    if-lt v3, v4, :cond_2

    const/16 v4, 0x7a

    if-le v3, v4, :cond_0

    :cond_2
    const/16 v4, 0x30

    if-lt v3, v4, :cond_3

    const/16 v4, 0x39

    if-le v3, v4, :cond_0

    :cond_3
    const/16 v4, 0x23

    if-eq v3, v4, :cond_0

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_0

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_0

    const/16 v4, 0x5f

    if-ne v3, v4, :cond_4

    goto :goto_1

    .line 306
    :cond_4
    const/4 v2, 0x1

    goto :goto_4

    .line 303
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 304
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 308
    .end local v3    # "c":C
    :goto_4
    goto :goto_0

    .line 299
    :cond_5
    nop

    .line 309
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 310
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static parseNextToken(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 4
    .param p0, "input"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p1, "stringBuilder"    # Ljava/lang/StringBuilder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 210
    invoke-static {p0}, Landroidx/media2/exoplayer/external/text/webvtt/CssParser;->skipWhitespaceAndComments(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V

    .line 211
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-nez v0, :cond_0

    .line 212
    const/4 v0, 0x0

    return-object v0

    .line 214
    :cond_0
    invoke-static {p0, p1}, Landroidx/media2/exoplayer/external/text/webvtt/CssParser;->parseIdentifier(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "identifier":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 216
    return-object v0

    .line 219
    :cond_1
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    int-to-char v1, v1

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static parsePropertyValue(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 5
    .param p0, "input"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p1, "stringBuilder"    # Ljava/lang/StringBuilder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .local v0, "expressionBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 257
    .local v1, "expressionEndFound":Z
    :goto_0
    if-nez v1, :cond_3

    .line 258
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v2

    .line 259
    .local v2, "position":I
    invoke-static {p0, p1}, Landroidx/media2/exoplayer/external/text/webvtt/CssParser;->parseNextToken(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    .line 260
    .local v3, "token":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 262
    const/4 v4, 0x0

    return-object v4

    .line 264
    :cond_0
    const-string/jumbo v4, "}"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, ";"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 268
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 264
    :cond_2
    :goto_1
    nop

    .line 265
    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 266
    const/4 v1, 0x1

    goto :goto_0

    .line 271
    .end local v2    # "position":I
    .end local v3    # "token":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static parseSelector(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 6
    .param p0, "input"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p1, "stringBuilder"    # Ljava/lang/StringBuilder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 106
    invoke-static {p0}, Landroidx/media2/exoplayer/external/text/webvtt/CssParser;->skipWhitespaceAndComments(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V

    .line 107
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 108
    return-object v2

    .line 110
    :cond_0
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "cueSelector":Ljava/lang/String;
    const-string v1, "::cue"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 112
    return-object v2

    .line 114
    :cond_1
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 115
    .local v1, "position":I
    invoke-static {p0, p1}, Landroidx/media2/exoplayer/external/text/webvtt/CssParser;->parseNextToken(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, "token":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 117
    return-object v2

    .line 119
    :cond_2
    const-string/jumbo v4, "{"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 120
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 121
    const-string v2, ""

    return-object v2

    .line 123
    :cond_3
    const/4 v4, 0x0

    .line 124
    .local v4, "target":Ljava/lang/String;
    const-string v5, "("

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 125
    invoke-static {p0}, Landroidx/media2/exoplayer/external/text/webvtt/CssParser;->readCueTarget(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 124
    :cond_4
    nop

    .line 127
    :goto_0
    invoke-static {p0, p1}, Landroidx/media2/exoplayer/external/text/webvtt/CssParser;->parseNextToken(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    .line 128
    const-string v5, ")"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 129
    return-object v2

    .line 131
    :cond_5
    return-object v4
.end method

.method private static parseStyleDeclaration(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;Ljava/lang/StringBuilder;)V
    .locals 6
    .param p0, "input"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p1, "style"    # Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;
    .param p2, "stringBuilder"    # Ljava/lang/StringBuilder;

    .line 151
    invoke-static {p0}, Landroidx/media2/exoplayer/external/text/webvtt/CssParser;->skipWhitespaceAndComments(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V

    .line 152
    invoke-static {p0, p2}, Landroidx/media2/exoplayer/external/text/webvtt/CssParser;->parseIdentifier(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "property":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    return-void

    .line 156
    :cond_0
    const-string v1, ":"

    invoke-static {p0, p2}, Landroidx/media2/exoplayer/external/text/webvtt/CssParser;->parseNextToken(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 157
    return-void

    .line 159
    :cond_1
    invoke-static {p0}, Landroidx/media2/exoplayer/external/text/webvtt/CssParser;->skipWhitespaceAndComments(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V

    .line 160
    invoke-static {p0, p2}, Landroidx/media2/exoplayer/external/text/webvtt/CssParser;->parsePropertyValue(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_e

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_2

    .line 164
    :cond_2
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v2

    .line 165
    .local v2, "position":I
    invoke-static {p0, p2}, Landroidx/media2/exoplayer/external/text/webvtt/CssParser;->parseNextToken(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, "token":Ljava/lang/String;
    const-string v4, ";"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 168
    :cond_3
    const-string/jumbo v4, "}"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 171
    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 177
    :goto_0
    const-string v4, "color"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 178
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/ColorParser;->parseCssColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v4}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->setFontColor(I)Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;

    goto :goto_1

    .line 179
    :cond_4
    const-string v4, "background-color"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 180
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/ColorParser;->parseCssColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v4}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->setBackgroundColor(I)Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;

    goto :goto_1

    .line 181
    :cond_5
    const-string v4, "text-decoration"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_7

    .line 182
    const-string/jumbo v4, "underline"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 183
    invoke-virtual {p1, v5}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->setUnderline(Z)Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;

    goto :goto_1

    .line 182
    :cond_6
    goto :goto_1

    .line 185
    :cond_7
    const-string v4, "font-family"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 186
    invoke-virtual {p1, v1}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->setFontFamily(Ljava/lang/String;)Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;

    goto :goto_1

    .line 187
    :cond_8
    const-string v4, "font-weight"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 188
    const-string v4, "bold"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 189
    invoke-virtual {p1, v5}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->setBold(Z)Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;

    goto :goto_1

    .line 188
    :cond_9
    goto :goto_1

    .line 191
    :cond_a
    const-string v4, "font-style"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 192
    const-string v4, "italic"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 193
    invoke-virtual {p1, v5}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->setItalic(Z)Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;

    goto :goto_1

    .line 192
    :cond_b
    goto :goto_1

    .line 191
    :cond_c
    nop

    .line 197
    :goto_1
    return-void

    .line 174
    :cond_d
    return-void

    .line 161
    .end local v2    # "position":I
    .end local v3    # "token":Ljava/lang/String;
    :cond_e
    :goto_2
    nop

    .line 162
    return-void
.end method

.method private static peekCharAtPosition(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)C
    .locals 1
    .param p0, "input"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p1, "position"    # I

    .line 247
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    aget-byte v0, v0, p1

    int-to-char v0, v0

    return v0
.end method

.method private static readCueTarget(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Ljava/lang/String;
    .locals 5
    .param p0, "input"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 138
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 139
    .local v0, "position":I
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v1

    .line 140
    .local v1, "limit":I
    const/4 v2, 0x0

    .line 141
    .local v2, "cueTargetEndFound":Z
    :goto_0
    if-ge v0, v1, :cond_1

    if-nez v2, :cond_1

    .line 142
    iget-object v3, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "position":I
    .local v4, "position":I
    aget-byte v0, v3, v0

    int-to-char v0, v0

    .line 143
    .local v0, "c":C
    const/16 v3, 0x29

    if-ne v0, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    move v2, v3

    .line 144
    .end local v0    # "c":C
    move v0, v4

    goto :goto_0

    .line 141
    .end local v4    # "position":I
    .local v0, "position":I
    :cond_1
    nop

    .line 145
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static skipStyleBlock(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V
    .locals 2
    .param p0, "input"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 242
    :goto_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "line":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    return-void

    .line 243
    :cond_0
    goto :goto_0
.end method

.method static skipWhitespaceAndComments(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V
    .locals 2
    .param p0, "input"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 201
    const/4 v0, 0x1

    .line 202
    .local v0, "skipping":Z
    :goto_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-lez v1, :cond_2

    if-eqz v0, :cond_2

    .line 203
    invoke-static {p0}, Landroidx/media2/exoplayer/external/text/webvtt/CssParser;->maybeSkipWhitespace(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Landroidx/media2/exoplayer/external/text/webvtt/CssParser;->maybeSkipComment(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v1, 0x1

    :goto_2
    move v0, v1

    goto :goto_0

    .line 202
    :cond_2
    nop

    .line 205
    return-void
.end method


# virtual methods
.method public parseBlock(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;
    .locals 10
    .param p1, "input"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 71
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/CssParser;->stringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 72
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 73
    .local v0, "initialInputPosition":I
    invoke-static {p1}, Landroidx/media2/exoplayer/external/text/webvtt/CssParser;->skipStyleBlock(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V

    .line 74
    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/webvtt/CssParser;->styleInput:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset([BI)V

    .line 75
    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/webvtt/CssParser;->styleInput:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v2, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 76
    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/webvtt/CssParser;->styleInput:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/text/webvtt/CssParser;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/text/webvtt/CssParser;->parseSelector(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "selector":Ljava/lang/String;
    const/4 v3, 0x0

    if-eqz v2, :cond_6

    const-string/jumbo v4, "{"

    iget-object v5, p0, Landroidx/media2/exoplayer/external/text/webvtt/CssParser;->styleInput:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v6, p0, Landroidx/media2/exoplayer/external/text/webvtt/CssParser;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Landroidx/media2/exoplayer/external/text/webvtt/CssParser;->parseNextToken(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_4

    .line 80
    :cond_0
    new-instance v4, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;

    invoke-direct {v4}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;-><init>()V

    .line 81
    .local v4, "style":Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;
    invoke-direct {p0, v4, v2}, Landroidx/media2/exoplayer/external/text/webvtt/CssParser;->applySelectorToStyle(Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;Ljava/lang/String;)V

    .line 82
    const/4 v5, 0x0

    .line 83
    .local v5, "token":Ljava/lang/String;
    const/4 v6, 0x0

    .line 84
    .local v6, "blockEndFound":Z
    :goto_0
    if-nez v6, :cond_4

    .line 85
    iget-object v7, p0, Landroidx/media2/exoplayer/external/text/webvtt/CssParser;->styleInput:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v7}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v7

    .line 86
    .local v7, "position":I
    iget-object v8, p0, Landroidx/media2/exoplayer/external/text/webvtt/CssParser;->styleInput:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v9, p0, Landroidx/media2/exoplayer/external/text/webvtt/CssParser;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-static {v8, v9}, Landroidx/media2/exoplayer/external/text/webvtt/CssParser;->parseNextToken(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v5

    .line 87
    if-eqz v5, :cond_2

    const-string/jumbo v8, "}"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v8, 0x1

    :goto_2
    move v6, v8

    .line 88
    if-nez v6, :cond_3

    .line 89
    iget-object v8, p0, Landroidx/media2/exoplayer/external/text/webvtt/CssParser;->styleInput:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v8, v7}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 90
    iget-object v8, p0, Landroidx/media2/exoplayer/external/text/webvtt/CssParser;->styleInput:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v9, p0, Landroidx/media2/exoplayer/external/text/webvtt/CssParser;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-static {v8, v4, v9}, Landroidx/media2/exoplayer/external/text/webvtt/CssParser;->parseStyleDeclaration(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;Ljava/lang/StringBuilder;)V

    goto :goto_3

    .line 88
    :cond_3
    nop

    .line 92
    .end local v7    # "position":I
    :goto_3
    goto :goto_0

    .line 93
    :cond_4
    const-string/jumbo v1, "}"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v3, v4

    nop

    :cond_5
    return-object v3

    .line 77
    .end local v4    # "style":Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;
    .end local v5    # "token":Ljava/lang/String;
    .end local v6    # "blockEndFound":Z
    :cond_6
    :goto_4
    nop

    .line 78
    return-object v3
.end method
