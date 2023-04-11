.class final Landroidx/media2/exoplayer/external/MediaPeriodInfo;
.super Ljava/lang/Object;
.source "MediaPeriodInfo.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field public final contentPositionUs:J

.field public final durationUs:J

.field public final endPositionUs:J

.field public final id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

.field public final isFinal:Z

.field public final isLastInTimelinePeriod:Z

.field public final startPositionUs:J


# direct methods
.method constructor <init>(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJJJZZ)V
    .locals 0
    .param p1, "id"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .param p2, "startPositionUs"    # J
    .param p4, "contentPositionUs"    # J
    .param p6, "endPositionUs"    # J
    .param p8, "durationUs"    # J
    .param p10, "isLastInTimelinePeriod"    # Z
    .param p11, "isFinal"    # Z

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 76
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->startPositionUs:J

    .line 77
    iput-wide p4, p0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->contentPositionUs:J

    .line 78
    iput-wide p6, p0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->endPositionUs:J

    .line 79
    iput-wide p8, p0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->durationUs:J

    .line 80
    iput-boolean p10, p0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    .line 81
    iput-boolean p11, p0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->isFinal:Z

    .line 82
    return-void
.end method


# virtual methods
.method public copyWithContentPositionUs(J)Landroidx/media2/exoplayer/external/MediaPeriodInfo;
    .locals 15
    .param p1, "contentPositionUs"    # J

    .line 106
    move-object v0, p0

    iget-wide v1, v0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->contentPositionUs:J

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    .line 107
    move-object v1, v0

    goto :goto_0

    .line 108
    :cond_0
    new-instance v1, Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-object v4, v0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-wide v5, v0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->startPositionUs:J

    iget-wide v9, v0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->endPositionUs:J

    iget-wide v11, v0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->durationUs:J

    iget-boolean v13, v0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    iget-boolean v14, v0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->isFinal:Z

    move-object v3, v1

    move-wide/from16 v7, p1

    invoke-direct/range {v3 .. v14}, Landroidx/media2/exoplayer/external/MediaPeriodInfo;-><init>(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJJJZZ)V

    .line 106
    :goto_0
    return-object v1
.end method

.method public copyWithStartPositionUs(J)Landroidx/media2/exoplayer/external/MediaPeriodInfo;
    .locals 15
    .param p1, "startPositionUs"    # J

    .line 89
    move-object v0, p0

    iget-wide v1, v0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->startPositionUs:J

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    .line 90
    move-object v1, v0

    goto :goto_0

    .line 91
    :cond_0
    new-instance v1, Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-object v4, v0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-wide v7, v0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->contentPositionUs:J

    iget-wide v9, v0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->endPositionUs:J

    iget-wide v11, v0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->durationUs:J

    iget-boolean v13, v0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    iget-boolean v14, v0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->isFinal:Z

    move-object v3, v1

    move-wide/from16 v5, p1

    invoke-direct/range {v3 .. v14}, Landroidx/media2/exoplayer/external/MediaPeriodInfo;-><init>(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJJJZZ)V

    .line 89
    :goto_0
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 120
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 121
    return v0

    .line 123
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 126
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    .line 127
    .local v2, "that":Landroidx/media2/exoplayer/external/MediaPeriodInfo;
    iget-wide v3, p0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->startPositionUs:J

    iget-wide v5, v2, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->startPositionUs:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_3

    iget-wide v3, p0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->contentPositionUs:J

    iget-wide v5, v2, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->contentPositionUs:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_3

    iget-wide v3, p0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->endPositionUs:J

    iget-wide v5, v2, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->endPositionUs:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_3

    iget-wide v3, p0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->durationUs:J

    iget-wide v5, v2, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->durationUs:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_3

    iget-boolean v3, p0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    iget-boolean v4, v2, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->isFinal:Z

    iget-boolean v4, v2, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->isFinal:Z

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-object v4, v2, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 133
    invoke-static {v3, v4}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_0

    .line 127
    :cond_3
    nop

    .line 133
    :goto_0
    const/4 v0, 0x0

    .line 127
    :goto_1
    return v0

    .line 123
    .end local v2    # "that":Landroidx/media2/exoplayer/external/MediaPeriodInfo;
    :cond_4
    :goto_2
    nop

    .line 124
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 138
    const/16 v0, 0x11

    .line 139
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 140
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->startPositionUs:J

    long-to-int v3, v2

    add-int/2addr v0, v3

    .line 141
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->contentPositionUs:J

    long-to-int v3, v2

    add-int/2addr v1, v3

    .line 142
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->endPositionUs:J

    long-to-int v3, v2

    add-int/2addr v0, v3

    .line 143
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->durationUs:J

    long-to-int v3, v2

    add-int/2addr v1, v3

    .line 144
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    add-int/2addr v0, v2

    .line 145
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->isFinal:Z

    add-int/2addr v1, v2

    .line 146
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method
