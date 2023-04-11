.class final Landroidx/media2/exoplayer/external/PlaybackInfo;
.super Ljava/lang/Object;
.source "PlaybackInfo.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final DUMMY_MEDIA_PERIOD_ID:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;


# instance fields
.field public volatile bufferedPositionUs:J

.field public final contentPositionUs:J

.field public final isLoading:Z

.field public final loadingMediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

.field public final manifest:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final periodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

.field public final playbackState:I

.field public volatile positionUs:J

.field public final startPositionUs:J

.field public final timeline:Landroidx/media2/exoplayer/external/Timeline;

.field public volatile totalBufferedDurationUs:J

.field public final trackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

.field public final trackSelectorResult:Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;)V

    sput-object v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->DUMMY_MEDIA_PERIOD_ID:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJIZLandroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJJ)V
    .locals 15
    .param p1, "timeline"    # Landroidx/media2/exoplayer/external/Timeline;
    .param p2, "manifest"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "periodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .param p4, "startPositionUs"    # J
    .param p6, "contentPositionUs"    # J
    .param p8, "playbackState"    # I
    .param p9, "isLoading"    # Z
    .param p10, "trackGroups"    # Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .param p11, "trackSelectorResult"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;
    .param p12, "loadingMediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .param p13, "bufferedPositionUs"    # J
    .param p15, "totalBufferedDurationUs"    # J
    .param p17, "positionUs"    # J

    .line 144
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    move-object/from16 v1, p1

    iput-object v1, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    .line 146
    move-object/from16 v2, p2

    iput-object v2, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->manifest:Ljava/lang/Object;

    .line 147
    move-object/from16 v3, p3

    iput-object v3, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->periodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 148
    move-wide/from16 v4, p4

    iput-wide v4, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->startPositionUs:J

    .line 149
    move-wide/from16 v6, p6

    iput-wide v6, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->contentPositionUs:J

    .line 150
    move/from16 v8, p8

    iput v8, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->playbackState:I

    .line 151
    move/from16 v9, p9

    iput-boolean v9, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->isLoading:Z

    .line 152
    move-object/from16 v10, p10

    iput-object v10, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->trackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 153
    move-object/from16 v11, p11

    iput-object v11, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->trackSelectorResult:Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    .line 154
    move-object/from16 v12, p12

    iput-object v12, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->loadingMediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 155
    move-wide/from16 v13, p13

    iput-wide v13, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->bufferedPositionUs:J

    .line 156
    move-wide/from16 v1, p15

    iput-wide v1, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->totalBufferedDurationUs:J

    .line 157
    move-wide/from16 v1, p17

    iput-wide v1, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->positionUs:J

    .line 158
    return-void
.end method

.method public static createDummy(JLandroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;)Landroidx/media2/exoplayer/external/PlaybackInfo;
    .locals 20
    .param p0, "startPositionUs"    # J
    .param p2, "emptyTrackSelectorResult"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    move-wide/from16 v4, p0

    move-wide/from16 v13, p0

    move-wide/from16 v17, p0

    move-object/from16 v11, p2

    .line 98
    new-instance v19, Landroidx/media2/exoplayer/external/PlaybackInfo;

    move-object/from16 v0, v19

    sget-object v1, Landroidx/media2/exoplayer/external/Timeline;->EMPTY:Landroidx/media2/exoplayer/external/Timeline;

    sget-object v3, Landroidx/media2/exoplayer/external/PlaybackInfo;->DUMMY_MEDIA_PERIOD_ID:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    sget-object v10, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->EMPTY:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    sget-object v12, Landroidx/media2/exoplayer/external/PlaybackInfo;->DUMMY_MEDIA_PERIOD_ID:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    const/4 v2, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-wide/16 v15, 0x0

    invoke-direct/range {v0 .. v18}, Landroidx/media2/exoplayer/external/PlaybackInfo;-><init>(Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJIZLandroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJJ)V

    return-object v19
.end method


# virtual methods
.method public copyWithIsLoading(Z)Landroidx/media2/exoplayer/external/PlaybackInfo;
    .locals 23
    .param p1, "isLoading"    # Z
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    move-object/from16 v0, p0

    move/from16 v10, p1

    .line 267
    new-instance v20, Landroidx/media2/exoplayer/external/PlaybackInfo;

    move-object/from16 v1, v20

    iget-object v2, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->manifest:Ljava/lang/Object;

    iget-object v4, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->periodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-wide v5, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->startPositionUs:J

    iget-wide v7, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->contentPositionUs:J

    iget v9, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->playbackState:I

    iget-object v11, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->trackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    iget-object v12, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->trackSelectorResult:Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    iget-object v13, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->loadingMediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-wide v14, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->bufferedPositionUs:J

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    iget-wide v1, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->totalBufferedDurationUs:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->positionUs:J

    move-wide/from16 v18, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct/range {v1 .. v19}, Landroidx/media2/exoplayer/external/PlaybackInfo;-><init>(Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJIZLandroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJJ)V

    return-object v20
.end method

