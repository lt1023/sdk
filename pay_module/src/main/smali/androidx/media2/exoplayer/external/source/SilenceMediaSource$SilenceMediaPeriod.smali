.class final Landroidx/media2/exoplayer/external/source/SilenceMediaSource$SilenceMediaPeriod;
.super Ljava/lang/Object;
.source "SilenceMediaSource.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/MediaPeriod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/SilenceMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SilenceMediaPeriod"
.end annotation


# static fields
.field private static final TRACKS:Landroidx/media2/exoplayer/external/source/TrackGroupArray;


# instance fields
.field private final durationUs:J

.field private final sampleStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media2/exoplayer/external/source/SampleStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 99
    new-instance v0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    const/4 v1, 0x1

    new-array v2, v1, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    new-instance v3, Landroidx/media2/exoplayer/external/source/TrackGroup;

    new-array v1, v1, [Landroidx/media2/exoplayer/external/Format;

    invoke-static {}, Landroidx/media2/exoplayer/external/source/SilenceMediaSource;->access$000()Landroidx/media2/exoplayer/external/Format;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v1, v5

    invoke-direct {v3, v1}, Landroidx/media2/exoplayer/external/source/TrackGroup;-><init>([Landroidx/media2/exoplayer/external/Format;)V

    aput-object v3, v2, v5

    invoke-direct {v0, v2}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;-><init>([Landroidx/media2/exoplayer/external/source/TrackGroup;)V

    sput-object v0, Landroidx/media2/exoplayer/external/source/SilenceMediaSource$SilenceMediaPeriod;->TRACKS:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "durationUs"    # J

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/SilenceMediaSource$SilenceMediaPeriod;->durationUs:J

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/SilenceMediaSource$SilenceMediaPeriod;->sampleStreams:Ljava/util/ArrayList;

    .line 107
    return-void
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 1
    .param p1, "positionUs"    # J

    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public discardBuffer(JZ)V
    .locals 0
    .param p1, "positionUs"    # J
    .param p3, "toKeyframe"    # Z

    .line 146
    return-void
.end method

.method public getAdjustedSeekPositionUs(JLandroidx/media2/exoplayer/external/SeekParameters;)J
    .locals 0
    .param p1, "positionUs"    # J
    .param p3, "seekParameters"    # Landroidx/media2/exoplayer/external/SeekParameters;

    .line 163
    return-wide p1
.end method

.method public getBufferedPositionUs()J
    .locals 2

    .line 168
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .line 173
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public getStreamKeys(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Landroidx/media2/exoplayer/external/source/MediaPeriod$$CC;->getStreamKeys$$dflt$$(Landroidx/media2/exoplayer/external/source/MediaPeriod;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .locals 1

    .line 119
    sget-object v0, Landroidx/media2/exoplayer/external/source/SilenceMediaSource$SilenceMediaPeriod;->TRACKS:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    return-object v0
.end method

.method public maybeThrowPrepareError()V
    .locals 0

    .line 115
    return-void
.end method

.method public prepare(Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;J)V
    .locals 0
    .param p1, "callback"    # Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;
    .param p2, "positionUs"    # J

    .line 111
    invoke-interface {p1, p0}, Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;->onPrepared(Landroidx/media2/exoplayer/external/source/MediaPeriod;)V

    .line 112
    return-void
.end method

.method public readDiscontinuity()J
    .locals 2

    .line 150
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 0
    .param p1, "positionUs"    # J

    .line 182
    return-void
.end method

.method public seekToUs(J)J
    .locals 2
    .param p1, "positionUs"    # J

    .line 155
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/SilenceMediaSource$SilenceMediaPeriod;->sampleStreams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 156
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/SilenceMediaSource$SilenceMediaPeriod;->sampleStreams:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/SilenceMediaSource$SilenceSampleStream;

    invoke-virtual {v1, p1, p2}, Landroidx/media2/exoplayer/external/source/SilenceMediaSource$SilenceSampleStream;->seekTo(J)V

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    .end local v0    # "i":I
    :cond_0
    return-wide p1
.end method

.method public selectTracks([Landroidx/media2/exoplayer/external/trackselection/TrackSelection;[Z[Landroidx/media2/exoplayer/external/source/SampleStream;[ZJ)J
    .locals 4
    .param p1, "selections"    # [Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .param p2, "mayRetainStreamFlags"    # [Z
    .param p3, "streams"    # [Landroidx/media2/exoplayer/external/source/SampleStream;
    .param p4, "streamResetFlags"    # [Z
    .param p5, "positionUs"    # J

    .line 129
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 130
    aget-object v1, p3, v0

    if-eqz v1, :cond_1

    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    aget-boolean v1, p2, v0

    if-nez v1, :cond_1

    .line 131
    :cond_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/SilenceMediaSource$SilenceMediaPeriod;->sampleStreams:Ljava/util/ArrayList;

    aget-object v2, p3, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 132
    const/4 v1, 0x0

    aput-object v1, p3, v0

    goto :goto_1

    .line 130
    :cond_1
    nop

    .line 134
    :goto_1
    aget-object v1, p3, v0

    if-nez v1, :cond_2

    aget-object v1, p1, v0

    if-eqz v1, :cond_2

    .line 135
    new-instance v1, Landroidx/media2/exoplayer/external/source/SilenceMediaSource$SilenceSampleStream;

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/source/SilenceMediaSource$SilenceMediaPeriod;->durationUs:J

    invoke-direct {v1, v2, v3}, Landroidx/media2/exoplayer/external/source/SilenceMediaSource$SilenceSampleStream;-><init>(J)V

    .line 136
    .local v1, "stream":Landroidx/media2/exoplayer/external/source/SilenceMediaSource$SilenceSampleStream;
    invoke-virtual {v1, p5, p6}, Landroidx/media2/exoplayer/external/source/SilenceMediaSource$SilenceSampleStream;->seekTo(J)V

    .line 137
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/SilenceMediaSource$SilenceMediaPeriod;->sampleStreams:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    aput-object v1, p3, v0

    .line 139
    const/4 v2, 0x1

    aput-boolean v2, p4, v0

    goto :goto_2

    .line 134
    .end local v1    # "stream":Landroidx/media2/exoplayer/external/source/SilenceMediaSource$SilenceSampleStream;
    :cond_2
    nop

    .line 129
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    .end local v0    # "i":I
    :cond_3
    return-wide p5
.end method
