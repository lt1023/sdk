.class final Landroidx/media2/exoplayer/external/text/webvtt/WebvttSubtitle;
.super Ljava/lang/Object;
.source "WebvttSubtitle.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/text/Subtitle;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final cueTimesUs:[J

.field private final cues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue;",
            ">;"
        }
    .end annotation
.end field

.field private final numCues:I

.field private final sortedCueTimesUs:[J


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue;",
            ">;)V"
        }
    .end annotation

    .line 48
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttSubtitle;->cues:Ljava/util/List;

    .line 50
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttSubtitle;->numCues:I

    .line 51
    iget v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttSubtitle;->numCues:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttSubtitle;->cueTimesUs:[J

    .line 52
    const/4 v0, 0x0

    .local v0, "cueIndex":I
    :goto_0
    iget v1, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttSubtitle;->numCues:I

    if-ge v0, v1, :cond_0

    .line 53
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue;

    .line 54
    .local v1, "cue":Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue;
    mul-int/lit8 v2, v0, 0x2

    .line 55
    .local v2, "arrayIndex":I
    iget-object v3, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttSubtitle;->cueTimesUs:[J

    iget-wide v4, v1, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue;->startTime:J

    aput-wide v4, v3, v2

    .line 56
    iget-object v3, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttSubtitle;->cueTimesUs:[J

    add-int/lit8 v4, v2, 0x1

    iget-wide v5, v1, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue;->endTime:J

    aput-wide v5, v3, v4

    .line 52
    .end local v1    # "cue":Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue;
    .end local v2    # "arrayIndex":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    .end local v0    # "cueIndex":I
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttSubtitle;->cueTimesUs:[J

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttSubtitle;->sortedCueTimesUs:[J

    .line 59
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttSubtitle;->sortedCueTimesUs:[J

    invoke-static {v0}, Ljava/util/Arrays;->sort([J)V

    .line 60
    return-void
.end method


# virtual methods
.method public getCues(J)Ljava/util/List;
    .locals 8
    .param p1, "timeUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/text/Cue;",
            ">;"
        }
    .end annotation

    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/text/Cue;>;"
    const/4 v1, 0x0

    .line 84
    .local v1, "firstNormalCue":Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue;
    const/4 v2, 0x0

    .line 86
    .local v2, "normalCueTextBuilder":Landroid/text/SpannableStringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttSubtitle;->numCues:I

    if-ge v3, v4, :cond_5

    .line 87
    iget-object v4, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttSubtitle;->cueTimesUs:[J

    mul-int/lit8 v5, v3, 0x2

    aget-wide v5, v4, v5

    cmp-long v7, v5, p1

    if-gtz v7, :cond_4

    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-wide v5, v4, v5

    cmp-long v4, p1, v5

    if-gez v4, :cond_4

    .line 88
    if-nez v0, :cond_0

    .line 89
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    goto :goto_1

    .line 88
    :cond_0
    nop

    .line 91
    :goto_1
    iget-object v4, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttSubtitle;->cues:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue;

    .line 92
    .local v4, "cue":Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue;
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue;->isNormalCue()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 96
    if-nez v1, :cond_1

    .line 97
    move-object v1, v4

    goto :goto_2

    .line 98
    :cond_1
    if-nez v2, :cond_2

    .line 99
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    move-object v2, v5

    .line 100
    iget-object v5, v1, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue;->text:Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    iget-object v6, v4, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue;->text:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    .line 102
    :cond_2
    const-string v5, "\n"

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    iget-object v6, v4, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue;->text:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    .line 105
    :cond_3
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 87
    .end local v4    # "cue":Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue;
    :cond_4
    nop

    .line 86
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 109
    .end local v3    # "i":I
    :cond_5
    if-eqz v2, :cond_6

    .line 111
    new-instance v3, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue;

    invoke-direct {v3, v2}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 112
    :cond_6
    if-eqz v1, :cond_7

    .line 114
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 112
    :cond_7
    nop

    .line 117
    :goto_3
    if-eqz v0, :cond_8

    .line 118
    return-object v0

    .line 120
    :cond_8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method public getEventTime(I)J
    .locals 3
    .param p1, "index"    # I

    .line 75
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 76
    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttSubtitle;->sortedCueTimesUs:[J

    array-length v2, v2

    if-ge p1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 77
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttSubtitle;->sortedCueTimesUs:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public getEventTimeCount()I
    .locals 1

    .line 70
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttSubtitle;->sortedCueTimesUs:[J

    array-length v0, v0

    return v0
.end method

.method public getNextEventTimeIndex(J)I
    .locals 2
    .param p1, "timeUs"    # J

    .line 64
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttSubtitle;->sortedCueTimesUs:[J

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1, v1}, Landroidx/media2/exoplayer/external/util/Util;->binarySearchCeil([JJZZ)I

    move-result v0

    .line 65
    .local v0, "index":I
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttSubtitle;->sortedCueTimesUs:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method
