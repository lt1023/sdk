.class public final Landroidx/media2/exoplayer/external/text/webvtt/WebvttDecoder;
.super Landroidx/media2/exoplayer/external/text/SimpleSubtitleDecoder;
.source "WebvttDecoder.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final COMMENT_START:Ljava/lang/String; = "NOTE"

.field private static final EVENT_COMMENT:I = 0x1

.field private static final EVENT_CUE:I = 0x3

.field private static final EVENT_END_OF_FILE:I = 0x0

.field private static final EVENT_NONE:I = -0x1

.field private static final EVENT_STYLE_BLOCK:I = 0x2

.field private static final STYLE_START:Ljava/lang/String; = "STYLE"


# instance fields
.field private final cssParser:Landroidx/media2/exoplayer/external/text/webvtt/CssParser;

.field private final cueParser:Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser;

.field private final definedStyles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;",
            ">;"
        }
    .end annotation
.end field

.field private final parsableWebvttData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private final webvttCueBuilder:Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    const-string v0, "WebvttDecoder"

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/text/SimpleSubtitleDecoder;-><init>(Ljava/lang/String;)V

    .line 56
    new-instance v0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttDecoder;->cueParser:Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser;

    .line 57
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttDecoder;->parsableWebvttData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 58
    new-instance v0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttDecoder;->webvttCueBuilder:Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;

    .line 59
    new-instance v0, Landroidx/media2/exoplayer/external/text/webvtt/CssParser;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/text/webvtt/CssParser;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttDecoder;->cssParser:Landroidx/media2/exoplayer/external/text/webvtt/CssParser;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttDecoder;->definedStyles:Ljava/util/List;

    .line 61
    return-void
.end method

.method private static getNextEvent(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)I
    .locals 4
    .param p0, "parsableWebvttData"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 110
    const/4 v0, -0x1

    .line 111
    .local v0, "foundEvent":I
    const/4 v1, 0x0

    .line 112
    .local v1, "currentInputPosition":I
    :goto_0
    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    .line 113
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 114
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "line":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 116
    const/4 v0, 0x0

    goto :goto_1

    .line 117
    :cond_0
    const-string v3, "STYLE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 118
    const/4 v0, 0x2

    goto :goto_1

    .line 119
    :cond_1
    const-string v3, "NOTE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 120
    const/4 v0, 0x1

    goto :goto_1

    .line 122
    :cond_2
    const/4 v0, 0x3

    .line 124
    .end local v2    # "line":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 125
    :cond_3
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 126
    return v0
.end method

.method private static skipComment(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V
    .locals 1
    .param p0, "parsableWebvttData"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 130
    :goto_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic decode([BIZ)Landroidx/media2/exoplayer/external/text/Subtitle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttDecoder;->decode([BIZ)Landroidx/media2/exoplayer/external/text/webvtt/WebvttSubtitle;

    move-result-object p1

    return-object p1
.end method

.method protected decode([BIZ)Landroidx/media2/exoplayer/external/text/webvtt/WebvttSubtitle;
    .locals 6
    .param p1, "bytes"    # [B
    .param p2, "length"    # I
    .param p3, "reset"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttDecoder;->parsableWebvttData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset([BI)V

    .line 68
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttDecoder;->webvttCueBuilder:Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->reset()V

    .line 69
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttDecoder;->definedStyles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 73
    :try_start_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttDecoder;->parsableWebvttData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttParserUtil;->validateWebvttHeaderLine(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V
    :try_end_0
    .catch Landroidx/media2/exoplayer/external/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    nop

    .line 77
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttDecoder;->parsableWebvttData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v0, "subtitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue;>;"
    :goto_1
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttDecoder;->parsableWebvttData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttDecoder;->getNextEvent(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)I

    move-result v1

    move v2, v1

    .local v2, "event":I
    if-eqz v1, :cond_7

    .line 82
    const/4 v1, 0x1

    if-ne v2, v1, :cond_1

    .line 83
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttDecoder;->parsableWebvttData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttDecoder;->skipComment(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V

    goto :goto_1

    .line 84
    :cond_1
    const/4 v1, 0x2

    if-ne v2, v1, :cond_4

    .line 85
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 88
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttDecoder;->parsableWebvttData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLine()Ljava/lang/String;

    .line 89
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttDecoder;->cssParser:Landroidx/media2/exoplayer/external/text/webvtt/CssParser;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttDecoder;->parsableWebvttData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1, v3}, Landroidx/media2/exoplayer/external/text/webvtt/CssParser;->parseBlock(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;

    move-result-object v1

    .line 90
    .local v1, "styleBlock":Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;
    if-eqz v1, :cond_2

    .line 91
    iget-object v3, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttDecoder;->definedStyles:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 90
    :cond_2
    goto :goto_2

    .line 86
    .end local v1    # "styleBlock":Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;
    :cond_3
    new-instance v1, Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;

    const-string v3, "A style block was found after the first cue."

    invoke-direct {v1, v3}, Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    :cond_4
    const/4 v1, 0x3

    if-ne v2, v1, :cond_6

    .line 94
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttDecoder;->cueParser:Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttDecoder;->parsableWebvttData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttDecoder;->webvttCueBuilder:Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;

    iget-object v5, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttDecoder;->definedStyles:Ljava/util/List;

    invoke-virtual {v1, v3, v4, v5}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser;->parseCue(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 95
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttDecoder;->webvttCueBuilder:Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->build()Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttDecoder;->webvttCueBuilder:Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->reset()V

    goto :goto_1

    .line 94
    :cond_5
    goto :goto_1

    .line 93
    :cond_6
    :goto_2
    goto :goto_1

    .line 100
    :cond_7
    new-instance v1, Landroidx/media2/exoplayer/external/text/webvtt/WebvttSubtitle;

    invoke-direct {v1, v0}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttSubtitle;-><init>(Ljava/util/List;)V

    return-object v1

    .line 74
    .end local v0    # "subtitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue;>;"
    .end local v2    # "event":I
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Landroidx/media2/exoplayer/external/ParserException;
    new-instance v1, Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;

    invoke-direct {v1, v0}, Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;-><init>(Ljava/lang/Exception;)V

    throw v1

    return-void
.end method
