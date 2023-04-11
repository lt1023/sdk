.class public final Landroidx/media2/exoplayer/external/text/TextRenderer;
.super Landroidx/media2/exoplayer/external/BaseRenderer;
.source "TextRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/text/TextRenderer$ReplacementState;,
        Landroidx/media2/exoplayer/external/text/TextRenderer$Output;
    }
.end annotation


# static fields
.field private static final MSG_UPDATE_OUTPUT:I = 0x0

.field private static final REPLACEMENT_STATE_NONE:I = 0x0

.field private static final REPLACEMENT_STATE_SIGNAL_END_OF_STREAM:I = 0x1

.field private static final REPLACEMENT_STATE_WAIT_END_OF_STREAM:I = 0x2


# instance fields
.field private decoder:Landroidx/media2/exoplayer/external/text/SubtitleDecoder;

.field private final decoderFactory:Landroidx/media2/exoplayer/external/text/SubtitleDecoderFactory;

.field private decoderReplacementState:I

.field private final formatHolder:Landroidx/media2/exoplayer/external/FormatHolder;

.field private inputStreamEnded:Z

.field private nextInputBuffer:Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;

.field private nextSubtitle:Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;

.field private nextSubtitleEventIndex:I

.field private final output:Landroidx/media2/exoplayer/external/text/TextOutput;

.field private final outputHandler:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private outputStreamEnded:Z

.field private streamFormat:Landroidx/media2/exoplayer/external/Format;

.field private subtitle:Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/text/TextOutput;Landroid/os/Looper;)V
    .locals 1
    .param p1, "output"    # Landroidx/media2/exoplayer/external/text/TextOutput;
    .param p2, "outputLooper"    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 110
    sget-object v0, Landroidx/media2/exoplayer/external/text/SubtitleDecoderFactory;->DEFAULT:Landroidx/media2/exoplayer/external/text/SubtitleDecoderFactory;

    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/exoplayer/external/text/TextRenderer;-><init>(Landroidx/media2/exoplayer/external/text/TextOutput;Landroid/os/Looper;Landroidx/media2/exoplayer/external/text/SubtitleDecoderFactory;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/text/TextOutput;Landroid/os/Looper;Landroidx/media2/exoplayer/external/text/SubtitleDecoderFactory;)V
    .locals 1
    .param p1, "output"    # Landroidx/media2/exoplayer/external/text/TextOutput;
    .param p2, "outputLooper"    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "decoderFactory"    # Landroidx/media2/exoplayer/external/text/SubtitleDecoderFactory;

    .line 124
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/BaseRenderer;-><init>(I)V

    .line 125
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/text/TextOutput;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->output:Landroidx/media2/exoplayer/external/text/TextOutput;

    .line 126
    nop

    .line 127
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p2, p0}, Landroidx/media2/exoplayer/external/util/Util;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->outputHandler:Landroid/os/Handler;

    .line 128
    iput-object p3, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->decoderFactory:Landroidx/media2/exoplayer/external/text/SubtitleDecoderFactory;

    .line 129
    new-instance v0, Landroidx/media2/exoplayer/external/FormatHolder;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/FormatHolder;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->formatHolder:Landroidx/media2/exoplayer/external/FormatHolder;

    .line 130
    return-void
.end method

.method private clearOutput()V
    .locals 1

    .line 322
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/text/TextRenderer;->updateOutput(Ljava/util/List;)V

    .line 323
    return-void
.end method

.method private getNextEventTime()J
    .locals 2

    .line 309
    iget v0, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->nextSubtitleEventIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->subtitle:Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;->getEventTimeCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 310
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->subtitle:Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;

    iget v1, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->nextSubtitleEventIndex:I

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;->getEventTime(I)J

    move-result-wide v0

    goto :goto_1

    .line 309
    :cond_1
    :goto_0
    nop

    .line 310
    const-wide v0, 0x7fffffffffffffffL

    .line 308
    :goto_1
    return-wide v0
.end method

.method private invokeUpdateOutputInternal(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/text/Cue;",
            ">;)V"
        }
    .end annotation

    .line 338
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/text/Cue;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->output:Landroidx/media2/exoplayer/external/text/TextOutput;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/text/TextOutput;->onCues(Ljava/util/List;)V

    .line 339
    return-void
.end method

