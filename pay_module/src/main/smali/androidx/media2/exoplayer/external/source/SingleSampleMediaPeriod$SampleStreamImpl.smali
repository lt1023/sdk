.class final Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SampleStreamImpl;
.super Ljava/lang/Object;
.source "SingleSampleMediaPeriod.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/SampleStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SampleStreamImpl"
.end annotation


# static fields
.field private static final STREAM_STATE_END_OF_STREAM:I = 0x2

.field private static final STREAM_STATE_SEND_FORMAT:I = 0x0

.field private static final STREAM_STATE_SEND_SAMPLE:I = 0x1


# instance fields
.field private notifiedDownstreamFormat:Z

.field private streamState:I

.field final synthetic this$0:Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;


# direct methods
.method private constructor <init>(Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;)V
    .locals 0

    .line 300
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;
    .param p2, "x1"    # Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$1;

    .line 300
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SampleStreamImpl;-><init>(Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;)V

    return-void
.end method

.method private maybeNotifyDownstreamFormat()V
    .locals 8

    .line 367
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SampleStreamImpl;->notifiedDownstreamFormat:Z

    if-nez v0, :cond_0

    .line 368
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->access$300(Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;)Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->format:Landroidx/media2/exoplayer/external/Format;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    .line 369
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v2

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->format:Landroidx/media2/exoplayer/external/Format;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    .line 368
    invoke-virtual/range {v1 .. v7}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(ILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;J)V

    .line 374
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SampleStreamImpl;->notifiedDownstreamFormat:Z

    goto :goto_0

    .line 367
    :cond_0
    nop

    .line 376
    :goto_0
    return-void
.end method


# virtual methods
.method public isReady()Z
    .locals 1

    .line 317
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;

    iget-boolean v0, v0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->loadingFinished:Z

    return v0
.end method

.method public maybeThrowError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;

    iget-boolean v0, v0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->treatLoadErrorsAsEndOfStream:Z

    if-nez v0, :cond_0

    .line 323
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->loader:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/upstream/Loader;->maybeThrowError()V

    goto :goto_0

    .line 322
    :cond_0
    nop

    .line 325
    :goto_0
    return-void
.end method

.method public readData(Landroidx/media2/exoplayer/external/FormatHolder;Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;Z)I
    .locals 6
    .param p1, "formatHolder"    # Landroidx/media2/exoplayer/external/FormatHolder;
    .param p2, "buffer"    # Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;
    .param p3, "requireFormat"    # Z

    .line 330
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SampleStreamImpl;->maybeNotifyDownstreamFormat()V

    .line 331
    iget v0, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SampleStreamImpl;->streamState:I

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, -0x4

    if-ne v0, v2, :cond_0

    .line 332
    invoke-virtual {p2, v1}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->addFlag(I)V

    .line 333
    return v3

    .line 334
    :cond_0
    const/4 v4, 0x1

    if-nez p3, :cond_5

    if-nez v0, :cond_1

    goto :goto_1

    .line 338
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;

    iget-boolean v0, v0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->loadingFinished:Z

    if-eqz v0, :cond_4

    .line 339
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->sampleData:[B

    if-eqz v0, :cond_3

    .line 340
    invoke-virtual {p2, v4}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->addFlag(I)V

    .line 341
    const-wide/16 v0, 0x0

    iput-wide v0, p2, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->timeUs:J

    .line 342
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->isFlagsOnly()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 343
    return v3

    .line 345
    :cond_2
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;

    iget v0, v0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->sampleSize:I

    invoke-virtual {p2, v0}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    .line 346
    iget-object v0, p2, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->sampleData:[B

    const/4 v4, 0x0

    iget-object v5, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;

    iget v5, v5, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->sampleSize:I

    invoke-virtual {v0, v1, v4, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 348
    :cond_3
    invoke-virtual {p2, v1}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->addFlag(I)V

    .line 350
    :goto_0
    iput v2, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SampleStreamImpl;->streamState:I

    .line 351
    return v3

    .line 353
    :cond_4
    const/4 v0, -0x3

    return v0

    .line 334
    :cond_5
    :goto_1
    nop

    .line 335
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->format:Landroidx/media2/exoplayer/external/Format;

    iput-object v0, p1, Landroidx/media2/exoplayer/external/FormatHolder;->format:Landroidx/media2/exoplayer/external/Format;

    .line 336
    iput v4, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SampleStreamImpl;->streamState:I

    .line 337
    const/4 v0, -0x5

    return v0
.end method

.method public reset()V
    .locals 2

    .line 310
    iget v0, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SampleStreamImpl;->streamState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 311
    const/4 v0, 0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SampleStreamImpl;->streamState:I

    goto :goto_0

    .line 310
    :cond_0
    nop

    .line 313
    :goto_0
    return-void
.end method

.method public skipData(J)I
    .locals 3
    .param p1, "positionUs"    # J

    .line 358
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SampleStreamImpl;->maybeNotifyDownstreamFormat()V

    .line 359
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    iget v0, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SampleStreamImpl;->streamState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 360
    iput v1, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SampleStreamImpl;->streamState:I

    .line 361
    const/4 v0, 0x1

    return v0

    .line 359
    :cond_0
    nop

    .line 363
    const/4 v0, 0x0

    return v0
.end method
