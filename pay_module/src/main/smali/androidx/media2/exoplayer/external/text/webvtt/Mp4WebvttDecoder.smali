.class public final Landroidx/media2/exoplayer/external/text/webvtt/Mp4WebvttDecoder;
.super Landroidx/media2/exoplayer/external/text/SimpleSubtitleDecoder;
.source "Mp4WebvttDecoder.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final BOX_HEADER_SIZE:I = 0x8

.field private static final TYPE_payl:I = 0x7061796c

.field private static final TYPE_sttg:I = 0x73747467

.field private static final TYPE_vttc:I = 0x76747463


# instance fields
.field private final builder:Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;

.field private final sampleData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    const-string v0, "Mp4WebvttDecoder"

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/text/SimpleSubtitleDecoder;-><init>(Ljava/lang/String;)V

    .line 55
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/Mp4WebvttDecoder;->sampleData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 56
    new-instance v0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/Mp4WebvttDecoder;->builder:Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;

    .line 57
    return-void
.end method

.method private static parseVttCueBox(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;I)Landroidx/media2/exoplayer/external/text/Cue;
    .locals 7
    .param p0, "sampleData"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p1, "builder"    # Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;
    .param p2, "remainingCueBoxBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;
        }
    .end annotation

    .line 84
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->reset()V

    .line 85
    :goto_0
    if-lez p2, :cond_3

    .line 86
    const/16 v0, 0x8

    if-lt p2, v0, :cond_2

    .line 89
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 90
    .local v0, "boxSize":I
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 91
    .local v1, "boxType":I
    add-int/lit8 p2, p2, -0x8

    .line 92
    add-int/lit8 v2, v0, -0x8

    .line 93
    .local v2, "payloadLength":I
    iget-object v3, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    .line 94
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v4

    invoke-static {v3, v4, v2}, Landroidx/media2/exoplayer/external/util/Util;->fromUtf8Bytes([BII)Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, "boxPayload":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 96
    sub-int/2addr p2, v2

    .line 97
    const v4, 0x73747467

    if-ne v1, v4, :cond_0

    .line 98
    invoke-static {v3, p1}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser;->parseCueSettingsList(Ljava/lang/String;Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;)V

    goto :goto_1

    .line 99
    :cond_0
    const v4, 0x7061796c

    if-ne v1, v4, :cond_1

    .line 100
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-static {v4, v5, p1, v6}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser;->parseCueText(Ljava/lang/String;Ljava/lang/String;Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;Ljava/util/List;)V

    goto :goto_1

    .line 99
    :cond_1
    nop

    .line 104
    .end local v0    # "boxSize":I
    .end local v1    # "boxType":I
    .end local v2    # "payloadLength":I
    .end local v3    # "boxPayload":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 87
    :cond_2
    new-instance v0, Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;

    const-string v1, "Incomplete vtt cue box header found."

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_3
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->build()Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic decode([BIZ)Landroidx/media2/exoplayer/external/text/Subtitle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/text/webvtt/Mp4WebvttDecoder;->decode([BIZ)Landroidx/media2/exoplayer/external/text/webvtt/Mp4WebvttSubtitle;

    move-result-object p1

    return-object p1
.end method

.method protected decode([BIZ)Landroidx/media2/exoplayer/external/text/webvtt/Mp4WebvttSubtitle;
    .locals 6
    .param p1, "bytes"    # [B
    .param p2, "length"    # I
    .param p3, "reset"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/Mp4WebvttDecoder;->sampleData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset([BI)V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v0, "resultingCueList":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/text/Cue;>;"
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/webvtt/Mp4WebvttDecoder;->sampleData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-lez v1, :cond_2

    .line 67
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/webvtt/Mp4WebvttDecoder;->sampleData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    .line 70
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/webvtt/Mp4WebvttDecoder;->sampleData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 71
    .local v1, "boxSize":I
    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/webvtt/Mp4WebvttDecoder;->sampleData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 72
    .local v2, "boxType":I
    const v3, 0x76747463

    if-ne v2, v3, :cond_0

    .line 73
    iget-object v3, p0, Landroidx/media2/exoplayer/external/text/webvtt/Mp4WebvttDecoder;->sampleData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/text/webvtt/Mp4WebvttDecoder;->builder:Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;

    add-int/lit8 v5, v1, -0x8

    invoke-static {v3, v4, v5}, Landroidx/media2/exoplayer/external/text/webvtt/Mp4WebvttDecoder;->parseVttCueBox(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;I)Landroidx/media2/exoplayer/external/text/Cue;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 76
    :cond_0
    iget-object v3, p0, Landroidx/media2/exoplayer/external/text/webvtt/Mp4WebvttDecoder;->sampleData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    add-int/lit8 v4, v1, -0x8

    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 78
    .end local v1    # "boxSize":I
    .end local v2    # "boxType":I
    :goto_1
    goto :goto_0

    .line 68
    :cond_1
    new-instance v1, Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;

    const-string v2, "Incomplete Mp4Webvtt Top Level box header found."

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    :cond_2
    new-instance v1, Landroidx/media2/exoplayer/external/text/webvtt/Mp4WebvttSubtitle;

    invoke-direct {v1, v0}, Landroidx/media2/exoplayer/external/text/webvtt/Mp4WebvttSubtitle;-><init>(Ljava/util/List;)V

    return-object v1
.end method
