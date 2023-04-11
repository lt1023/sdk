.class public final Landroidx/media2/exoplayer/external/text/subrip/SubripDecoder;
.super Landroidx/media2/exoplayer/external/text/SimpleSubtitleDecoder;
.source "SubripDecoder.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final ALIGN_BOTTOM_LEFT:Ljava/lang/String; = "{\\an1}"

.field private static final ALIGN_BOTTOM_MID:Ljava/lang/String; = "{\\an2}"

.field private static final ALIGN_BOTTOM_RIGHT:Ljava/lang/String; = "{\\an3}"

.field private static final ALIGN_MID_LEFT:Ljava/lang/String; = "{\\an4}"

.field private static final ALIGN_MID_MID:Ljava/lang/String; = "{\\an5}"

.field private static final ALIGN_MID_RIGHT:Ljava/lang/String; = "{\\an6}"

.field private static final ALIGN_TOP_LEFT:Ljava/lang/String; = "{\\an7}"

.field private static final ALIGN_TOP_MID:Ljava/lang/String; = "{\\an8}"

.field private static final ALIGN_TOP_RIGHT:Ljava/lang/String; = "{\\an9}"

.field static final END_FRACTION:F = 0.92f

.field static final MID_FRACTION:F = 0.5f

.field static final START_FRACTION:F = 0.08f

.field private static final SUBRIP_ALIGNMENT_TAG:Ljava/lang/String; = "\\{\\\\an[1-9]\\}"

.field private static final SUBRIP_TAG_PATTERN:Ljava/util/regex/Pattern;

.field private static final SUBRIP_TIMECODE:Ljava/lang/String; = "(?:(\\d+):)?(\\d+):(\\d+),(\\d+)"

.field private static final SUBRIP_TIMING_LINE:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "SubripDecoder"


# instance fields
.field private final tags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final textBuilder:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-string v0, "\\s*((?:(\\d+):)?(\\d+):(\\d+),(\\d+))\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+),(\\d+))?\\s*"

    .line 51
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/text/subrip/SubripDecoder;->SUBRIP_TIMING_LINE:Ljava/util/regex/Pattern;

    .line 53
    const-string v0, "\\{\\\\.*?\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/text/subrip/SubripDecoder;->SUBRIP_TAG_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 71
    const-string v0, "SubripDecoder"

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/text/SimpleSubtitleDecoder;-><init>(Ljava/lang/String;)V

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/subrip/SubripDecoder;->textBuilder:Ljava/lang/StringBuilder;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/subrip/SubripDecoder;->tags:Ljava/util/ArrayList;

    .line 74
    return-void
.end method

