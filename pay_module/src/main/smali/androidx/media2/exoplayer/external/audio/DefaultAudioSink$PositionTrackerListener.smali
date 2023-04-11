.class final Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PositionTrackerListener;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PositionTrackerListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;


# direct methods
.method private constructor <init>(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;)V
    .locals 0

    .line 1256
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PositionTrackerListener;->this$0:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;
    .param p2, "x1"    # Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$1;

    .line 1256
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PositionTrackerListener;-><init>(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;)V

    return-void
.end method


# virtual methods
.method public onInvalidLatency(J)V
    .locals 3
    .param p1, "latencyUs"    # J

    .line 1310
    const-string v0, "AudioTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Ignoring impossibly large audio latency: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    return-void
.end method

.method public onPositionFramesMismatch(JJJJ)V
    .locals 6
    .param p1, "audioTimestampPositionFrames"    # J
    .param p3, "audioTimestampSystemTimeUs"    # J
    .param p5, "systemTimeUs"    # J
    .param p7, "playbackPositionUs"    # J

    .line 1264
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PositionTrackerListener;->this$0:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;

    .line 1274
    invoke-static {v0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->access$600(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;)J

    move-result-wide v0

    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PositionTrackerListener;->this$0:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;

    .line 1276
    invoke-static {v2}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->access$700(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;)J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0xb6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Spurious audio timestamp (frame position mismatch): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1277
    .local v0, "message":Ljava/lang/String;
    sget-boolean v1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->failOnSpuriousAudioTimestamp:Z

    if-nez v1, :cond_0

    .line 1280
    const-string v1, "AudioTrack"

    invoke-static {v1, v0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    return-void

    .line 1278
    :cond_0
    new-instance v1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$InvalidAudioTrackTimestampException;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$InvalidAudioTrackTimestampException;-><init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$1;)V

    throw v1
.end method

.method public onSystemTimeUsMismatch(JJJJ)V
    .locals 6
    .param p1, "audioTimestampPositionFrames"    # J
    .param p3, "audioTimestampSystemTimeUs"    # J
    .param p5, "systemTimeUs"    # J
    .param p7, "playbackPositionUs"    # J

    .line 1289
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PositionTrackerListener;->this$0:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;

    .line 1299
    invoke-static {v0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->access$600(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;)J

    move-result-wide v0

    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PositionTrackerListener;->this$0:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;

    .line 1301
    invoke-static {v2}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->access$700(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;)J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0xb4

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Spurious audio timestamp (system clock mismatch): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1302
    .local v0, "message":Ljava/lang/String;
    sget-boolean v1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->failOnSpuriousAudioTimestamp:Z

    if-nez v1, :cond_0

    .line 1305
    const-string v1, "AudioTrack"

    invoke-static {v1, v0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    return-void

    .line 1303
    :cond_0
    new-instance v1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$InvalidAudioTrackTimestampException;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$InvalidAudioTrackTimestampException;-><init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$1;)V

    throw v1
.end method

.method public onUnderrun(IJ)V
    .locals 10
    .param p1, "bufferSize"    # I
    .param p2, "bufferSizeMs"    # J

    .line 1315
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PositionTrackerListener;->this$0:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->access$900(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;)Landroidx/media2/exoplayer/external/audio/AudioSink$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1316
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PositionTrackerListener;->this$0:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->access$1000(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 1317
    .local v0, "elapsedSinceLastFeedMs":J
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PositionTrackerListener;->this$0:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->access$900(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;)Landroidx/media2/exoplayer/external/audio/AudioSink$Listener;

    move-result-object v4

    move v5, p1

    move-wide v6, p2

    move-wide v8, v0

    invoke-interface/range {v4 .. v9}, Landroidx/media2/exoplayer/external/audio/AudioSink$Listener;->onUnderrun(IJJ)V

    goto :goto_0

    .line 1315
    .end local v0    # "elapsedSinceLastFeedMs":J
    :cond_0
    nop

    .line 1319
    :goto_0
    return-void
.end method