.method public copyWithLoadingMediaPeriodId(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Landroidx/media2/exoplayer/external/PlaybackInfo;
    .locals 23
    .param p1, "loadingMediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    .line 317
    new-instance v20, Landroidx/media2/exoplayer/external/PlaybackInfo;

    move-object/from16 v1, v20

    iget-object v2, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->manifest:Ljava/lang/Object;

    iget-object v4, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->periodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-wide v5, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->startPositionUs:J

    iget-wide v7, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->contentPositionUs:J

    iget v9, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->playbackState:I

    iget-boolean v10, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->isLoading:Z

    iget-object v11, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->trackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    iget-object v12, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->trackSelectorResult:Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    iget-wide v14, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->bufferedPositionUs:J

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    iget-wide v1, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->totalBufferedDurationUs:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->positionUs:J

    move-wide/from16 v18, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct/range {v1 .. v19}, Landroidx/media2/exoplayer/external/PlaybackInfo;-><init>(Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJIZLandroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJJ)V

    return-object v20
.end method

.method public copyWithNewPosition(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJJ)Landroidx/media2/exoplayer/external/PlaybackInfo;
    .locals 21
    .param p1, "periodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .param p2, "positionUs"    # J
    .param p4, "contentPositionUs"    # J
    .param p6, "totalBufferedDurationUs"    # J
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 194
    move-object/from16 v0, p0

    new-instance v20, Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v2, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->manifest:Ljava/lang/Object;

    .line 199
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_0

    move-wide/from16 v7, p4

    goto :goto_0

    :cond_0
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v7, v4

    :goto_0
    iget v9, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->playbackState:I

    iget-boolean v10, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->isLoading:Z

    iget-object v11, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->trackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    iget-object v12, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->trackSelectorResult:Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    iget-object v13, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->loadingMediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-wide v14, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->bufferedPositionUs:J

    move-object/from16 v1, v20

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    move-wide/from16 v16, p6

    move-wide/from16 v18, p2

    invoke-direct/range {v1 .. v19}, Landroidx/media2/exoplayer/external/PlaybackInfo;-><init>(Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJIZLandroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJJ)V

    .line 194
    return-object v20
.end method

.method public copyWithPlaybackState(I)Landroidx/media2/exoplayer/external/PlaybackInfo;
    .locals 23
    .param p1, "playbackState"    # I
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    move-object/from16 v0, p0

    move/from16 v9, p1

    .line 243
    new-instance v20, Landroidx/media2/exoplayer/external/PlaybackInfo;

    move-object/from16 v1, v20

    iget-object v2, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->manifest:Ljava/lang/Object;

    iget-object v4, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->periodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-wide v5, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->startPositionUs:J

    iget-wide v7, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->contentPositionUs:J

    iget-boolean v10, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->isLoading:Z

    iget-object v11, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->trackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    iget-object v12, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->trackSelectorResult:Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    iget-object v13, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->loadingMediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-wide v14, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->bufferedPositionUs:J

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    iget-wide v1, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->totalBufferedDurationUs:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->positionUs:J

    move-wide/from16 v18, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct/range {v1 .. v19}, Landroidx/media2/exoplayer/external/PlaybackInfo;-><init>(Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJIZLandroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJJ)V

    return-object v20
.end method

.method public copyWithTimeline(Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;)Landroidx/media2/exoplayer/external/PlaybackInfo;
    .locals 23
    .param p1, "timeline"    # Landroidx/media2/exoplayer/external/Timeline;
    .param p2, "manifest"    # Ljava/lang/Object;
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 219
    new-instance v20, Landroidx/media2/exoplayer/external/PlaybackInfo;

    move-object/from16 v1, v20

    iget-object v4, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->periodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-wide v5, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->startPositionUs:J

    iget-wide v7, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->contentPositionUs:J

    iget v9, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->playbackState:I

    iget-boolean v10, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->isLoading:Z

    iget-object v11, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->trackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    iget-object v12, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->trackSelectorResult:Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    iget-object v13, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->loadingMediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-wide v14, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->bufferedPositionUs:J

    move-object/from16 v22, v1

    move-object/from16 v21, v2

    iget-wide v1, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->totalBufferedDurationUs:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->positionUs:J

    move-wide/from16 v18, v1

    move-object/from16 v2, v21

    move-object/from16 v1, v22

    invoke-direct/range {v1 .. v19}, Landroidx/media2/exoplayer/external/PlaybackInfo;-><init>(Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJIZLandroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJJ)V

    return-object v20
.end method

.method public copyWithTrackInfo(Landroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;)Landroidx/media2/exoplayer/external/PlaybackInfo;
    .locals 23
    .param p1, "trackGroups"    # Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .param p2, "trackSelectorResult"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    .line 293
    new-instance v20, Landroidx/media2/exoplayer/external/PlaybackInfo;

    move-object/from16 v1, v20

    iget-object v2, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->manifest:Ljava/lang/Object;

    iget-object v4, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->periodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-wide v5, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->startPositionUs:J

    iget-wide v7, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->contentPositionUs:J

    iget v9, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->playbackState:I

    iget-boolean v10, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->isLoading:Z

    iget-object v13, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->loadingMediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-wide v14, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->bufferedPositionUs:J

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    iget-wide v1, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->totalBufferedDurationUs:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->positionUs:J

    move-wide/from16 v18, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct/range {v1 .. v19}, Landroidx/media2/exoplayer/external/PlaybackInfo;-><init>(Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJIZLandroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJJ)V

    return-object v20
.end method

.method public getDummyFirstMediaPeriodId(ZLandroidx/media2/exoplayer/external/Timeline$Window;)Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .locals 3
    .param p1, "shuffleModeEnabled"    # Z
    .param p2, "window"    # Landroidx/media2/exoplayer/external/Timeline$Window;

    .line 169
    iget-object v0, p0, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    sget-object v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->DUMMY_MEDIA_PERIOD_ID:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    return-object v0

    .line 172
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    .line 173
    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/Timeline;->getFirstWindowIndex(Z)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroidx/media2/exoplayer/external/Timeline;->getWindow(ILandroidx/media2/exoplayer/external/Timeline$Window;)Landroidx/media2/exoplayer/external/Timeline$Window;

    move-result-object v0

    iget v0, v0, Landroidx/media2/exoplayer/external/Timeline$Window;->firstPeriodIndex:I

    .line 175
    .local v0, "firstPeriodIndex":I
    new-instance v1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    invoke-virtual {v2, v0}, Landroidx/media2/exoplayer/external/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method
