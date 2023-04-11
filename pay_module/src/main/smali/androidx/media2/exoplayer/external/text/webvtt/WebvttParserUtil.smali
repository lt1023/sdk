.class public final Landroidx/media2/exoplayer/external/text/webvtt/WebvttParserUtil;
.super Ljava/lang/Object;
.source "WebvttParserUtil.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final COMMENT:Ljava/util/regex/Pattern;

.field private static final WEBVTT_HEADER:Ljava/lang/String; = "WEBVTT"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-string v0, "^NOTE(( |\t).*)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttParserUtil;->COMMENT:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findNextCueHeader(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Ljava/util/regex/Matcher;
    .locals 3
    .param p0, "input"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 109
    :goto_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .local v1, "line":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 110
    sget-object v0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttParserUtil;->COMMENT:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    :goto_1
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    goto :goto_0

    .line 114
    :cond_1
    sget-object v0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser;->CUE_HEADER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 115
    .local v0, "cueHeaderMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 116
    return-object v0

    .line 115
    :cond_2
    nop

    .line 118
    .end local v0    # "cueHeaderMatcher":Ljava/util/regex/Matcher;
    goto :goto_0

    .line 120
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isWebvttHeaderLine(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Z
    .locals 2
    .param p0, "input"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 60
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "WEBVTT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static parsePercentage(Ljava/lang/String;)F
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 93
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "Percentages must end with %"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseTimestampUs(Ljava/lang/String;)J
    .locals 11
    .param p0, "timestamp"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 72
    const-wide/16 v0, 0x0

    .line 73
    .local v0, "value":J
    const-string v2, "\\."

    invoke-static {p0, v2}, Landroidx/media2/exoplayer/external/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, "parts":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v4, v2, v3

    const-string v5, ":"

    invoke-static {v4, v5}, Landroidx/media2/exoplayer/external/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, "subparts":[Ljava/lang/String;
    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v6, v4, v3

    .line 76
    .local v6, "subpart":Ljava/lang/String;
    const-wide/16 v7, 0x3c

    mul-long v7, v7, v0

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    add-long v0, v7, v9

    .line 75
    .end local v6    # "subpart":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 78
    :cond_0
    const-wide/16 v5, 0x3e8

    mul-long v0, v0, v5

    .line 79
    array-length v3, v2

    const/4 v7, 0x2

    if-ne v3, v7, :cond_1

    .line 80
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    add-long/2addr v0, v7

    goto :goto_1

    .line 79
    :cond_1
    nop

    .line 82
    :goto_1
    mul-long v5, v5, v0

    return-wide v5
.end method

.method public static validateWebvttHeaderLine(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V
    .locals 5
    .param p0, "input"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 48
    .local v0, "startPosition":I
    invoke-static {p0}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttParserUtil;->isWebvttHeaderLine(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 49
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 50
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    const-string v2, "Expected WEBVTT. Got "

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_0
    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    :cond_1
    return-void
.end method
