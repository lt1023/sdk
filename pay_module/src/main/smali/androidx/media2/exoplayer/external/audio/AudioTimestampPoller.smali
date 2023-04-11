.class final Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;
.super Ljava/lang/Object;
.source "AudioTimestampPoller.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller$AudioTimestampV19;,
        Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller$State;
    }
.end annotation


# static fields
.field private static final ERROR_POLL_INTERVAL_US:I = 0x7a120

.field private static final FAST_POLL_INTERVAL_US:I = 0x1388

.field private static final INITIALIZING_DURATION_US:I = 0x7a120

.field private static final SLOW_POLL_INTERVAL_US:I = 0x989680

.field private static final STATE_ERROR:I = 0x4

.field private static final STATE_INITIALIZING:I = 0x0

.field private static final STATE_NO_TIMESTAMP:I = 0x3

.field private static final STATE_TIMESTAMP:I = 0x1

.field private static final STATE_TIMESTAMP_ADVANCING:I = 0x2


# instance fields
.field private final audioTimestamp:Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller$AudioTimestampV19;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private initialTimestampPositionFrames:J

.field private initializeSystemTimeUs:J

.field private lastTimestampSampleTimeUs:J

.field private sampleIntervalUs:J

.field private state:I


# direct methods
.method public constructor <init>(Landroid/media/AudioTrack;)V
    .locals 2
    .param p1, "audioTrack"    # Landroid/media/AudioTrack;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 106
    new-instance v0, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller$AudioTimestampV19;

    invoke-direct {v0, p1}, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller$AudioTimestampV19;-><init>(Landroid/media/AudioTrack;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller$AudioTimestampV19;

    .line 107
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;->reset()V

    goto :goto_0

    .line 109
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller$AudioTimestampV19;

    .line 110
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;->updateState(I)V

    .line 112
    :goto_0
    return-void
.end method

.method private updateState(I)V
    .locals 6
    .param p1, "state"    # I

    .line 242
    iput p1, p0, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;->state:I

    .line 243
    const-wide/16 v0, 0x1388

    packed-switch p1, :pswitch_data_0

    .line 262
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 259
    :pswitch_0
    const-wide/32 v0, 0x7a120

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;->sampleIntervalUs:J

    .line 260
    goto :goto_0

    .line 256
    :pswitch_1
    const-wide/32 v0, 0x989680

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;->sampleIntervalUs:J

    .line 257
    goto :goto_0

    .line 252
    :pswitch_2
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;->sampleIntervalUs:J

    .line 253
    goto :goto_0

    .line 246
    :pswitch_3
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;->lastTimestampSampleTimeUs:J

    .line 247
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;->initialTimestampPositionFrames:J

    .line 248
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;->initializeSystemTimeUs:J

    .line 249
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;->sampleIntervalUs:J

    .line 250
    nop

    .line 264
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public acceptTimestamp()V
    .locals 2

    .line 194
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 195
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;->reset()V

    goto :goto_0

    .line 194
    :cond_0
    nop

    .line 197
    :goto_0
    return-void
.end method

.method public getTimestampPositionFrames()J
    .locals 2

    .line 238
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller$AudioTimestampV19;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller$AudioTimestampV19;->getTimestampPositionFrames()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public getTimestampSystemTimeUs()J
    .locals 2

    .line 230
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller$AudioTimestampV19;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller$AudioTimestampV19;->getTimestampSystemTimeUs()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    return-wide v0
.end method

.method public hasTimestamp()Z
    .locals 3

    .line 205
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    return v1
.end method

.method public isTimestampAdvancing()Z
    .locals 2

    .line 215
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public maybePollTimestamp(J)Z
    .locals 6
    .param p1, "systemTimeUs"    # J

    .line 125
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller$AudioTimestampV19;

    if-eqz v0, :cond_8

    iget-wide v1, p0, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;->lastTimestampSampleTimeUs:J

    sub-long v1, p1, v1

    iget-wide v3, p0, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;->sampleIntervalUs:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    goto/16 :goto_2

    .line 128
    :cond_0
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;->lastTimestampSampleTimeUs:J

    .line 129
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller$AudioTimestampV19;->maybeUpdateTimestamp()Z

    move-result v0

    .line 130
    .local v0, "updatedTimestamp":Z
    iget v1, p0, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;->state:I

    packed-switch v1, :pswitch_data_0

    .line 175
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 173
    :pswitch_0
    goto :goto_1

    .line 166
    :pswitch_1
    if-eqz v0, :cond_1

    .line 168
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;->reset()V

    goto :goto_1

    .line 166
    :cond_1
    goto :goto_1

    .line 160
    :pswitch_2
    if-nez v0, :cond_2

    .line 162
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;->reset()V

    goto :goto_1

    .line 160
    :cond_2
    goto :goto_1

    .line 150
    :pswitch_3
    if-eqz v0, :cond_4

    .line 151
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller$AudioTimestampV19;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller$AudioTimestampV19;->getTimestampPositionFrames()J

    move-result-wide v1

    .line 152
    .local v1, "timestampPositionFrames":J
    iget-wide v3, p0, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;->initialTimestampPositionFrames:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_3

    .line 153
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;->updateState(I)V

    goto :goto_0

    .line 152
    :cond_3
    nop

    .line 155
    .end local v1    # "timestampPositionFrames":J
    :goto_0
    goto :goto_1

    .line 156
    :cond_4
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;->reset()V

    .line 158
    goto :goto_1

    .line 132
    :pswitch_4
    if-eqz v0, :cond_6

    .line 133
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller$AudioTimestampV19;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller$AudioTimestampV19;->getTimestampSystemTimeUs()J

    move-result-wide v1

    iget-wide v3, p0, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;->initializeSystemTimeUs:J

    cmp-long v5, v1, v3

    if-ltz v5, :cond_5

    .line 135
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller$AudioTimestampV19;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller$AudioTimestampV19;->getTimestampPositionFrames()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;->initialTimestampPositionFrames:J

    .line 136
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;->updateState(I)V

    goto :goto_1

    .line 139
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 141
    :cond_6
    iget-wide v1, p0, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;->initializeSystemTimeUs:J

    sub-long v1, p1, v1

    const-wide/32 v3, 0x7a120

    cmp-long v5, v1, v3

    if-lez v5, :cond_7

    .line 146
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;->updateState(I)V

    goto :goto_1

    .line 141
    :cond_7
    nop

    .line 177
    :goto_1
    return v0

    .line 125
    .end local v0    # "updatedTimestamp":Z
    :cond_8
    :goto_2
    nop

    .line 126
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public rejectTimestamp()V
    .locals 1

    .line 186
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;->updateState(I)V

    .line 187
    return-void
.end method

.method public reset()V
    .locals 1

    .line 220
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller$AudioTimestampV19;

    if-eqz v0, :cond_0

    .line 221
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;->updateState(I)V

    goto :goto_0

    .line 220
    :cond_0
    nop

    .line 223
    :goto_0
    return-void
.end method
