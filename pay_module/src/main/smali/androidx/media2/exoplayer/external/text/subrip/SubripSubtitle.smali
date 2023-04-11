.class final Landroidx/media2/exoplayer/external/text/subrip/SubripSubtitle;
.super Ljava/lang/Object;
.source "SubripSubtitle.java"

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

.field private final cues:[Landroidx/media2/exoplayer/external/text/Cue;


# direct methods
.method public constructor <init>([Landroidx/media2/exoplayer/external/text/Cue;[J)V
    .locals 0
    .param p1, "cues"    # [Landroidx/media2/exoplayer/external/text/Cue;
    .param p2, "cueTimesUs"    # [J

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroidx/media2/exoplayer/external/text/subrip/SubripSubtitle;->cues:[Landroidx/media2/exoplayer/external/text/Cue;

    .line 46
    iput-object p2, p0, Landroidx/media2/exoplayer/external/text/subrip/SubripSubtitle;->cueTimesUs:[J

    .line 47
    return-void
.end method


# virtual methods
.method public getCues(J)Ljava/util/List;
    .locals 3
    .param p1, "timeUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/text/Cue;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/subrip/SubripSubtitle;->cueTimesUs:[J

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Landroidx/media2/exoplayer/external/util/Util;->binarySearchFloor([JJZZ)I

    move-result v0

    .line 70
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/subrip/SubripSubtitle;->cues:[Landroidx/media2/exoplayer/external/text/Cue;

    aget-object v2, v1, v0

    if-nez v2, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    aget-object v1, v1, v0

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 70
    :cond_1
    :goto_0
    nop

    .line 72
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getEventTime(I)J
    .locals 3
    .param p1, "index"    # I

    .line 62
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 63
    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/subrip/SubripSubtitle;->cueTimesUs:[J

    array-length v2, v2

    if-ge p1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 64
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/subrip/SubripSubtitle;->cueTimesUs:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public getEventTimeCount()I
    .locals 1

    .line 57
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/subrip/SubripSubtitle;->cueTimesUs:[J

    array-length v0, v0

    return v0
.end method

.method public getNextEventTimeIndex(J)I
    .locals 2
    .param p1, "timeUs"    # J

    .line 51
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/subrip/SubripSubtitle;->cueTimesUs:[J

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1, v1}, Landroidx/media2/exoplayer/external/util/Util;->binarySearchCeil([JJZZ)I

    move-result v0

    .line 52
    .local v0, "index":I
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/subrip/SubripSubtitle;->cueTimesUs:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method
