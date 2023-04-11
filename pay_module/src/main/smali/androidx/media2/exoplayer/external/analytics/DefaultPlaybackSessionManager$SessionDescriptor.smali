.class final Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
.super Ljava/lang/Object;
.source "DefaultPlaybackSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SessionDescriptor"
.end annotation


# instance fields
.field private adMediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

.field private isActive:Z

.field private isCreated:Z

.field private final sessionId:Ljava/lang/String;

.field final synthetic this$0:Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;

.field private windowIndex:I

.field private windowSequenceNumber:J


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;Ljava/lang/String;ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)V
    .locals 2
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "windowIndex"    # I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "mediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 249
    iput-object p1, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->this$0:Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput-object p2, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->sessionId:Ljava/lang/String;

    .line 251
    iput p3, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowIndex:I

    .line 252
    nop

    .line 253
    if-nez p4, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    iget-wide v0, p4, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    :goto_0
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowSequenceNumber:J

    .line 254
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 255
    iput-object p4, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    goto :goto_1

    .line 254
    :cond_1
    nop

    .line 257
    :goto_1
    return-void
.end method

.method static synthetic access$000(Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    .line 237
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    .line 237
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isCreated:Z

    return v0
.end method

.method static synthetic access$102(Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;Z)Z
    .locals 0
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    .param p1, "x1"    # Z

    .line 237
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isCreated:Z

    return p1
.end method

.method static synthetic access$200(Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    .line 237
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowSequenceNumber:J

    return-wide v0
.end method

.method static synthetic access$300(Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    .line 237
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    return-object v0
.end method

.method static synthetic access$400(Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    .line 237
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isActive:Z

    return v0
.end method

.method static synthetic access$402(Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;Z)Z
    .locals 0
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    .param p1, "x1"    # Z

    .line 237
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isActive:Z

    return p1
.end method

.method private resolveWindowIndexToNewTimeline(Landroidx/media2/exoplayer/external/Timeline;Landroidx/media2/exoplayer/external/Timeline;I)I
    .locals 4
    .param p1, "oldTimeline"    # Landroidx/media2/exoplayer/external/Timeline;
    .param p2, "newTimeline"    # Landroidx/media2/exoplayer/external/Timeline;
    .param p3, "windowIndex"    # I

    .line 345
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/Timeline;->getWindowCount()I

    move-result v0

    const/4 v1, -0x1

    if-lt p3, v0, :cond_1

    .line 346
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/Timeline;->getWindowCount()I

    move-result v0

    if-ge p3, v0, :cond_0

    move v1, p3

    nop

    :cond_0
    return v1

    .line 348
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->this$0:Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;->access$500(Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;)Landroidx/media2/exoplayer/external/Timeline$Window;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Landroidx/media2/exoplayer/external/Timeline;->getWindow(ILandroidx/media2/exoplayer/external/Timeline$Window;)Landroidx/media2/exoplayer/external/Timeline$Window;

    .line 349
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->this$0:Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;->access$500(Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;)Landroidx/media2/exoplayer/external/Timeline$Window;

    move-result-object v0

    iget v0, v0, Landroidx/media2/exoplayer/external/Timeline$Window;->firstPeriodIndex:I

    .line 350
    .local v0, "periodIndex":I
    :goto_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->this$0:Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;->access$500(Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;)Landroidx/media2/exoplayer/external/Timeline$Window;

    move-result-object v2

    iget v2, v2, Landroidx/media2/exoplayer/external/Timeline$Window;->lastPeriodIndex:I

    if-gt v0, v2, :cond_3

    .line 352
    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v2

    .line 353
    .local v2, "periodUid":Ljava/lang/Object;
    invoke-virtual {p2, v2}, Landroidx/media2/exoplayer/external/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v3

    .line 354
    .local v3, "newPeriodIndex":I
    if-eq v3, v1, :cond_2

    .line 355
    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->this$0:Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;->access$600(Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;)Landroidx/media2/exoplayer/external/Timeline$Period;

    move-result-object v1

    invoke-virtual {p2, v3, v1}, Landroidx/media2/exoplayer/external/Timeline;->getPeriod(ILandroidx/media2/exoplayer/external/Timeline$Period;)Landroidx/media2/exoplayer/external/Timeline$Period;

    move-result-object v1

    iget v1, v1, Landroidx/media2/exoplayer/external/Timeline$Period;->windowIndex:I

    return v1

    .line 354
    :cond_2
    nop

    .line 351
    .end local v2    # "periodUid":Ljava/lang/Object;
    .end local v3    # "newPeriodIndex":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 350
    :cond_3
    nop

    .line 358
    .end local v0    # "periodIndex":I
    return v1
.end method


# virtual methods
.method public belongsToSession(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Z
    .locals 7
    .param p1, "eventWindowIndex"    # I
    .param p2, "eventMediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 273
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_1

    .line 275
    iget v2, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowIndex:I

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 277
    :cond_1
    iget-object v2, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    if-nez v2, :cond_3

    .line 280
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v2

    if-nez v2, :cond_2

    iget-wide v2, p2, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowSequenceNumber:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 284
    :cond_3
    iget-wide v2, p2, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-object v4, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-wide v4, v4, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_4

    iget v2, p2, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget-object v3, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget v3, v3, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    if-ne v2, v3, :cond_4

    iget v2, p2, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    iget-object v3, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget v3, v3, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    if-ne v2, v3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public isFinishedAtEventTime(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;)Z
    .locals 9
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    .line 301
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowSequenceNumber:J

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    .line 303
    return v2

    .line 305
    :cond_0
    iget-object v0, p1, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 308
    iget v0, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowIndex:I

    iget v3, p1, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;->windowIndex:I

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 310
    :cond_2
    iget-object v0, p1, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-wide v3, v0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-wide v5, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowSequenceNumber:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_3

    .line 312
    return v1

    .line 314
    :cond_3
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    if-nez v0, :cond_4

    .line 316
    return v2

    .line 318
    :cond_4
    iget-object v0, p1, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    .line 319
    .local v0, "eventPeriodIndex":I
    iget-object v3, p1, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v3

    .line 320
    .local v3, "adPeriodIndex":I
    iget-object v4, p1, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-wide v4, v4, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-object v6, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-wide v6, v6, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    cmp-long v8, v4, v6

    if-ltz v8, :cond_c

    if-ge v0, v3, :cond_5

    goto :goto_3

    .line 325
    :cond_5
    if-le v0, v3, :cond_6

    .line 327
    return v1

    .line 329
    :cond_6
    iget-object v4, p1, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 330
    iget-object v4, p1, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget v4, v4, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 331
    .local v4, "eventAdGroup":I
    iget-object v5, p1, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget v5, v5, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    .line 333
    .local v5, "eventAdIndex":I
    iget-object v6, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget v6, v6, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    if-gt v4, v6, :cond_8

    iget-object v6, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget v6, v6, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    if-ne v4, v6, :cond_7

    iget-object v6, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget v6, v6, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    if-le v5, v6, :cond_7

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    nop

    :cond_8
    :goto_1
    return v1

    .line 338
    .end local v4    # "eventAdGroup":I
    .end local v5    # "eventAdIndex":I
    :cond_9
    iget-object v4, p1, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget v4, v4, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_b

    iget-object v4, p1, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget v4, v4, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    iget-object v5, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget v5, v5, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    if-le v4, v5, :cond_a

    goto :goto_2

    :cond_a
    const/4 v1, 0x0

    nop

    :cond_b
    :goto_2
    return v1

    .line 320
    :cond_c
    :goto_3
    nop

    .line 323
    return v2
.end method

.method public maybeSetWindowSequenceNumber(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)V
    .locals 5
    .param p1, "eventWindowIndex"    # I
    .param p2, "eventMediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 291
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowSequenceNumber:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iget v0, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowIndex:I

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_1

    .line 294
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    iget-wide v0, p2, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowSequenceNumber:J

    goto :goto_0

    .line 294
    :cond_0
    goto :goto_0

    .line 291
    :cond_1
    nop

    .line 298
    :goto_0
    return-void
.end method

.method public tryResolvingToNewTimeline(Landroidx/media2/exoplayer/external/Timeline;Landroidx/media2/exoplayer/external/Timeline;)Z
    .locals 4
    .param p1, "oldTimeline"    # Landroidx/media2/exoplayer/external/Timeline;
    .param p2, "newTimeline"    # Landroidx/media2/exoplayer/external/Timeline;

    .line 260
    iget v0, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowIndex:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->resolveWindowIndexToNewTimeline(Landroidx/media2/exoplayer/external/Timeline;Landroidx/media2/exoplayer/external/Timeline;I)I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowIndex:I

    .line 261
    iget v0, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowIndex:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 262
    return v1

    .line 264
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 265
    return v3

    .line 267
    :cond_1
    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Landroidx/media2/exoplayer/external/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    .line 268
    .local v0, "newPeriodIndex":I
    if-eq v0, v2, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    return v1
.end method
