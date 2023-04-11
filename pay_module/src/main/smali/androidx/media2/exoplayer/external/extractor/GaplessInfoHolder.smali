.class public final Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;
.super Ljava/lang/Object;
.source "GaplessInfoHolder.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final GAPLESS_COMMENT_PATTERN:Ljava/util/regex/Pattern;

.field private static final GAPLESS_DESCRIPTION:Ljava/lang/String; = "iTunSMPB"

.field private static final GAPLESS_DOMAIN:Ljava/lang/String; = "com.apple.iTunes"


# instance fields
.field public encoderDelay:I

.field public encoderPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-string v0, "^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})"

    .line 39
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;->GAPLESS_COMMENT_PATTERN:Ljava/util/regex/Pattern;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 58
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 59
    return-void
.end method

.method private setFromComment(Ljava/lang/String;)Z
    .locals 5
    .param p1, "data"    # Ljava/lang/String;

    .line 113
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;->GAPLESS_COMMENT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 114
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 116
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 117
    .local v2, "encoderDelay":I
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 118
    .local v3, "encoderPadding":I
    if-gtz v2, :cond_1

    if-lez v3, :cond_0

    goto :goto_0

    .line 125
    .end local v2    # "encoderDelay":I
    .end local v3    # "encoderPadding":I
    :cond_0
    goto :goto_1

    .line 118
    .restart local v2    # "encoderDelay":I
    .restart local v3    # "encoderPadding":I
    :cond_1
    :goto_0
    nop

    .line 119
    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 120
    iput v3, p0, Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;->encoderPadding:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    return v1

    .line 123
    .end local v2    # "encoderDelay":I
    .end local v3    # "encoderPadding":I
    :catch_0
    move-exception v1

    goto :goto_1

    .line 114
    :cond_2
    nop

    .line 127
    :goto_1
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public hasGaplessInfo()Z
    .locals 2

    .line 134
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;->encoderDelay:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;->encoderPadding:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setFromMetadata(Landroidx/media2/exoplayer/external/metadata/Metadata;)Z
    .locals 6
    .param p1, "metadata"    # Landroidx/media2/exoplayer/external/metadata/Metadata;

    .line 85
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/metadata/Metadata;->length()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 86
    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/metadata/Metadata;->get(I)Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    move-result-object v1

    .line 87
    .local v1, "entry":Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;
    instance-of v2, v1, Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 88
    move-object v2, v1

    check-cast v2, Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;

    .line 89
    .local v2, "commentFrame":Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;
    const-string v4, "iTunSMPB"

    iget-object v5, v2, Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;->description:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v2, Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;->text:Ljava/lang/String;

    .line 90
    invoke-direct {p0, v4}, Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;->setFromComment(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 91
    return v3

    .line 90
    :cond_0
    goto :goto_1

    .line 89
    :cond_1
    goto :goto_1

    .line 93
    .end local v2    # "commentFrame":Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;
    :cond_2
    instance-of v2, v1, Landroidx/media2/exoplayer/external/metadata/id3/InternalFrame;

    if-eqz v2, :cond_6

    .line 94
    move-object v2, v1

    check-cast v2, Landroidx/media2/exoplayer/external/metadata/id3/InternalFrame;

    .line 95
    .local v2, "internalFrame":Landroidx/media2/exoplayer/external/metadata/id3/InternalFrame;
    const-string v4, "com.apple.iTunes"

    iget-object v5, v2, Landroidx/media2/exoplayer/external/metadata/id3/InternalFrame;->domain:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "iTunSMPB"

    iget-object v5, v2, Landroidx/media2/exoplayer/external/metadata/id3/InternalFrame;->description:Ljava/lang/String;

    .line 96
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v2, Landroidx/media2/exoplayer/external/metadata/id3/InternalFrame;->text:Ljava/lang/String;

    .line 97
    invoke-direct {p0, v4}, Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;->setFromComment(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 98
    return v3

    .line 97
    :cond_3
    goto :goto_2

    .line 96
    :cond_4
    goto :goto_2

    .line 95
    :cond_5
    goto :goto_2

    .line 93
    .end local v2    # "internalFrame":Landroidx/media2/exoplayer/external/metadata/id3/InternalFrame;
    :cond_6
    :goto_1
    nop

    .line 85
    .end local v1    # "entry":Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    .end local v0    # "i":I
    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public setFromXingHeaderValue(I)Z
    .locals 3
    .param p1, "value"    # I

    .line 68
    shr-int/lit8 v0, p1, 0xc

    .line 69
    .local v0, "encoderDelay":I
    and-int/lit16 v1, p1, 0xfff

    .line 70
    .local v1, "encoderPadding":I
    if-gtz v0, :cond_1

    if-lez v1, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 70
    :cond_1
    :goto_0
    nop

    .line 71
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 72
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 73
    const/4 v2, 0x1

    return v2
.end method