.method private releaseBuffers()V
    .locals 2

    .line 283
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->nextInputBuffer:Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;

    .line 284
    const/4 v1, -0x1

    iput v1, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->nextSubtitleEventIndex:I

    .line 285
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->subtitle:Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;

    if-eqz v1, :cond_0

    .line 286
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;->release()V

    .line 287
    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->subtitle:Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;

    goto :goto_0

    .line 285
    :cond_0
    nop

    .line 289
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->nextSubtitle:Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;

    if-eqz v1, :cond_1

    .line 290
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;->release()V

    .line 291
    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->nextSubtitle:Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;

    goto :goto_1

    .line 289
    :cond_1
    nop

    .line 293
    :goto_1
    return-void
.end method

.method private releaseDecoder()V
    .locals 1

    .line 296
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/text/TextRenderer;->releaseBuffers()V

    .line 297
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->decoder:Landroidx/media2/exoplayer/external/text/SubtitleDecoder;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/text/SubtitleDecoder;->release()V

    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->decoder:Landroidx/media2/exoplayer/external/text/SubtitleDecoder;

    .line 299
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->decoderReplacementState:I

    .line 300
    return-void
.end method

.method private replaceDecoder()V
    .locals 2

    .line 303
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/text/TextRenderer;->releaseDecoder()V

    .line 304
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->decoderFactory:Landroidx/media2/exoplayer/external/text/SubtitleDecoderFactory;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->streamFormat:Landroidx/media2/exoplayer/external/Format;

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/text/SubtitleDecoderFactory;->createDecoder(Landroidx/media2/exoplayer/external/Format;)Landroidx/media2/exoplayer/external/text/SubtitleDecoder;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->decoder:Landroidx/media2/exoplayer/external/text/SubtitleDecoder;

    .line 305
    return-void
.end method

.method private updateOutput(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/text/Cue;",
            ">;)V"
        }
    .end annotation

    .line 314
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/text/Cue;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->outputHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 315
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 317
    :cond_0
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/text/TextRenderer;->invokeUpdateOutputInternal(Ljava/util/List;)V

    .line 319
    :goto_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 328
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/text/TextRenderer;->invokeUpdateOutputInternal(Ljava/util/List;)V

    .line 331
    const/4 v0, 0x1

    return v0

    .line 333
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public isEnded()Z
    .locals 1

    .line 272
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->outputStreamEnded:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 279
    const/4 v0, 0x1

    return v0
.end method

.method protected onDisabled()V
    .locals 1

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->streamFormat:Landroidx/media2/exoplayer/external/Format;

    .line 266
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/text/TextRenderer;->clearOutput()V

    .line 267
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/text/TextRenderer;->releaseDecoder()V

    .line 268
    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 1
    .param p1, "positionUs"    # J
    .param p3, "joining"    # Z

    .line 155
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/text/TextRenderer;->clearOutput()V

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->inputStreamEnded:Z

    .line 157
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->outputStreamEnded:Z

    .line 158
    iget v0, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->decoderReplacementState:I

    if-eqz v0, :cond_0

    .line 159
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/text/TextRenderer;->replaceDecoder()V

    goto :goto_0

    .line 161
    :cond_0
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/text/TextRenderer;->releaseBuffers()V

    .line 162
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->decoder:Landroidx/media2/exoplayer/external/text/SubtitleDecoder;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/text/SubtitleDecoder;->flush()V

    .line 164
    :goto_0
    return-void
.end method

