.class final Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod$ClippingSampleStream;
.super Ljava/lang/Object;
.source "ClippingMediaPeriod.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/SampleStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClippingSampleStream"
.end annotation


# instance fields
.field public final childStream:Landroidx/media2/exoplayer/external/source/SampleStream;

.field private sentEos:Z

.field final synthetic this$0:Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;Landroidx/media2/exoplayer/external/source/SampleStream;)V
    .locals 0
    .param p2, "childStream"    # Landroidx/media2/exoplayer/external/source/SampleStream;

    .line 286
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Landroidx/media2/exoplayer/external/source/SampleStream;

    .line 288
    return-void
.end method


# virtual methods
.method public clearSentEos()V
    .locals 1

    .line 291
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod$ClippingSampleStream;->sentEos:Z

    .line 292
    return-void
.end method

.method public isReady()Z
    .locals 1

    .line 296
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->isPendingInitialDiscontinuity()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Landroidx/media2/exoplayer/external/source/SampleStream;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/SampleStream;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public maybeThrowError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Landroidx/media2/exoplayer/external/source/SampleStream;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/SampleStream;->maybeThrowError()V

    .line 302
    return-void
.end method

.method public readData(Landroidx/media2/exoplayer/external/FormatHolder;Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;Z)I
    .locals 11
    .param p1, "formatHolder"    # Landroidx/media2/exoplayer/external/FormatHolder;
    .param p2, "buffer"    # Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;
    .param p3, "requireFormat"    # Z

    .line 307
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->isPendingInitialDiscontinuity()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    .line 308
    return v1

    .line 310
    :cond_0
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod$ClippingSampleStream;->sentEos:Z

    const/4 v2, 0x4

    const/4 v3, -0x4

    if-eqz v0, :cond_1

    .line 311
    invoke-virtual {p2, v2}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->setFlags(I)V

    .line 312
    return v3

    .line 314
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Landroidx/media2/exoplayer/external/source/SampleStream;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/source/SampleStream;->readData(Landroidx/media2/exoplayer/external/FormatHolder;Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;Z)I

    move-result v0

    .line 315
    .local v0, "result":I
    const/4 v4, -0x5

    const-wide/high16 v5, -0x8000000000000000L

    if-ne v0, v4, :cond_6

    .line 316
    iget-object v1, p1, Landroidx/media2/exoplayer/external/FormatHolder;->format:Landroidx/media2/exoplayer/external/Format;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/Format;

    .line 317
    .local v1, "format":Landroidx/media2/exoplayer/external/Format;
    iget v2, v1, Landroidx/media2/exoplayer/external/Format;->encoderDelay:I

    if-nez v2, :cond_3

    iget v2, v1, Landroidx/media2/exoplayer/external/Format;->encoderPadding:I

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    goto :goto_3

    .line 319
    :cond_3
    :goto_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;

    iget-wide v2, v2, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->startUs:J

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    cmp-long v10, v2, v7

    if-eqz v10, :cond_4

    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    iget v2, v1, Landroidx/media2/exoplayer/external/Format;->encoderDelay:I

    .line 320
    .local v2, "encoderDelay":I
    :goto_1
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;

    iget-wide v7, v3, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->endUs:J

    cmp-long v3, v7, v5

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    iget v9, v1, Landroidx/media2/exoplayer/external/Format;->encoderPadding:I

    :goto_2
    move v3, v9

    .line 321
    .local v3, "encoderPadding":I
    invoke-virtual {v1, v2, v3}, Landroidx/media2/exoplayer/external/Format;->copyWithGaplessInfo(II)Landroidx/media2/exoplayer/external/Format;

    move-result-object v5

    iput-object v5, p1, Landroidx/media2/exoplayer/external/FormatHolder;->format:Landroidx/media2/exoplayer/external/Format;

    .line 323
    .end local v2    # "encoderDelay":I
    .end local v3    # "encoderPadding":I
    :goto_3
    return v4

    .line 325
    .end local v1    # "format":Landroidx/media2/exoplayer/external/Format;
    :cond_6
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;

    iget-wide v7, v4, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->endUs:J

    cmp-long v4, v7, v5

    if-eqz v4, :cond_a

    if-ne v0, v3, :cond_8

    iget-wide v7, p2, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->timeUs:J

    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;

    iget-wide v9, v4, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->endUs:J

    cmp-long v4, v7, v9

    if-gez v4, :cond_7

    goto :goto_4

    :cond_7
    goto :goto_5

    :cond_8
    :goto_4
    if-ne v0, v1, :cond_a

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;

    .line 328
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->getBufferedPositionUs()J

    move-result-wide v7

    cmp-long v1, v7, v5

    if-nez v1, :cond_9

    .line 329
    :goto_5
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->clear()V

    .line 330
    invoke-virtual {p2, v2}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->setFlags(I)V

    .line 331
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod$ClippingSampleStream;->sentEos:Z

    .line 332
    return v3

    .line 328
    :cond_9
    goto :goto_6

    .line 325
    :cond_a
    nop

    .line 334
    :goto_6
    return v0
.end method

.method public skipData(J)I
    .locals 1
    .param p1, "positionUs"    # J

    .line 339
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->isPendingInitialDiscontinuity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    const/4 v0, -0x3

    return v0

    .line 342
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Landroidx/media2/exoplayer/external/source/SampleStream;

    invoke-interface {v0, p1, p2}, Landroidx/media2/exoplayer/external/source/SampleStream;->skipData(J)I

    move-result v0

    return v0
.end method