.method private buildCue(Landroid/text/Spanned;Ljava/lang/String;)Landroidx/media2/exoplayer/external/text/Cue;
    .locals 14
    .param p1, "text"    # Landroid/text/Spanned;
    .param p2, "alignmentTag"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 184
    move-object/from16 v0, p2

    if-nez v0, :cond_0

    .line 185
    new-instance v1, Landroidx/media2/exoplayer/external/text/Cue;

    move-object v11, p1

    invoke-direct {v1, p1}, Landroidx/media2/exoplayer/external/text/Cue;-><init>(Ljava/lang/CharSequence;)V

    return-object v1

    .line 190
    :cond_0
    move-object v11, p1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x5

    const/16 v3, 0x8

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x7

    const/4 v7, 0x1

    const/4 v8, 0x3

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v12, -0x1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string/jumbo v1, "{\\an9}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "{\\an8}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_2
    const-string/jumbo v1, "{\\an7}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v1, "{\\an6}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_4
    const-string/jumbo v1, "{\\an5}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_5
    const-string/jumbo v1, "{\\an4}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_6
    const-string/jumbo v1, "{\\an3}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_7
    const-string/jumbo v1, "{\\an2}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_8
    const-string/jumbo v1, "{\\an1}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 205
    const/4 v1, 0x1

    goto :goto_2

    .line 199
    :pswitch_0
    const/4 v1, 0x2

    .line 200
    .local v1, "positionAnchor":I
    goto :goto_2

    .line 194
    .end local v1    # "positionAnchor":I
    :pswitch_1
    const/4 v1, 0x0

    .line 195
    .restart local v1    # "positionAnchor":I
    nop

    .line 211
    :goto_2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_1

    :cond_2
    goto :goto_3

    :sswitch_9
    const-string/jumbo v3, "{\\an9}"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_4

    :sswitch_a
    const-string/jumbo v2, "{\\an8}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    goto :goto_4

    :sswitch_b
    const-string/jumbo v2, "{\\an7}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    goto :goto_4

    :sswitch_c
    const-string/jumbo v2, "{\\an6}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x8

    goto :goto_4

    :sswitch_d
    const-string/jumbo v2, "{\\an5}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x7

    goto :goto_4

    :sswitch_e
    const-string/jumbo v2, "{\\an4}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x6

    goto :goto_4

    :sswitch_f
    const-string/jumbo v2, "{\\an3}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    goto :goto_4

    :sswitch_10
    const-string/jumbo v2, "{\\an2}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_4

    :sswitch_11
    const-string/jumbo v2, "{\\an1}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_4

    :goto_3
    const/4 v2, -0x1

    :goto_4
    packed-switch v2, :pswitch_data_1

    .line 226
    const/4 v2, 0x1

    move v12, v2

    goto :goto_5

    .line 220
    :pswitch_2
    const/4 v2, 0x0

    .line 221
    .local v2, "lineAnchor":I
    move v12, v2

    goto :goto_5

    .line 215
    .end local v2    # "lineAnchor":I
    :pswitch_3
    const/4 v2, 0x2

    .line 216
    .restart local v2    # "lineAnchor":I
    move v12, v2

    .line 230
    .end local v2    # "lineAnchor":I
    .local v12, "lineAnchor":I
    :goto_5
    new-instance v13, Landroidx/media2/exoplayer/external/text/Cue;

    const/4 v4, 0x0

    .line 233
    invoke-static {v12}, Landroidx/media2/exoplayer/external/text/subrip/SubripDecoder;->getFractionalPositionForAnchorType(I)F

    move-result v5

    const/4 v6, 0x0

    .line 236
    invoke-static {v1}, Landroidx/media2/exoplayer/external/text/subrip/SubripDecoder;->getFractionalPositionForAnchorType(I)F

    move-result v8

    const/4 v10, 0x1

    move-object v2, v13

    move-object v3, p1

    move v7, v12

    move v9, v1

    invoke-direct/range {v2 .. v10}, Landroidx/media2/exoplayer/external/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V

    .line 230
    return-object v13

    nop

    :sswitch_data_0
    .sparse-switch
        -0x28ddbde6 -> :sswitch_8
        -0x28ddbdc7 -> :sswitch_7
        -0x28ddbda8 -> :sswitch_6
        -0x28ddbd89 -> :sswitch_5
        -0x28ddbd6a -> :sswitch_4
        -0x28ddbd4b -> :sswitch_3
        -0x28ddbd2c -> :sswitch_2
        -0x28ddbd0d -> :sswitch_1
        -0x28ddbcee -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x28ddbde6 -> :sswitch_11
        -0x28ddbdc7 -> :sswitch_10
        -0x28ddbda8 -> :sswitch_f
        -0x28ddbd89 -> :sswitch_e
        -0x28ddbd6a -> :sswitch_d
        -0x28ddbd4b -> :sswitch_c
        -0x28ddbd2c -> :sswitch_b
        -0x28ddbd0d -> :sswitch_a
        -0x28ddbcee -> :sswitch_9
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method static getFractionalPositionForAnchorType(I)F
    .locals 1
    .param p0, "anchorType"    # I

    .line 250
    packed-switch p0, :pswitch_data_0

    .line 260
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 256
    :pswitch_0
    const v0, 0x3f6b851f    # 0.92f

    return v0

    .line 254
    :pswitch_1
    const/high16 v0, 0x3f000000    # 0.5f

    return v0

    .line 252
    :pswitch_2
    const v0, 0x3da3d70a    # 0.08f

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseTimecode(Ljava/util/regex/Matcher;I)J
    .locals 8
    .param p0, "matcher"    # Ljava/util/regex/Matcher;
    .param p1, "groupOffset"    # I

    .line 242
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3c

    mul-long v0, v0, v2

    mul-long v0, v0, v2

    const-wide/16 v4, 0x3e8

    mul-long v0, v0, v4

    .line 243
    .local v0, "timestampMs":J
    add-int/lit8 v6, p1, 0x2

    invoke-virtual {p0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    mul-long v6, v6, v2

    mul-long v6, v6, v4

    add-long/2addr v0, v6

    .line 244
    add-int/lit8 v2, p1, 0x3

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    .line 245
    add-int/lit8 v2, p1, 0x4

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 246
    mul-long v4, v4, v0

    return-wide v4
.end method

.method private processLine(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 8
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 159
    .local p2, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, "removedCharacterCount":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    .local v1, "processedLine":Ljava/lang/StringBuilder;
    sget-object v2, Landroidx/media2/exoplayer/external/text/subrip/SubripDecoder;->SUBRIP_TAG_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 164
    .local v2, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 165
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, "tag":Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    sub-int/2addr v4, v0

    .line 168
    .local v4, "start":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    .line 169
    .local v5, "tagLength":I
    add-int v6, v4, v5

    const-string v7, ""

    invoke-virtual {v1, v4, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    add-int/2addr v0, v5

    .line 171
    .end local v3    # "tag":Ljava/lang/String;
    .end local v4    # "start":I
    .end local v5    # "tagLength":I
    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method protected bridge synthetic decode([BIZ)Landroidx/media2/exoplayer/external/text/Subtitle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;
        }
    .end annotation

    .line 39
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/text/subrip/SubripDecoder;->decode([BIZ)Landroidx/media2/exoplayer/external/text/subrip/SubripSubtitle;

    move-result-object p1

    return-object p1
.end method

.method protected decode([BIZ)Landroidx/media2/exoplayer/external/text/subrip/SubripSubtitle;
    .locals 11
    .param p1, "bytes"    # [B
    .param p2, "length"    # I
    .param p3, "reset"    # Z

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v0, "cues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/text/Cue;>;"
    new-instance v1, Landroidx/media2/exoplayer/external/util/LongArray;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/util/LongArray;-><init>()V

    .line 80
    .local v1, "cueTimesUs":Landroidx/media2/exoplayer/external/util/LongArray;
    new-instance v2, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {v2, p1, p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>([BI)V

    .line 83
    .local v2, "subripData":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    :goto_0
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "currentLine":Ljava/lang/String;
    if-eqz v3, :cond_b

    .line 84
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 86
    goto :goto_0

    .line 91
    :cond_0
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    nop

    .line 98
    const/4 v3, 0x0

    .line 99
    .local v3, "haveEndTimecode":Z
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 100
    if-nez v4, :cond_1

    .line 101
    const-string v5, "SubripDecoder"

    const-string v6, "Unexpected end"

    invoke-static {v5, v6}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    goto/16 :goto_9

    .line 105
    :cond_1
    sget-object v5, Landroidx/media2/exoplayer/external/text/subrip/SubripDecoder;->SUBRIP_TIMING_LINE:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 106
    .local v5, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 107
    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroidx/media2/exoplayer/external/text/subrip/SubripDecoder;->parseTimecode(Ljava/util/regex/Matcher;I)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Landroidx/media2/exoplayer/external/util/LongArray;->add(J)V

    .line 108
    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 109
    const/4 v3, 0x1

    .line 110
    invoke-static {v5, v6}, Landroidx/media2/exoplayer/external/text/subrip/SubripDecoder;->parseTimecode(Ljava/util/regex/Matcher;I)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Landroidx/media2/exoplayer/external/util/LongArray;->add(J)V

    goto :goto_1

    .line 108
    :cond_2
    nop

    .line 118
    :goto_1
    iget-object v6, p0, Landroidx/media2/exoplayer/external/text/subrip/SubripDecoder;->textBuilder:Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 119
    iget-object v6, p0, Landroidx/media2/exoplayer/external/text/subrip/SubripDecoder;->tags:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 120
    :goto_2
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 121
    iget-object v6, p0, Landroidx/media2/exoplayer/external/text/subrip/SubripDecoder;->textBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 122
    iget-object v6, p0, Landroidx/media2/exoplayer/external/text/subrip/SubripDecoder;->textBuilder:Ljava/lang/StringBuilder;

    const-string v7, "<br>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 121
    :cond_3
    nop

    .line 124
    :goto_3
    iget-object v6, p0, Landroidx/media2/exoplayer/external/text/subrip/SubripDecoder;->textBuilder:Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroidx/media2/exoplayer/external/text/subrip/SubripDecoder;->tags:Ljava/util/ArrayList;

    invoke-direct {p0, v4, v7}, Landroidx/media2/exoplayer/external/text/subrip/SubripDecoder;->processLine(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 127
    :cond_4
    iget-object v6, p0, Landroidx/media2/exoplayer/external/text/subrip/SubripDecoder;->textBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    .line 129
    .local v6, "text":Landroid/text/Spanned;
    const/4 v7, 0x0

    .line 130
    .local v7, "alignmentTag":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4
    iget-object v9, p0, Landroidx/media2/exoplayer/external/text/subrip/SubripDecoder;->tags:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_6

    .line 131
    iget-object v9, p0, Landroidx/media2/exoplayer/external/text/subrip/SubripDecoder;->tags:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 132
    .local v9, "tag":Ljava/lang/String;
    const-string v10, "\\{\\\\an[1-9]\\}"

    invoke-virtual {v9, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 133
    move-object v7, v9

    .line 135
    goto :goto_5

    .line 132
    :cond_5
    nop

    .line 130
    .end local v9    # "tag":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 138
    .end local v8    # "i":I
    :cond_6
    :goto_5
    invoke-direct {p0, v6, v7}, Landroidx/media2/exoplayer/external/text/subrip/SubripDecoder;->buildCue(Landroid/text/Spanned;Ljava/lang/String;)Landroidx/media2/exoplayer/external/text/Cue;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    if-eqz v3, :cond_7

    .line 141
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 140
    :cond_7
    nop

    .line 143
    .end local v3    # "haveEndTimecode":Z
    .end local v5    # "matcher":Ljava/util/regex/Matcher;
    .end local v6    # "text":Landroid/text/Spanned;
    .end local v7    # "alignmentTag":Ljava/lang/String;
    :goto_6
    goto/16 :goto_0

    .line 113
    .restart local v3    # "haveEndTimecode":Z
    .restart local v5    # "matcher":Ljava/util/regex/Matcher;
    :cond_8
    const-string v6, "SubripDecoder"

    const-string v7, "Skipping invalid timing: "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_7

    :cond_9
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v7, v8

    :goto_7
    invoke-static {v6, v7}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    goto/16 :goto_0

    .line 92
    .end local v3    # "haveEndTimecode":Z
    .end local v5    # "matcher":Ljava/util/regex/Matcher;
    :catch_0
    move-exception v3

    .line 93
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v5, "SubripDecoder"

    const-string v6, "Skipping invalid index: "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    :cond_a
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v6, v7

    :goto_8
    invoke-static {v5, v6}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    goto/16 :goto_0

    .line 83
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_b
    nop

    .line 145
    :goto_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroidx/media2/exoplayer/external/text/Cue;

    .line 146
    .local v3, "cuesArray":[Landroidx/media2/exoplayer/external/text/Cue;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 147
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/LongArray;->toArray()[J

    move-result-object v5

    .line 148
    .local v5, "cueTimesUsArray":[J
    new-instance v6, Landroidx/media2/exoplayer/external/text/subrip/SubripSubtitle;

    invoke-direct {v6, v3, v5}, Landroidx/media2/exoplayer/external/text/subrip/SubripSubtitle;-><init>([Landroidx/media2/exoplayer/external/text/Cue;[J)V

    return-object v6
.end method
