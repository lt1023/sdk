.class public final Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;
.super Ljava/lang/Object;
.source "DefaultPlaybackSessionManager.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/analytics/PlaybackSessionManager;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    }
.end annotation


# static fields
.field private static final RANDOM:Ljava/util/Random;

.field private static final SESSION_ID_LENGTH:I = 0xc


# instance fields
.field private activeSessionId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private currentMediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private currentTimeline:Landroidx/media2/exoplayer/external/Timeline;

.field private listener:Landroidx/media2/exoplayer/external/analytics/PlaybackSessionManager$Listener;

.field private final period:Landroidx/media2/exoplayer/external/Timeline$Period;

.field private final sessions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final window:Landroidx/media2/exoplayer/external/Timeline$Window;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;->RANDOM:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroidx/media2/exoplayer/external/Timeline$Window;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/Timeline$Window;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    .line 63
    new-instance v0, Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/Timeline$Period;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    .line 65
    sget-object v0, Landroidx/media2/exoplayer/external/Timeline;->EMPTY:Landroidx/media2/exoplayer/external/Timeline;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;->currentTimeline:Landroidx/media2/exoplayer/external/Timeline;

    .line 66
    return-void
.end method

.method static synthetic access$500(Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;)Landroidx/media2/exoplayer/external/Timeline$Window;
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;

    .line 46
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    return-object v0
.end method

.method static synthetic access$600(Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;)Landroidx/media2/exoplayer/external/Timeline$Period;
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;

    .line 46
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    return-object v0
.end method

