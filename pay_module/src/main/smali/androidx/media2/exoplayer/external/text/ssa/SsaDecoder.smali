.class public final Landroidx/media2/exoplayer/external/text/ssa/SsaDecoder;
.super Landroidx/media2/exoplayer/external/text/SimpleSubtitleDecoder;
.source "SsaDecoder.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final DIALOGUE_LINE_PREFIX:Ljava/lang/String; = "Dialogue: "

.field private static final FORMAT_LINE_PREFIX:Ljava/lang/String; = "Format: "

.field private static final SSA_TIMECODE_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "SsaDecoder"


# instance fields
.field private formatEndIndex:I

.field private formatKeyCount:I

.field private formatStartIndex:I

.field private formatTextIndex:I

.field private final haveInitializationData:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-string v0, "(?:(\\d+):)?(\\d+):(\\d+)(?::|\\.)(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/text/ssa/SsaDecoder;->SSA_TIMECODE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/text/ssa/SsaDecoder;-><init>(Ljava/util/List;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 68
    .local p1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const-string v0, "SsaDecoder"

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/text/SimpleSubtitleDecoder;-><init>(Ljava/lang/String;)V

    .line 69
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/text/ssa/SsaDecoder;->haveInitializationData:Z

    .line 71
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->fromUtf8Bytes([B)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "formatLine":Ljava/lang/String;
    const-string v2, "Format: "

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 73
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/text/ssa/SsaDecoder;->parseFormatLine(Ljava/lang/String;)V

    .line 74
    new-instance v2, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-direct {v2, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>([B)V

    invoke-direct {p0, v2}, Landroidx/media2/exoplayer/external/text/ssa/SsaDecoder;->parseHeader(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V

    .line 75
    .end local v0    # "formatLine":Ljava/lang/String;
    goto :goto_0

    .line 69
    :cond_0
    nop

    .line 76
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/text/ssa/SsaDecoder;->haveInitializationData:Z

    .line 78
    :goto_0
    return-void
.end method

.method private parseDialogueLine(Ljava/lang/String;Ljava/util/List;Landroidx/media2/exoplayer/external/util/LongArray;)V
    .locals 11
    .param p1, "dialogueLine"    # Ljava/lang/String;
    .param p3, "cueTimesUs"    # Landroidx/media2/exoplayer/external/util/LongArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/text/Cue;",
            ">;",
            "Landroidx/media2/exoplayer/external/util/LongArray;",
            ")V"
        }
    .end annotation

    .line 175
    .local p2, "cues":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/text/Cue;>;"
    iget v0, p0, Landroidx/media2/exoplayer/external/text/ssa/SsaDecoder;->formatKeyCount:I

    if-nez v0, :cond_1

    .line 176
    const-string v0, "SsaDecoder"

    const-string v1, "Skipping dialogue line before complete format: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_0
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void

    .line 180
    :cond_1
    const-string v0, "Dialogue: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    iget v2, p0, Landroidx/media2/exoplayer/external/text/ssa/SsaDecoder;->formatKeyCount:I

    .line 181
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "lineValues":[Ljava/lang/String;
    array-length v1, v0

    iget v2, p0, Landroidx/media2/exoplayer/external/text/ssa/SsaDecoder;->formatKeyCount:I

    if-eq v1, v2, :cond_3

    .line 183
    const-string v1, "SsaDecoder"

    const-string v2, "Skipping dialogue line with fewer columns than format: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_1
    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void

    .line 187
    :cond_3
    iget v1, p0, Landroidx/media2/exoplayer/external/text/ssa/SsaDecoder;->formatStartIndex:I

    aget-object v1, v0, v1

    invoke-static {v1}, Landroidx/media2/exoplayer/external/text/ssa/SsaDecoder;->parseTimecodeUs(Ljava/lang/String;)J

    move-result-wide v1

    .line 188
    .local v1, "startTimeUs":J
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-nez v5, :cond_5

    .line 189
    const-string v3, "SsaDecoder"

    const-string v4, "Skipping invalid timing: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_4
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    :goto_2
    invoke-static {v3, v4}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-void

    .line 193
    :cond_5
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 194
    .local v5, "endTimeUs":J
    iget v7, p0, Landroidx/media2/exoplayer/external/text/ssa/SsaDecoder;->formatEndIndex:I

    aget-object v7, v0, v7

    .line 195
    .local v7, "endTimeString":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_8

    .line 196
    invoke-static {v7}, Landroidx/media2/exoplayer/external/text/ssa/SsaDecoder;->parseTimecodeUs(Ljava/lang/String;)J

    move-result-wide v5

    .line 197
    cmp-long v8, v5, v3

    if-nez v8, :cond_7

    .line 198
    const-string v3, "SsaDecoder"

    const-string v4, "Skipping invalid timing: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v4, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_6
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v4, v8

    :goto_3
    invoke-static {v3, v4}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-void

    .line 197
    :cond_7
    goto :goto_4

    .line 195
    :cond_8
    nop

    .line 203
    :goto_4
    iget v8, p0, Landroidx/media2/exoplayer/external/text/ssa/SsaDecoder;->formatTextIndex:I

    aget-object v8, v0, v8

    const-string v9, "\\{.*?\\}"

    const-string v10, ""

    .line 204
    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "\\\\N"

    const-string v10, "\n"

    .line 205
    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "\\\\n"

    const-string v10, "\n"

    .line 206
    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 207
    .local v8, "text":Ljava/lang/String;
    new-instance v9, Landroidx/media2/exoplayer/external/text/Cue;

    invoke-direct {v9, v8}, Landroidx/media2/exoplayer/external/text/Cue;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {p2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-virtual {p3, v1, v2}, Landroidx/media2/exoplayer/external/util/LongArray;->add(J)V

    .line 209
    cmp-long v9, v5, v3

    if-eqz v9, :cond_9

    .line 210
    const/4 v3, 0x0

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    invoke-virtual {p3, v5, v6}, Landroidx/media2/exoplayer/external/util/LongArray;->add(J)V

    goto :goto_5

    .line 209
    :cond_9
    nop

    .line 213
    :goto_5
    return-void
.end method

.method private parseEventBody(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Ljava/util/List;Landroidx/media2/exoplayer/external/util/LongArray;)V
    .locals 2
    .param p1, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p3, "cueTimesUs"    # Landroidx/media2/exoplayer/external/util/LongArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/util/ParsableByteArray;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/text/Cue;",
            ">;",
            "Landroidx/media2/exoplayer/external/util/LongArray;",
            ")V"
        }
    .end annotation

    .line 122
    .local p2, "cues":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/text/Cue;>;"
    :goto_0
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .local v1, "currentLine":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 123
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/text/ssa/SsaDecoder;->haveInitializationData:Z

    if-nez v0, :cond_0

    const-string v0, "Format: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/text/ssa/SsaDecoder;->parseFormatLine(Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_0
    nop

    .line 125
    const-string v0, "Dialogue: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    invoke-direct {p0, v1, p2, p3}, Landroidx/media2/exoplayer/external/text/ssa/SsaDecoder;->parseDialogueLine(Ljava/lang/String;Ljava/util/List;Landroidx/media2/exoplayer/external/util/LongArray;)V

    goto :goto_0

    .line 125
    :cond_1
    goto :goto_0

    .line 129
    :cond_2
    return-void
.end method

.method private parseFormatLine(Ljava/lang/String;)V
    .locals 7
    .param p1, "formatLine"    # Ljava/lang/String;

    .line 137
    const-string v0, "Format: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "values":[Ljava/lang/String;
    array-length v1, v0

    iput v1, p0, Landroidx/media2/exoplayer/external/text/ssa/SsaDecoder;->formatKeyCount:I

    .line 139
    const/4 v1, -0x1

    iput v1, p0, Landroidx/media2/exoplayer/external/text/ssa/SsaDecoder;->formatStartIndex:I

    .line 140
    iput v1, p0, Landroidx/media2/exoplayer/external/text/ssa/SsaDecoder;->formatEndIndex:I

    .line 141
    iput v1, p0, Landroidx/media2/exoplayer/external/text/ssa/SsaDecoder;->formatTextIndex:I

    .line 142
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Landroidx/media2/exoplayer/external/text/ssa/SsaDecoder;->formatKeyCount:I

    const/4 v4, 0x0

    if-ge v2, v3, :cond_4

    .line 143
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/media2/exoplayer/external/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, 0x188db

    if-eq v5, v6, :cond_3

    const v6, 0x36452d

    if-eq v5, v6, :cond_2

    const v6, 0x68ac462

    if-eq v5, v6, :cond_1

    :cond_0
    goto :goto_1

    :cond_1
    const-string v5, "start"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    :cond_2
    const-string v4, "text"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    goto :goto_2

    :cond_3
    const-string v4, "end"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_2

    :goto_1
    const/4 v4, -0x1

    :goto_2
    packed-switch v4, :pswitch_data_0

    goto :goto_3

    .line 152
    :pswitch_0
    iput v2, p0, Landroidx/media2/exoplayer/external/text/ssa/SsaDecoder;->formatTextIndex:I

    .line 153
    goto :goto_3

    .line 149
    :pswitch_1
    iput v2, p0, Landroidx/media2/exoplayer/external/text/ssa/SsaDecoder;->formatEndIndex:I

    .line 150
    goto :goto_3

    .line 146
    :pswitch_2
    iput v2, p0, Landroidx/media2/exoplayer/external/text/ssa/SsaDecoder;->formatStartIndex:I

    .line 147
    nop

    .line 142
    .end local v3    # "key":Ljava/lang/String;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 159
    .end local v2    # "i":I
    :cond_4
    iget v2, p0, Landroidx/media2/exoplayer/external/text/ssa/SsaDecoder;->formatStartIndex:I

    if-eq v2, v1, :cond_6

    iget v2, p0, Landroidx/media2/exoplayer/external/text/ssa/SsaDecoder;->formatEndIndex:I

    if-eq v2, v1, :cond_6

    iget v2, p0, Landroidx/media2/exoplayer/external/text/ssa/SsaDecoder;->formatTextIndex:I

    if-ne v2, v1, :cond_5

    goto :goto_4

    :cond_5
    goto :goto_5

    .line 163
    :cond_6
    :goto_4
    iput v4, p0, Landroidx/media2/exoplayer/external/text/ssa/SsaDecoder;->formatKeyCount:I

    .line 165
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseHeader(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V
    .locals 2
    .param p1, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 104
    :goto_0
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .local v1, "currentLine":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 106
    const-string v0, "[Events]"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    return-void

    .line 106
    :cond_0
    goto :goto_0

    .line 111
    :cond_1
    return-void
.end method

.method public static parseTimecodeUs(Ljava/lang/String;)J
    .locals 9
    .param p0, "timeString"    # Ljava/lang/String;

    .line 222
    sget-object v0, Landroidx/media2/exoplayer/external/text/ssa/SsaDecoder;->SSA_TIMECODE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 223
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    .line 224
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v1

    .line 226
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x3c

    mul-long v1, v1, v3

    mul-long v1, v1, v3

    const-wide/32 v5, 0xf4240

    mul-long v1, v1, v5

    .line 227
    .local v1, "timestampUs":J
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    mul-long v7, v7, v3

    mul-long v7, v7, v5

    add-long/2addr v1, v7

    .line 228
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    mul-long v3, v3, v5

    add-long/2addr v1, v3

    .line 229
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x2710

    mul-long v3, v3, v5

    add-long/2addr v1, v3

    .line 230
    return-wide v1
.end method


# virtual methods
.method protected bridge synthetic decode([BIZ)Landroidx/media2/exoplayer/external/text/Subtitle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;
        }
    .end annotation

    .line 40
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/text/ssa/SsaDecoder;->decode([BIZ)Landroidx/media2/exoplayer/external/text/ssa/SsaSubtitle;

    move-result-object p1

    return-object p1
.end method

.method protected decode([BIZ)Landroidx/media2/exoplayer/external/text/ssa/SsaSubtitle;
    .locals 6
    .param p1, "bytes"    # [B
    .param p2, "length"    # I
    .param p3, "reset"    # Z

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v0, "cues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/text/Cue;>;"
    new-instance v1, Landroidx/media2/exoplayer/external/util/LongArray;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/util/LongArray;-><init>()V

    .line 85
    .local v1, "cueTimesUs":Landroidx/media2/exoplayer/external/util/LongArray;
    new-instance v2, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {v2, p1, p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>([BI)V

    .line 86
    .local v2, "data":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    iget-boolean v3, p0, Landroidx/media2/exoplayer/external/text/ssa/SsaDecoder;->haveInitializationData:Z

    if-nez v3, :cond_0

    .line 87
    invoke-direct {p0, v2}, Landroidx/media2/exoplayer/external/text/ssa/SsaDecoder;->parseHeader(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V

    goto :goto_0

    .line 86
    :cond_0
    nop

    .line 89
    :goto_0
    invoke-direct {p0, v2, v0, v1}, Landroidx/media2/exoplayer/external/text/ssa/SsaDecoder;->parseEventBody(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Ljava/util/List;Landroidx/media2/exoplayer/external/util/LongArray;)V

    .line 91
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroidx/media2/exoplayer/external/text/Cue;

    .line 92
    .local v3, "cuesArray":[Landroidx/media2/exoplayer/external/text/Cue;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 93
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/LongArray;->toArray()[J

    move-result-object v4

    .line 94
    .local v4, "cueTimesUsArray":[J
    new-instance v5, Landroidx/media2/exoplayer/external/text/ssa/SsaSubtitle;

    invoke-direct {v5, v3, v4}, Landroidx/media2/exoplayer/external/text/ssa/SsaSubtitle;-><init>([Landroidx/media2/exoplayer/external/text/Cue;[J)V

    return-object v5
.end method