.method protected onStreamChanged([Landroidx/media2/exoplayer/external/Format;J)V
    .locals 2
    .param p1, "formats"    # [Landroidx/media2/exoplayer/external/Format;
    .param p2, "offsetUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 145
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->streamFormat:Landroidx/media2/exoplayer/external/Format;

    .line 146
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->decoder:Landroidx/media2/exoplayer/external/text/SubtitleDecoder;

    if-eqz v0, :cond_0

    .line 147
    const/4 v0, 0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->decoderReplacementState:I

    goto :goto_0

    .line 149
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->decoderFactory:Landroidx/media2/exoplayer/external/text/SubtitleDecoderFactory;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->streamFormat:Landroidx/media2/exoplayer/external/Format;

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/text/SubtitleDecoderFactory;->createDecoder(Landroidx/media2/exoplayer/external/Format;)Landroidx/media2/exoplayer/external/text/SubtitleDecoder;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->decoder:Landroidx/media2/exoplayer/external/text/SubtitleDecoder;

    .line 151
    :goto_0
    return-void
.end method

.method public render(JJ)V
    .locals 9
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 168
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->outputStreamEnded:Z

    if-eqz v0, :cond_0

    .line 169
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->nextSubtitle:Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;

    if-nez v0, :cond_1

    .line 173
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->decoder:Landroidx/media2/exoplayer/external/text/SubtitleDecoder;

    invoke-interface {v0, p1, p2}, Landroidx/media2/exoplayer/external/text/SubtitleDecoder;->setPositionUs(J)V

    .line 175
    :try_start_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->decoder:Landroidx/media2/exoplayer/external/text/SubtitleDecoder;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/text/SubtitleDecoder;->dequeueOutputBuffer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->nextSubtitle:Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;
    :try_end_0
    .catch Landroidx/media2/exoplayer/external/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/text/TextRenderer;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object v1

    throw v1

    .line 172
    .end local v0    # "e":Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;
    :cond_1
    nop

    .line 181
    :goto_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/text/TextRenderer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 182
    return-void

    .line 185
    :cond_2
    const/4 v0, 0x0

    .line 186
    .local v0, "textRendererNeedsUpdate":Z
    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->subtitle:Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    .line 189
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/text/TextRenderer;->getNextEventTime()J

    move-result-wide v4

    .line 190
    .local v4, "subtitleNextEventTimeUs":J
    :goto_1
    cmp-long v2, v4, p1

    if-gtz v2, :cond_3

    .line 191
    iget v2, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->nextSubtitleEventIndex:I

    add-int/2addr v2, v3

    iput v2, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->nextSubtitleEventIndex:I

    .line 192
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/text/TextRenderer;->getNextEventTime()J

    move-result-wide v4

    .line 193
    const/4 v0, 0x1

    goto :goto_1

    .line 190
    :cond_3
    goto :goto_2

    .line 186
    .end local v4    # "subtitleNextEventTimeUs":J
    :cond_4
    nop

    .line 197
    :goto_2
    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->nextSubtitle:Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;

    const/4 v4, 0x0

    if-eqz v2, :cond_a

    .line 198
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;->isEndOfStream()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 199
    if-nez v0, :cond_6

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/text/TextRenderer;->getNextEventTime()J

    move-result-wide v5

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v2, v5, v7

    if-nez v2, :cond_6

    .line 200
    iget v2, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->decoderReplacementState:I

    if-ne v2, v1, :cond_5

    .line 201
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/text/TextRenderer;->replaceDecoder()V

    goto :goto_4

    .line 203
    :cond_5
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/text/TextRenderer;->releaseBuffers()V

    .line 204
    iput-boolean v3, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->outputStreamEnded:Z

    goto :goto_4

    .line 199
    :cond_6
    goto :goto_4

    .line 207
    :cond_7
    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->nextSubtitle:Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;

    iget-wide v5, v2, Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;->timeUs:J

    cmp-long v2, v5, p1

    if-gtz v2, :cond_9

    .line 209
    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->subtitle:Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;

    if-eqz v2, :cond_8

    .line 210
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;->release()V

    goto :goto_3

    .line 209
    :cond_8
    nop

    .line 212
    :goto_3
    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->nextSubtitle:Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;

    iput-object v2, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->subtitle:Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;

    .line 213
    iput-object v4, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->nextSubtitle:Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;

    .line 214
    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->subtitle:Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;

    invoke-virtual {v2, p1, p2}, Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;->getNextEventTimeIndex(J)I

    move-result v2

    iput v2, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->nextSubtitleEventIndex:I

    .line 215
    const/4 v0, 0x1

    goto :goto_4

    .line 207
    :cond_9
    goto :goto_4

    .line 197
    :cond_a
    nop

    .line 219
    :goto_4
    if-eqz v0, :cond_b

    .line 221
    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->subtitle:Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;

    invoke-virtual {v2, p1, p2}, Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;->getCues(J)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Landroidx/media2/exoplayer/external/text/TextRenderer;->updateOutput(Ljava/util/List;)V

    goto :goto_5

    .line 219
    :cond_b
    nop

    .line 224
    :goto_5
    iget v2, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->decoderReplacementState:I

    if-ne v2, v1, :cond_c

    .line 225
    return-void

    .line 224
    :cond_c
    nop

    .line 229
    :goto_6
    :try_start_1
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->inputStreamEnded:Z

    if-nez v2, :cond_13

    .line 230
    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->nextInputBuffer:Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;

    if-nez v2, :cond_e

    .line 231
    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->decoder:Landroidx/media2/exoplayer/external/text/SubtitleDecoder;

    invoke-interface {v2}, Landroidx/media2/exoplayer/external/text/SubtitleDecoder;->dequeueInputBuffer()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;

    iput-object v2, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->nextInputBuffer:Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;

    .line 232
    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->nextInputBuffer:Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;

    if-nez v2, :cond_d

    .line 233
    return-void

    .line 232
    :cond_d
    goto :goto_7

    .line 230
    :cond_e
    nop

    .line 236
    :goto_7
    iget v2, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->decoderReplacementState:I

    if-ne v2, v3, :cond_f

    .line 237
    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->nextInputBuffer:Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;->setFlags(I)V

    .line 238
    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->decoder:Landroidx/media2/exoplayer/external/text/SubtitleDecoder;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->nextInputBuffer:Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;

    invoke-interface {v2, v3}, Landroidx/media2/exoplayer/external/text/SubtitleDecoder;->queueInputBuffer(Ljava/lang/Object;)V

    .line 239
    iput-object v4, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->nextInputBuffer:Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;

    .line 240
    iput v1, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->decoderReplacementState:I

    .line 241
    return-void

    .line 244
    :cond_f
    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->formatHolder:Landroidx/media2/exoplayer/external/FormatHolder;

    iget-object v5, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->nextInputBuffer:Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;

    const/4 v6, 0x0

    invoke-virtual {p0, v2, v5, v6}, Landroidx/media2/exoplayer/external/text/TextRenderer;->readSource(Landroidx/media2/exoplayer/external/FormatHolder;Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;Z)I

    move-result v2

    .line 245
    .local v2, "result":I
    const/4 v5, -0x4

    if-ne v2, v5, :cond_11

    .line 246
    iget-object v5, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->nextInputBuffer:Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;

    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;->isEndOfStream()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 247
    iput-boolean v3, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->inputStreamEnded:Z

    goto :goto_8

    .line 249
    :cond_10
    iget-object v5, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->nextInputBuffer:Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;

    iget-object v6, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->formatHolder:Landroidx/media2/exoplayer/external/FormatHolder;

    iget-object v6, v6, Landroidx/media2/exoplayer/external/FormatHolder;->format:Landroidx/media2/exoplayer/external/Format;

    iget-wide v6, v6, Landroidx/media2/exoplayer/external/Format;->subsampleOffsetUs:J

    iput-wide v6, v5, Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;->subsampleOffsetUs:J

    .line 250
    iget-object v5, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->nextInputBuffer:Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;

    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;->flip()V

    .line 252
    :goto_8
    iget-object v5, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->decoder:Landroidx/media2/exoplayer/external/text/SubtitleDecoder;

    iget-object v6, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->nextInputBuffer:Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;

    invoke-interface {v5, v6}, Landroidx/media2/exoplayer/external/text/SubtitleDecoder;->queueInputBuffer(Ljava/lang/Object;)V

    .line 253
    iput-object v4, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->nextInputBuffer:Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;
    :try_end_1
    .catch Landroidx/media2/exoplayer/external/text/SubtitleDecoderException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_9

    .line 254
    :cond_11
    const/4 v5, -0x3

    if-ne v2, v5, :cond_12

    .line 255
    return-void

    .line 254
    :cond_12
    nop

    .line 257
    .end local v2    # "result":I
    :goto_9
    goto :goto_6

    .line 260
    :cond_13
    nop

    .line 261
    return-void

    .line 258
    :catch_1
    move-exception v1

    .line 259
    .local v1, "e":Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/text/TextRenderer;->getIndex()I

    move-result v2

    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object v2

    throw v2

    return-void
.end method

.method public supportsFormat(Landroidx/media2/exoplayer/external/Format;)I
    .locals 2
    .param p1, "format"    # Landroidx/media2/exoplayer/external/Format;

    .line 134
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/TextRenderer;->decoderFactory:Landroidx/media2/exoplayer/external/text/SubtitleDecoderFactory;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/text/SubtitleDecoderFactory;->supportsFormat(Landroidx/media2/exoplayer/external/Format;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    const/4 v0, 0x0

    iget-object v1, p1, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/text/TextRenderer;->supportsFormatDrm(Landroidx/media2/exoplayer/external/drm/DrmSessionManager;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0

    .line 136
    :cond_1
    iget-object v0, p1, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    const/4 v0, 0x1

    return v0

    .line 139
    :cond_2
    const/4 v0, 0x0

    return v0
.end method