.method private static generateSessionId()Ljava/lang/String;
    .locals 2

    .line 221
    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 222
    .local v0, "randomBytes":[B
    sget-object v1, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;->RANDOM:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 223
    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getOrAddSession(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    .locals 10
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, "bestMatch":Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    const-wide v1, 0x7fffffffffffffffL

    .line 185
    .local v1, "bestMatchWindowSequenceNumber":J
    iget-object v3, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    .line 186
    .local v4, "sessionDescriptor":Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    invoke-virtual {v4, p1, p2}, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->maybeSetWindowSequenceNumber(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)V

    .line 187
    invoke-virtual {v4, p1, p2}, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->belongsToSession(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 188
    invoke-static {v4}, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$200(Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)J

    move-result-wide v5

    .line 189
    .local v5, "windowSequenceNumber":J
    const-wide/16 v7, -0x1

    cmp-long v9, v5, v7

    if-eqz v9, :cond_4

    cmp-long v7, v5, v1

    if-gez v7, :cond_0

    goto :goto_1

    .line 193
    :cond_0
    cmp-long v7, v5, v1

    if-nez v7, :cond_3

    .line 194
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    invoke-static {v7}, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$300(Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 195
    invoke-static {v4}, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$300(Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 196
    move-object v0, v4

    goto :goto_2

    .line 195
    :cond_1
    goto :goto_2

    .line 194
    :cond_2
    goto :goto_2

    .line 193
    :cond_3
    goto :goto_2

    .line 189
    :cond_4
    :goto_1
    nop

    .line 191
    move-object v0, v4

    .line 192
    move-wide v1, v5

    goto :goto_2

    .line 187
    .end local v5    # "windowSequenceNumber":J
    :cond_5
    nop

    .line 199
    .end local v4    # "sessionDescriptor":Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    :goto_2
    goto :goto_0

    .line 200
    :cond_6
    if-nez v0, :cond_7

    .line 201
    invoke-static {}, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;->generateSessionId()Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, "sessionId":Ljava/lang/String;
    new-instance v4, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    invoke-direct {v4, p0, v3, p1, p2}, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;-><init>(Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;Ljava/lang/String;ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)V

    move-object v0, v4

    .line 203
    iget-object v4, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 200
    .end local v3    # "sessionId":Ljava/lang/String;
    :cond_7
    nop

    .line 205
    :goto_3
    return-object v0
.end method

.method private updateActiveSession(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)V
    .locals 2
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "sessionDescriptor"    # Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "listener"
        }
    .end annotation

    .line 210
    iget-object v0, p1, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;->currentMediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 211
    invoke-static {p2}, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$100(Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    invoke-static {p2}, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;->activeSessionId:Ljava/lang/String;

    .line 213
    invoke-static {p2}, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$400(Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    const/4 v0, 0x1

    invoke-static {p2, v0}, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$402(Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;Z)Z

    .line 215
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;->listener:Landroidx/media2/exoplayer/external/analytics/PlaybackSessionManager$Listener;

    invoke-static {p2}, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroidx/media2/exoplayer/external/analytics/PlaybackSessionManager$Listener;->onSessionActive(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :cond_0
    goto :goto_0

    .line 211
    :cond_1
    nop

    .line 218
    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized belongsToSession(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)Z
    .locals 3
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "sessionId"    # Ljava/lang/String;

    monitor-enter p0

    .line 82
    :try_start_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .local v0, "sessionDescriptor":Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    if-nez v0, :cond_0

    .line 84
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 86
    :cond_0
    :try_start_1
    iget v1, p1, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;->windowIndex:I

    iget-object v2, p1, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->maybeSetWindowSequenceNumber(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)V

    .line 87
    iget v1, p1, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;->windowIndex:I

    iget-object v2, p1, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->belongsToSession(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    .line 81
    .end local v0    # "sessionDescriptor":Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    .end local p0    # "this":Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;
    .end local p1    # "eventTime":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .end local p2    # "sessionId":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getSessionForMediaPeriodId(Landroidx/media2/exoplayer/external/Timeline;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Ljava/lang/String;
    .locals 2
    .param p1, "timeline"    # Landroidx/media2/exoplayer/external/Timeline;
    .param p2, "mediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    monitor-enter p0

    .line 76
    :try_start_0
    iget-object v0, p2, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {p1, v0, v1}, Landroidx/media2/exoplayer/external/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media2/exoplayer/external/Timeline$Period;)Landroidx/media2/exoplayer/external/Timeline$Period;

    move-result-object v0

    iget v0, v0, Landroidx/media2/exoplayer/external/Timeline$Period;->windowIndex:I

    .line 77
    .local v0, "windowIndex":I
    invoke-direct {p0, v0, p2}, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;->getOrAddSession(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    move-result-object v1

    invoke-static {v1}, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 75
    .end local v0    # "windowIndex":I
    .end local p0    # "this":Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;
    .end local p1    # "timeline":Landroidx/media2/exoplayer/external/Timeline;
    .end local p2    # "mediaPeriodId":Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized handlePositionDiscontinuity(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;I)V
    .locals 9
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "reason"    # I

    monitor-enter p0

    .line 135
    :try_start_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;->listener:Landroidx/media2/exoplayer/external/analytics/PlaybackSessionManager$Listener;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 139
    .local v2, "hasAutomaticTransition":Z
    :goto_1
    iget-object v3, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 140
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;>;"
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 141
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    .line 142
    .local v4, "session":Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    invoke-virtual {v4, p1}, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isFinishedAtEventTime(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 143
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 144
    invoke-static {v4}, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$100(Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 145
    invoke-static {v4}, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;->activeSessionId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 146
    .local v5, "isRemovingActiveSession":Z
    if-eqz v2, :cond_2

    if-eqz v5, :cond_2

    const/4 v6, 0x1

    goto :goto_3

    :cond_2
    const/4 v6, 0x0

    .line 147
    .local v6, "isAutomaticTransition":Z
    :goto_3
    if-eqz v5, :cond_3

    .line 148
    const/4 v7, 0x0

    iput-object v7, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;->activeSessionId:Ljava/lang/String;

    goto :goto_4

    .line 147
    .end local p0    # "this":Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;
    :cond_3
    nop

    .line 150
    :goto_4
    iget-object v7, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;->listener:Landroidx/media2/exoplayer/external/analytics/PlaybackSessionManager$Listener;

    invoke-static {v4}, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, p1, v8, v6}, Landroidx/media2/exoplayer/external/analytics/PlaybackSessionManager$Listener;->onSessionFinished(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Z)V

    goto :goto_5

    .line 144
    .end local v5    # "isRemovingActiveSession":Z
    .end local v6    # "isAutomaticTransition":Z
    :cond_4
    goto :goto_5

    .line 142
    :cond_5
    nop

    .line 153
    .end local v4    # "session":Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    :goto_5
    goto :goto_2

    .line 154
    :cond_6
    iget v0, p1, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;->windowIndex:I

    iget-object v1, p1, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 155
    invoke-direct {p0, v0, v1}, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;->getOrAddSession(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    move-result-object v0

    .line 156
    .local v0, "activeSessionDescriptor":Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    iget-object v1, p1, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    if-eqz v1, :cond_a

    iget-object v1, p1, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 157
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;->currentMediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;->currentMediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-wide v4, v1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-object v1, p1, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-wide v6, v1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_7

    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;->currentMediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget v1, v1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget-object v4, p1, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget v4, v4, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    if-ne v1, v4, :cond_7

    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;->currentMediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget v1, v1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    iget-object v4, p1, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget v4, v4, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    if-eq v1, v4, :cond_9

    .line 164
    :cond_7
    new-instance v1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-object v4, p1, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v5, p1, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-wide v5, v5, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    invoke-direct {v1, v4, v5, v6}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;J)V

    .line 167
    .local v1, "contentMediaPeriodId":Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    iget v4, p1, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;->windowIndex:I

    .line 168
    invoke-direct {p0, v4, v1}, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;->getOrAddSession(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    move-result-object v4

    .line 169
    .local v4, "contentSession":Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    invoke-static {v4}, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$100(Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {v0}, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$100(Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 170
    iget-object v5, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;->listener:Landroidx/media2/exoplayer/external/analytics/PlaybackSessionManager$Listener;

    .line 171
    invoke-static {v4}, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0}, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v7

    .line 170
    invoke-interface {v5, p1, v6, v7}, Landroidx/media2/exoplayer/external/analytics/PlaybackSessionManager$Listener;->onAdPlaybackStarted(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 169
    :cond_8
    goto :goto_6

    .line 157
    .end local v1    # "contentMediaPeriodId":Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .end local v4    # "contentSession":Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    :cond_9
    goto :goto_6

    .line 156
    :cond_a
    nop

    .line 174
    :goto_6
    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;->updateActiveSession(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    monitor-exit p0

    return-void

    .line 134
    .end local v0    # "activeSessionDescriptor":Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    .end local v2    # "hasAutomaticTransition":Z
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;>;"
    .end local p1    # "eventTime":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .end local p2    # "reason":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public declared-synchronized handleTimelineUpdate(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;)V
    .locals 6
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    monitor-enter p0

    .line 112
    :try_start_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;->listener:Landroidx/media2/exoplayer/external/analytics/PlaybackSessionManager$Listener;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;->currentTimeline:Landroidx/media2/exoplayer/external/Timeline;

    .line 114
    .local v0, "previousTimeline":Landroidx/media2/exoplayer/external/Timeline;
    iget-object v1, p1, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iput-object v1, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;->currentTimeline:Landroidx/media2/exoplayer/external/Timeline;

    .line 115
    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 116
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 117
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    .line 118
    .local v2, "session":Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    iget-object v3, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;->currentTimeline:Landroidx/media2/exoplayer/external/Timeline;

    invoke-virtual {v2, v0, v3}, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->tryResolvingToNewTimeline(Landroidx/media2/exoplayer/external/Timeline;Landroidx/media2/exoplayer/external/Timeline;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 119
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 120
    invoke-static {v2}, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$100(Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 121
    invoke-static {v2}, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;->activeSessionId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 122
    const/4 v3, 0x0

    iput-object v3, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;->activeSessionId:Ljava/lang/String;

    goto :goto_1

    .line 121
    .end local p0    # "this":Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;
    :cond_0
    nop

    .line 124
    :goto_1
    iget-object v3, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;->listener:Landroidx/media2/exoplayer/external/analytics/PlaybackSessionManager$Listener;

    .line 125
    invoke-static {v2}, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 124
    invoke-interface {v3, p1, v4, v5}, Landroidx/media2/exoplayer/external/analytics/PlaybackSessionManager$Listener;->onSessionFinished(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Z)V

    goto :goto_2

    .line 120
    :cond_1
    goto :goto_2

    .line 118
    :cond_2
    nop

    .line 128
    .end local v2    # "session":Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    :goto_2
    goto :goto_0

    .line 129
    :cond_3
    const/4 v2, 0x4

    invoke-virtual {p0, p1, v2}, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;->handlePositionDiscontinuity(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    monitor-exit p0

    return-void

    .line 111
    .end local v0    # "previousTimeline":Landroidx/media2/exoplayer/external/Timeline;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;>;"
    .end local p1    # "eventTime":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public setListener(Landroidx/media2/exoplayer/external/analytics/PlaybackSessionManager$Listener;)V
    .locals 0
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/analytics/PlaybackSessionManager$Listener;

    .line 70
    iput-object p1, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;->listener:Landroidx/media2/exoplayer/external/analytics/PlaybackSessionManager$Listener;

    .line 71
    return-void
.end method

.method public declared-synchronized updateSessions(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;)V
    .locals 6
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    monitor-enter p0

    .line 92
    :try_start_0
    iget-object v0, p1, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;->currentMediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-wide v2, v0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;->currentMediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-wide v4, v0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .end local p0    # "this":Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;
    :cond_0
    const/4 v0, 0x0

    .line 97
    .local v0, "isObviouslyFinished":Z
    :goto_0
    if-nez v0, :cond_3

    .line 98
    iget v2, p1, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;->windowIndex:I

    iget-object v3, p1, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 99
    invoke-direct {p0, v2, v3}, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;->getOrAddSession(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    move-result-object v2

    .line 100
    .local v2, "descriptor":Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    invoke-static {v2}, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$100(Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 101
    invoke-static {v2, v1}, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$102(Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;Z)Z

    .line 102
    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;->listener:Landroidx/media2/exoplayer/external/analytics/PlaybackSessionManager$Listener;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/analytics/PlaybackSessionManager$Listener;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Landroidx/media2/exoplayer/external/analytics/PlaybackSessionManager$Listener;->onSessionCreated(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;->activeSessionId:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 104
    invoke-direct {p0, p1, v2}, Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager;->updateActiveSession(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 103
    :cond_1
    goto :goto_1

    .line 100
    :cond_2
    goto :goto_1

    .line 97
    .end local v2    # "descriptor":Landroidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    :cond_3
    nop

    .line 108
    :goto_1
    monitor-exit p0

    return-void

    .line 91
    .end local v0    # "isObviouslyFinished":Z
    .end local p1    # "eventTime":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
