.class final Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;
.super Ljava/lang/Object;
.source "SimpleExoPlayer.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;
.implements Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;
.implements Landroidx/media2/exoplayer/external/text/TextOutput;
.implements Landroidx/media2/exoplayer/external/metadata/MetadataOutput;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroidx/media2/exoplayer/external/audio/AudioFocusManager$PlayerControl;
.implements Landroidx/media2/exoplayer/external/Player$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/SimpleExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ComponentListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;


# direct methods
.method private constructor <init>(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)V
    .locals 0

    .line 1249
    iput-object p1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media2/exoplayer/external/SimpleExoPlayer;Landroidx/media2/exoplayer/external/SimpleExoPlayer$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media2/exoplayer/external/SimpleExoPlayer;
    .param p2, "x1"    # Landroidx/media2/exoplayer/external/SimpleExoPlayer$1;

    .line 1249
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;-><init>(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)V

    return-void
.end method


# virtual methods
.method public executePlayerCommand(I)V
    .locals 2
    .param p1, "playerCommand"    # I

    .line 1465
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v1

    invoke-static {v0, v1, p1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$1700(Landroidx/media2/exoplayer/external/SimpleExoPlayer;ZI)V

    .line 1466
    return-void
.end method

.method public onAudioDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 8
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "initializedTimestampMs"    # J
    .param p4, "initializationDurationMs"    # J

    .line 1362
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$700(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;

    .line 1363
    .local v1, "audioDebugListener":Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;
    move-object v2, v1

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;->onAudioDecoderInitialized(Ljava/lang/String;JJ)V

    .line 1365
    .end local v1    # "audioDebugListener":Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;
    goto :goto_0

    .line 1366
    :cond_0
    return-void
.end method

.method public onAudioDisabled(Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V
    .locals 2
    .param p1, "counters"    # Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    .line 1386
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$700(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;

    .line 1387
    .local v1, "audioDebugListener":Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;
    invoke-interface {v1, p1}, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;->onAudioDisabled(Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V

    .line 1388
    .end local v1    # "audioDebugListener":Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;
    goto :goto_0

    .line 1389
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$1002(Landroidx/media2/exoplayer/external/SimpleExoPlayer;Landroidx/media2/exoplayer/external/Format;)Landroidx/media2/exoplayer/external/Format;

    .line 1390
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$602(Landroidx/media2/exoplayer/external/SimpleExoPlayer;Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    .line 1391
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$802(Landroidx/media2/exoplayer/external/SimpleExoPlayer;I)I

    .line 1392
    return-void
.end method

.method public onAudioEnabled(Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V
    .locals 2
    .param p1, "counters"    # Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    .line 1335
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$602(Landroidx/media2/exoplayer/external/SimpleExoPlayer;Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    .line 1336
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$700(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;

    .line 1337
    .local v1, "audioDebugListener":Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;
    invoke-interface {v1, p1}, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;->onAudioEnabled(Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V

    .line 1338
    .end local v1    # "audioDebugListener":Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;
    goto :goto_0

    .line 1339
    :cond_0
    return-void
.end method

.method public onAudioInputFormatChanged(Landroidx/media2/exoplayer/external/Format;)V
    .locals 2
    .param p1, "format"    # Landroidx/media2/exoplayer/external/Format;

    .line 1370
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$1002(Landroidx/media2/exoplayer/external/SimpleExoPlayer;Landroidx/media2/exoplayer/external/Format;)Landroidx/media2/exoplayer/external/Format;

    .line 1371
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$700(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;

    .line 1372
    .local v1, "audioDebugListener":Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;
    invoke-interface {v1, p1}, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;->onAudioInputFormatChanged(Landroidx/media2/exoplayer/external/Format;)V

    .line 1373
    .end local v1    # "audioDebugListener":Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;
    goto :goto_0

    .line 1374
    :cond_0
    return-void
.end method

.method public onAudioSessionId(I)V
    .locals 3
    .param p1, "sessionId"    # I

    .line 1343
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$800(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 1344
    return-void

    .line 1346
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$802(Landroidx/media2/exoplayer/external/SimpleExoPlayer;I)I

    .line 1347
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$900(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/audio/AudioListener;

    .line 1350
    .local v1, "audioListener":Landroidx/media2/exoplayer/external/audio/AudioListener;
    iget-object v2, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$700(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1351
    invoke-interface {v1, p1}, Landroidx/media2/exoplayer/external/audio/AudioListener;->onAudioSessionId(I)V

    goto :goto_1

    .line 1350
    :cond_1
    nop

    .line 1353
    .end local v1    # "audioListener":Landroidx/media2/exoplayer/external/audio/AudioListener;
    :goto_1
    goto :goto_0

    .line 1354
    :cond_2
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$700(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;

    .line 1355
    .local v1, "audioDebugListener":Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;
    invoke-interface {v1, p1}, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;->onAudioSessionId(I)V

    .line 1356
    .end local v1    # "audioDebugListener":Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;
    goto :goto_2

    .line 1357
    :cond_3
    return-void
.end method

.method public onAudioSinkUnderrun(IJJ)V
    .locals 8
    .param p1, "bufferSize"    # I
    .param p2, "bufferSizeMs"    # J
    .param p4, "elapsedSinceLastFeedMs"    # J

    .line 1379
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$700(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;

    .line 1380
    .local v1, "audioDebugListener":Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;
    move-object v2, v1

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;->onAudioSinkUnderrun(IJJ)V

    .line 1381
    .end local v1    # "audioDebugListener":Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;
    goto :goto_0

    .line 1382
    :cond_0
    return-void
.end method

.method public onCues(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/text/Cue;",
            ">;)V"
        }
    .end annotation

    .line 1398
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/text/Cue;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$1102(Landroidx/media2/exoplayer/external/SimpleExoPlayer;Ljava/util/List;)Ljava/util/List;

    .line 1399
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$1200(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/text/TextOutput;

    .line 1400
    .local v1, "textOutput":Landroidx/media2/exoplayer/external/text/TextOutput;
    invoke-interface {v1, p1}, Landroidx/media2/exoplayer/external/text/TextOutput;->onCues(Ljava/util/List;)V

    .line 1401
    .end local v1    # "textOutput":Landroidx/media2/exoplayer/external/text/TextOutput;
    goto :goto_0

    .line 1402
    :cond_0
    return-void
.end method

.method public onDroppedFrames(IJ)V
    .locals 2
    .param p1, "count"    # I
    .param p2, "elapsed"    # J

    .line 1288
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$200(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;

    .line 1289
    .local v1, "videoDebugListener":Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;
    invoke-interface {v1, p1, p2, p3}, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;->onDroppedFrames(IJ)V

    .line 1290
    .end local v1    # "videoDebugListener":Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;
    goto :goto_0

    .line 1291
    :cond_0
    return-void
.end method

.method public onLoadingChanged(Z)V
    .locals 2
    .param p1, "isLoading"    # Z

    .line 1472
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$1800(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Landroidx/media2/exoplayer/external/util/PriorityTaskManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1473
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$1900(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1474
    iget-object v1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$1800(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Landroidx/media2/exoplayer/external/util/PriorityTaskManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/media2/exoplayer/external/util/PriorityTaskManager;->add(I)V

    .line 1475
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$1902(Landroidx/media2/exoplayer/external/SimpleExoPlayer;Z)Z

    goto :goto_0

    .line 1473
    :cond_0
    nop

    .line 1476
    if-nez p1, :cond_1

    iget-object v1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$1900(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1477
    iget-object v1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$1800(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Landroidx/media2/exoplayer/external/util/PriorityTaskManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/media2/exoplayer/external/util/PriorityTaskManager;->remove(I)V

    .line 1478
    iget-object v1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v1, v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$1902(Landroidx/media2/exoplayer/external/SimpleExoPlayer;Z)Z

    goto :goto_0

    .line 1476
    :cond_1
    goto :goto_0

    .line 1472
    :cond_2
    nop

    .line 1481
    :goto_0
    return-void
.end method

.method public onMetadata(Landroidx/media2/exoplayer/external/metadata/Metadata;)V
    .locals 2
    .param p1, "metadata"    # Landroidx/media2/exoplayer/external/metadata/Metadata;

    .line 1408
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$1300(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/metadata/MetadataOutput;

    .line 1409
    .local v1, "metadataOutput":Landroidx/media2/exoplayer/external/metadata/MetadataOutput;
    invoke-interface {v1, p1}, Landroidx/media2/exoplayer/external/metadata/MetadataOutput;->onMetadata(Landroidx/media2/exoplayer/external/metadata/Metadata;)V

    .line 1410
    .end local v1    # "metadataOutput":Landroidx/media2/exoplayer/external/metadata/MetadataOutput;
    goto :goto_0

    .line 1411
    :cond_0
    return-void
.end method

.method public onPlaybackParametersChanged(Landroidx/media2/exoplayer/external/PlaybackParameters;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media2/exoplayer/external/Player$EventListener$$CC;->onPlaybackParametersChanged$$dflt$$(Landroidx/media2/exoplayer/external/Player$EventListener;Landroidx/media2/exoplayer/external/PlaybackParameters;)V

    return-void
.end method

.method public onPlayerError(Landroidx/media2/exoplayer/external/ExoPlaybackException;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media2/exoplayer/external/Player$EventListener$$CC;->onPlayerError$$dflt$$(Landroidx/media2/exoplayer/external/Player$EventListener;Landroidx/media2/exoplayer/external/ExoPlaybackException;)V

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media2/exoplayer/external/Player$EventListener$$CC;->onPlayerStateChanged$$dflt$$(Landroidx/media2/exoplayer/external/Player$EventListener;ZI)V

    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media2/exoplayer/external/Player$EventListener$$CC;->onPositionDiscontinuity$$dflt$$(Landroidx/media2/exoplayer/external/Player$EventListener;I)V

    return-void
.end method

.method public onRenderedFirstFrame(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .line 1312
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$500(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Landroid/view/Surface;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 1313
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$400(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/video/VideoListener;

    .line 1314
    .local v1, "videoListener":Landroidx/media2/exoplayer/external/video/VideoListener;
    invoke-interface {v1}, Landroidx/media2/exoplayer/external/video/VideoListener;->onRenderedFirstFrame()V

    .line 1315
    .end local v1    # "videoListener":Landroidx/media2/exoplayer/external/video/VideoListener;
    goto :goto_0

    .line 1313
    :cond_0
    goto :goto_1

    .line 1312
    :cond_1
    nop

    .line 1317
    :goto_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$200(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;

    .line 1318
    .local v1, "videoDebugListener":Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;
    invoke-interface {v1, p1}, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;->onRenderedFirstFrame(Landroid/view/Surface;)V

    .line 1319
    .end local v1    # "videoDebugListener":Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;
    goto :goto_2

    .line 1320
    :cond_2
    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media2/exoplayer/external/Player$EventListener$$CC;->onRepeatModeChanged$$dflt$$(Landroidx/media2/exoplayer/external/Player$EventListener;I)V

    return-void
.end method

.method public onSeekProcessed()V
    .locals 0

    invoke-static {p0}, Landroidx/media2/exoplayer/external/Player$EventListener$$CC;->onSeekProcessed$$dflt$$(Landroidx/media2/exoplayer/external/Player$EventListener;)V

    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media2/exoplayer/external/Player$EventListener$$CC;->onShuffleModeEnabledChanged$$dflt$$(Landroidx/media2/exoplayer/external/Player$EventListener;Z)V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 1435
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$1400(Landroidx/media2/exoplayer/external/SimpleExoPlayer;Landroid/view/Surface;Z)V

    .line 1436
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0, p2, p3}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$1500(Landroidx/media2/exoplayer/external/SimpleExoPlayer;II)V

    .line 1437
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .line 1446
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$1400(Landroidx/media2/exoplayer/external/SimpleExoPlayer;Landroid/view/Surface;Z)V

    .line 1447
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    const/4 v2, 0x0

    invoke-static {v0, v2, v2}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$1500(Landroidx/media2/exoplayer/external/SimpleExoPlayer;II)V

    .line 1448
    return v1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 1441
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0, p2, p3}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$1500(Landroidx/media2/exoplayer/external/SimpleExoPlayer;II)V

    .line 1442
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .line 1454
    return-void
.end method

.method public onTimelineChanged(Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/Player$EventListener$$CC;->onTimelineChanged$$dflt$$(Landroidx/media2/exoplayer/external/Player$EventListener;Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;I)V

    return-void
.end method

.method public onTracksChanged(Landroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media2/exoplayer/external/Player$EventListener$$CC;->onTracksChanged$$dflt$$(Landroidx/media2/exoplayer/external/Player$EventListener;Landroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;)V

    return-void
.end method

.method public onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 8
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "initializedTimestampMs"    # J
    .param p4, "initializationDurationMs"    # J

    .line 1272
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$200(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;

    .line 1273
    .local v1, "videoDebugListener":Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;
    move-object v2, v1

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;->onVideoDecoderInitialized(Ljava/lang/String;JJ)V

    .line 1275
    .end local v1    # "videoDebugListener":Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;
    goto :goto_0

    .line 1276
    :cond_0
    return-void
.end method

.method public onVideoDisabled(Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V
    .locals 2
    .param p1, "counters"    # Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    .line 1324
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$200(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;

    .line 1325
    .local v1, "videoDebugListener":Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;
    invoke-interface {v1, p1}, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;->onVideoDisabled(Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V

    .line 1326
    .end local v1    # "videoDebugListener":Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;
    goto :goto_0

    .line 1327
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$302(Landroidx/media2/exoplayer/external/SimpleExoPlayer;Landroidx/media2/exoplayer/external/Format;)Landroidx/media2/exoplayer/external/Format;

    .line 1328
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$102(Landroidx/media2/exoplayer/external/SimpleExoPlayer;Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    .line 1329
    return-void
.end method

.method public onVideoEnabled(Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V
    .locals 2
    .param p1, "counters"    # Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    .line 1263
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$102(Landroidx/media2/exoplayer/external/SimpleExoPlayer;Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    .line 1264
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$200(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;

    .line 1265
    .local v1, "videoDebugListener":Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;
    invoke-interface {v1, p1}, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;->onVideoEnabled(Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V

    .line 1266
    .end local v1    # "videoDebugListener":Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;
    goto :goto_0

    .line 1267
    :cond_0
    return-void
.end method

.method public onVideoInputFormatChanged(Landroidx/media2/exoplayer/external/Format;)V
    .locals 2
    .param p1, "format"    # Landroidx/media2/exoplayer/external/Format;

    .line 1280
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$302(Landroidx/media2/exoplayer/external/SimpleExoPlayer;Landroidx/media2/exoplayer/external/Format;)Landroidx/media2/exoplayer/external/Format;

    .line 1281
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$200(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;

    .line 1282
    .local v1, "videoDebugListener":Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;
    invoke-interface {v1, p1}, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;->onVideoInputFormatChanged(Landroidx/media2/exoplayer/external/Format;)V

    .line 1283
    .end local v1    # "videoDebugListener":Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;
    goto :goto_0

    .line 1284
    :cond_0
    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "unappliedRotationDegrees"    # I
    .param p4, "pixelWidthHeightRatio"    # F

    .line 1296
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$400(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/video/VideoListener;

    .line 1299
    .local v1, "videoListener":Landroidx/media2/exoplayer/external/video/VideoListener;
    iget-object v2, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$200(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1300
    invoke-interface {v1, p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/video/VideoListener;->onVideoSizeChanged(IIIF)V

    goto :goto_1

    .line 1299
    :cond_0
    nop

    .line 1303
    .end local v1    # "videoListener":Landroidx/media2/exoplayer/external/video/VideoListener;
    :goto_1
    goto :goto_0

    .line 1304
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$200(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;

    .line 1305
    .local v1, "videoDebugListener":Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;
    invoke-interface {v1, p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;->onVideoSizeChanged(IIIF)V

    .line 1307
    .end local v1    # "videoDebugListener":Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;
    goto :goto_2

    .line 1308
    :cond_2
    return-void
.end method

.method public setVolumeMultiplier(F)V
    .locals 1
    .param p1, "volumeMultiplier"    # F

    .line 1460
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$1600(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)V

    .line 1461
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 1422
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0, p3, p4}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$1500(Landroidx/media2/exoplayer/external/SimpleExoPlayer;II)V

    .line 1423
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 1417
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$1400(Landroidx/media2/exoplayer/external/SimpleExoPlayer;Landroid/view/Surface;Z)V

    .line 1418
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 1427
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$1400(Landroidx/media2/exoplayer/external/SimpleExoPlayer;Landroid/view/Surface;Z)V

    .line 1428
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0, v1, v1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$1500(Landroidx/media2/exoplayer/external/SimpleExoPlayer;II)V

    .line 1429
    return-void
.end method
