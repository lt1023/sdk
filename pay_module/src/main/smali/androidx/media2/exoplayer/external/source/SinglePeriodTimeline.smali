.class public final Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;
.super Landroidx/media2/exoplayer/external/Timeline;
.source "SinglePeriodTimeline.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final UID:Ljava/lang/Object;


# instance fields
.field private final isDynamic:Z

.field private final isSeekable:Z

.field private final periodDurationUs:J

.field private final presentationStartTimeMs:J

.field private final tag:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final windowDefaultStartPositionUs:J

.field private final windowDurationUs:J

.field private final windowPositionInPeriodUs:J

.field private final windowStartTimeMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;->UID:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(JJJJJJZZLjava/lang/Object;)V
    .locals 0
    .param p1, "presentationStartTimeMs"    # J
    .param p3, "windowStartTimeMs"    # J
    .param p5, "periodDurationUs"    # J
    .param p7, "windowDurationUs"    # J
    .param p9, "windowPositionInPeriodUs"    # J
    .param p11, "windowDefaultStartPositionUs"    # J
    .param p13, "isSeekable"    # Z
    .param p14, "isDynamic"    # Z
    .param p15, "tag"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 137
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/Timeline;-><init>()V

    .line 138
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;->presentationStartTimeMs:J

    .line 139
    iput-wide p3, p0, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;->windowStartTimeMs:J

    .line 140
    iput-wide p5, p0, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;->periodDurationUs:J

    .line 141
    iput-wide p7, p0, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;->windowDurationUs:J

    .line 142
    iput-wide p9, p0, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;->windowPositionInPeriodUs:J

    .line 143
    iput-wide p11, p0, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;->windowDefaultStartPositionUs:J

    .line 144
    iput-boolean p13, p0, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;->isSeekable:Z

    .line 145
    iput-boolean p14, p0, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;->isDynamic:Z

    .line 146
    iput-object p15, p0, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;->tag:Ljava/lang/Object;

    .line 147
    return-void
.end method

.method public constructor <init>(JJJJZZLjava/lang/Object;)V
    .locals 16
    .param p1, "periodDurationUs"    # J
    .param p3, "windowDurationUs"    # J
    .param p5, "windowPositionInPeriodUs"    # J
    .param p7, "windowDefaultStartPositionUs"    # J
    .param p9, "isSeekable"    # Z
    .param p10, "isDynamic"    # Z
    .param p11, "tag"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 99
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    move-wide/from16 v11, p7

    move/from16 v13, p9

    move/from16 v14, p10

    move-object/from16 v15, p11

    invoke-direct/range {v0 .. v15}, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;-><init>(JJJJJJZZLjava/lang/Object;)V

    .line 109
    return-void
.end method

.method public constructor <init>(JZZ)V
    .locals 6
    .param p1, "durationUs"    # J
    .param p3, "isSeekable"    # Z
    .param p4, "isDynamic"    # Z

    .line 54
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;-><init>(JZZLjava/lang/Object;)V

    .line 55
    return-void
.end method

.method public constructor <init>(JZZLjava/lang/Object;)V
    .locals 12
    .param p1, "durationUs"    # J
    .param p3, "isSeekable"    # Z
    .param p4, "isDynamic"    # Z
    .param p5, "tag"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 67
    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    move v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p5

    invoke-direct/range {v0 .. v11}, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;-><init>(JJJJZZLjava/lang/Object;)V

    .line 75
    return-void
.end method


# virtual methods
.method public getIndexOfPeriod(Ljava/lang/Object;)I
    .locals 1
    .param p1, "uid"    # Ljava/lang/Object;

    .line 199
    sget-object v0, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;->UID:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getPeriod(ILandroidx/media2/exoplayer/external/Timeline$Period;Z)Landroidx/media2/exoplayer/external/Timeline$Period;
    .locals 9
    .param p1, "periodIndex"    # I
    .param p2, "period"    # Landroidx/media2/exoplayer/external/Timeline$Period;
    .param p3, "setIds"    # Z

    .line 192
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkIndex(III)I

    .line 193
    if-eqz p3, :cond_0

    sget-object v0, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;->UID:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v3, v0

    .line 194
    .local v3, "uid":Ljava/lang/Object;
    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-wide v5, p0, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;->periodDurationUs:J

    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;->windowPositionInPeriodUs:J

    neg-long v7, v0

    move-object v1, p2

    invoke-virtual/range {v1 .. v8}, Landroidx/media2/exoplayer/external/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJ)Landroidx/media2/exoplayer/external/Timeline$Period;

    move-result-object v0

    return-object v0
.end method

.method public getPeriodCount()I
    .locals 1

    .line 187
    const/4 v0, 0x1

    return v0
.end method

.method public getUidOfPeriod(I)Ljava/lang/Object;
    .locals 2
    .param p1, "periodIndex"    # I

    .line 204
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkIndex(III)I

    .line 205
    sget-object v0, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;->UID:Ljava/lang/Object;

    return-object v0
.end method

.method public getWindow(ILandroidx/media2/exoplayer/external/Timeline$Window;ZJ)Landroidx/media2/exoplayer/external/Timeline$Window;
    .locals 20
    .param p1, "windowIndex"    # I
    .param p2, "window"    # Landroidx/media2/exoplayer/external/Timeline$Window;
    .param p3, "setTag"    # Z
    .param p4, "defaultPositionProjectionUs"    # J

    .line 157
    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move/from16 v3, p1

    invoke-static {v3, v1, v2}, Landroidx/media2/exoplayer/external/util/Assertions;->checkIndex(III)I

    .line 158
    if-eqz p3, :cond_0

    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;->tag:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v5, v1

    .line 159
    .local v5, "tag":Ljava/lang/Object;
    iget-wide v1, v0, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;->windowDefaultStartPositionUs:J

    .line 160
    .local v1, "windowDefaultStartPositionUs":J
    iget-boolean v4, v0, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;->isDynamic:Z

    if-eqz v4, :cond_3

    const-wide/16 v6, 0x0

    cmp-long v4, p4, v6

    if-eqz v4, :cond_3

    .line 161
    iget-wide v6, v0, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;->windowDurationUs:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v6, v8

    if-nez v4, :cond_1

    .line 163
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_1

    .line 165
    :cond_1
    add-long v1, v1, p4

    .line 166
    cmp-long v4, v1, v6

    if-lez v4, :cond_2

    .line 168
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_1

    .line 166
    :cond_2
    goto :goto_1

    .line 160
    :cond_3
    nop

    .line 172
    :goto_1
    iget-wide v6, v0, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;->presentationStartTimeMs:J

    iget-wide v8, v0, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;->windowStartTimeMs:J

    iget-boolean v10, v0, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;->isSeekable:Z

    iget-boolean v11, v0, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;->isDynamic:Z

    iget-wide v14, v0, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;->windowDurationUs:J

    const/16 v16, 0x0

    const/16 v17, 0x0

    iget-wide v12, v0, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;->windowPositionInPeriodUs:J

    move-object/from16 v4, p2

    move-wide/from16 v18, v12

    move-wide v12, v1

    invoke-virtual/range {v4 .. v19}, Landroidx/media2/exoplayer/external/Timeline$Window;->set(Ljava/lang/Object;JJZZJJIIJ)Landroidx/media2/exoplayer/external/Timeline$Window;

    move-result-object v4

    return-object v4
.end method

.method public getWindowCount()I
    .locals 1

    .line 151
    const/4 v0, 0x1

    return v0
.end method
