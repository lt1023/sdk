.class public abstract Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;
.super Ljava/lang/Object;
.source "SimpleDecoder.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/decoder/Decoder;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;",
        "O:",
        "Landroidx/media2/exoplayer/external/decoder/OutputBuffer;",
        "E:",
        "Ljava/lang/Exception;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/media2/exoplayer/external/decoder/Decoder<",
        "TI;TO;TE;>;"
    }
.end annotation


# instance fields
.field private availableInputBufferCount:I

.field private final availableInputBuffers:[Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TI;"
        }
    .end annotation
.end field

.field private availableOutputBufferCount:I

.field private final availableOutputBuffers:[Landroidx/media2/exoplayer/external/decoder/OutputBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TO;"
        }
    .end annotation
.end field

.field private final decodeThread:Ljava/lang/Thread;

.field private dequeuedInputBuffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field

.field private exception:Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private flushed:Z

.field private final lock:Ljava/lang/Object;

.field private final queuedInputBuffers:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "TI;>;"
        }
    .end annotation
.end field

.field private final queuedOutputBuffers:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "TO;>;"
        }
    .end annotation
.end field

.field private released:Z

.field private skippedOutputBufferCount:I


# direct methods
.method protected constructor <init>([Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;[Landroidx/media2/exoplayer/external/decoder/OutputBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TI;[TO;)V"
        }
    .end annotation

    .line 58
    .local p0, "this":Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;, "Landroidx/media2/exoplayer/external/decoder/SimpleDecoder<TI;TO;TE;>;"
    .local p1, "inputBuffers":[Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;, "[TI;"
    .local p2, "outputBuffers":[Landroidx/media2/exoplayer/external/decoder/OutputBuffer;, "[TO;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    .line 60
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->queuedInputBuffers:Ljava/util/ArrayDeque;

    .line 61
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->queuedOutputBuffers:Ljava/util/ArrayDeque;

    .line 62
    iput-object p1, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->availableInputBuffers:[Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    .line 63
    array-length v0, p1

    iput v0, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->availableInputBufferCount:I

    .line 64
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->availableInputBufferCount:I

    if-ge v0, v1, :cond_0

    .line 65
    iget-object v1, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->availableInputBuffers:[Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->createInputBuffer()Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    .end local v0    # "i":I
    :cond_0
    iput-object p2, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->availableOutputBuffers:[Landroidx/media2/exoplayer/external/decoder/OutputBuffer;

    .line 68
    array-length v0, p2

    iput v0, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->availableOutputBufferCount:I

    .line 69
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget v1, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->availableOutputBufferCount:I

    if-ge v0, v1, :cond_1

    .line 70
    iget-object v1, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->availableOutputBuffers:[Landroidx/media2/exoplayer/external/decoder/OutputBuffer;

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->createOutputBuffer()Landroidx/media2/exoplayer/external/decoder/OutputBuffer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 72
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder$1;

    invoke-direct {v0, p0}, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder$1;-><init>(Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->decodeThread:Ljava/lang/Thread;

    .line 78
    iget-object v0, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->decodeThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 79
    return-void
.end method

.method static synthetic access$000(Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;

    .line 33
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->run()V

    return-void
.end method

.method private canDecodeBuffer()Z
    .locals 1

    .line 269
    .local p0, "this":Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;, "Landroidx/media2/exoplayer/external/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->queuedInputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->availableOutputBufferCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private decode()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 212
    .local p0, "this":Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;, "Landroidx/media2/exoplayer/external/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 213
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->released:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->canDecodeBuffer()Z

    move-result v1

    if-nez v1, :cond_0

    .line 214
    iget-object v1, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 213
    :cond_0
    nop

    .line 216
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->released:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 217
    monitor-exit v0

    return v2

    .line 219
    :cond_1
    iget-object v1, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->queuedInputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    .line 220
    .local v1, "inputBuffer":Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;, "TI;"
    iget-object v3, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->availableOutputBuffers:[Landroidx/media2/exoplayer/external/decoder/OutputBuffer;

    iget v4, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->availableOutputBufferCount:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iput v4, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->availableOutputBufferCount:I

    aget-object v3, v3, v4

    .line 221
    .local v3, "outputBuffer":Landroidx/media2/exoplayer/external/decoder/OutputBuffer;, "TO;"
    iget-boolean v4, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->flushed:Z

    .line 222
    .local v4, "resetDecoder":Z
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->flushed:Z

    .line 223
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 225
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Landroidx/media2/exoplayer/external/decoder/OutputBuffer;->addFlag(I)V

    goto :goto_4

    .line 228
    :cond_2
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->isDecodeOnly()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 229
    const/high16 v0, -0x80000000

    invoke-virtual {v3, v0}, Landroidx/media2/exoplayer/external/decoder/OutputBuffer;->addFlag(I)V

    goto :goto_1

    .line 228
    :cond_3
    nop

    .line 232
    :goto_1
    :try_start_1
    invoke-virtual {p0, v1, v3, v4}, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->decode(Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;Landroidx/media2/exoplayer/external/decoder/OutputBuffer;Z)Ljava/lang/Exception;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->exception:Ljava/lang/Exception;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 237
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->createUnexpectedDecodeException(Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object v6

    iput-object v6, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->exception:Ljava/lang/Exception;

    goto :goto_3

    .line 233
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->createUnexpectedDecodeException(Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object v6

    iput-object v6, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->exception:Ljava/lang/Exception;

    .line 242
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_2
    nop

    .line 243
    :goto_3
    iget-object v0, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->exception:Ljava/lang/Exception;

    if-eqz v0, :cond_4

    .line 245
    iget-object v0, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    monitor-exit v0

    .line 246
    return v2

    .line 245
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 243
    :cond_4
    nop

    .line 250
    :goto_4
    iget-object v6, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v6

    .line 251
    :try_start_3
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->flushed:Z

    if-eqz v0, :cond_5

    .line 252
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/decoder/OutputBuffer;->release()V

    goto :goto_5

    .line 253
    :cond_5
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/decoder/OutputBuffer;->isDecodeOnly()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 254
    iget v0, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->skippedOutputBufferCount:I

    add-int/2addr v0, v5

    iput v0, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->skippedOutputBufferCount:I

    .line 255
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/decoder/OutputBuffer;->release()V

    goto :goto_5

    .line 257
    :cond_6
    iget v0, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->skippedOutputBufferCount:I

    iput v0, v3, Landroidx/media2/exoplayer/external/decoder/OutputBuffer;->skippedOutputBufferCount:I

    .line 258
    iput v2, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->skippedOutputBufferCount:I

    .line 259
    iget-object v0, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->queuedOutputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 262
    :goto_5
    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->releaseInputBufferInternal(Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;)V

    .line 263
    monitor-exit v6

    .line 265
    return v5

    .line 263
    :catchall_1
    move-exception v0

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 223
    .end local v1    # "inputBuffer":Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;, "TI;"
    .end local v3    # "outputBuffer":Landroidx/media2/exoplayer/external/decoder/OutputBuffer;, "TO;"
    .end local v4    # "resetDecoder":Z
    :catchall_2
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1

    return-void
.end method

.method private maybeNotifyDecodeLoop()V
    .locals 1

    .line 190
    .local p0, "this":Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;, "Landroidx/media2/exoplayer/external/decoder/SimpleDecoder<TI;TO;TE;>;"
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->canDecodeBuffer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    goto :goto_0

    .line 190
    :cond_0
    nop

    .line 193
    :goto_0
    return-void
.end method

.method private maybeThrowException()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 178
    .local p0, "this":Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;, "Landroidx/media2/exoplayer/external/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->exception:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 181
    return-void

    .line 179
    :cond_0
    throw v0
.end method

.method private releaseInputBufferInternal(Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    .line 273
    .local p0, "this":Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;, "Landroidx/media2/exoplayer/external/decoder/SimpleDecoder<TI;TO;TE;>;"
    .local p1, "inputBuffer":Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;, "TI;"
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->clear()V

    .line 274
    iget-object v0, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->availableInputBuffers:[Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    iget v1, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->availableInputBufferCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->availableInputBufferCount:I

    aput-object p1, v0, v1

    .line 275
    return-void
.end method

.method private releaseOutputBufferInternal(Landroidx/media2/exoplayer/external/decoder/OutputBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .line 278
    .local p0, "this":Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;, "Landroidx/media2/exoplayer/external/decoder/SimpleDecoder<TI;TO;TE;>;"
    .local p1, "outputBuffer":Landroidx/media2/exoplayer/external/decoder/OutputBuffer;, "TO;"
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/decoder/OutputBuffer;->clear()V

    .line 279
    iget-object v0, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->availableOutputBuffers:[Landroidx/media2/exoplayer/external/decoder/OutputBuffer;

    iget v1, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->availableOutputBufferCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->availableOutputBufferCount:I

    aput-object p1, v0, v1

    .line 280
    return-void
.end method

.method private run()V
    .locals 2

    .line 197
    .local p0, "this":Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;, "Landroidx/media2/exoplayer/external/decoder/SimpleDecoder<TI;TO;TE;>;"
    :goto_0
    :try_start_0
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->decode()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    nop

    .line 204
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    return-void
.end method


# virtual methods
.method protected abstract createInputBuffer()Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation
.end method

.method protected abstract createOutputBuffer()Landroidx/media2/exoplayer/external/decoder/OutputBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation
.end method

.method protected abstract createUnexpectedDecodeException(Ljava/lang/Throwable;)Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")TE;"
        }
    .end annotation
.end method

.method protected abstract decode(Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;Landroidx/media2/exoplayer/external/decoder/OutputBuffer;Z)Ljava/lang/Exception;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;TO;Z)TE;"
        }
    .end annotation
.end method

.method public final dequeueInputBuffer()Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 98
    .local p0, "this":Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;, "Landroidx/media2/exoplayer/external/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 99
    :try_start_0
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->maybeThrowException()V

    .line 100
    iget-object v1, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->dequeuedInputBuffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 101
    iget v1, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->availableInputBufferCount:I

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 102
    :cond_1
    iget-object v1, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->availableInputBuffers:[Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    iget v3, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->availableInputBufferCount:I

    sub-int/2addr v3, v2

    iput v3, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->availableInputBufferCount:I

    aget-object v1, v1, v3

    :goto_1
    iput-object v1, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->dequeuedInputBuffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    .line 103
    iget-object v1, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->dequeuedInputBuffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    monitor-exit v0

    return-object v1

    .line 104
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic dequeueInputBuffer()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    .local p0, "this":Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;, "Landroidx/media2/exoplayer/external/decoder/SimpleDecoder<TI;TO;TE;>;"
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->dequeueInputBuffer()Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final dequeueOutputBuffer()Landroidx/media2/exoplayer/external/decoder/OutputBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 120
    .local p0, "this":Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;, "Landroidx/media2/exoplayer/external/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_0
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->maybeThrowException()V

    .line 122
    iget-object v1, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->queuedOutputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 125
    :cond_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->queuedOutputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/decoder/OutputBuffer;

    monitor-exit v0

    return-object v1

    .line 126
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic dequeueOutputBuffer()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    .local p0, "this":Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;, "Landroidx/media2/exoplayer/external/decoder/SimpleDecoder<TI;TO;TE;>;"
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->dequeueOutputBuffer()Landroidx/media2/exoplayer/external/decoder/OutputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final flush()V
    .locals 2

    .line 143
    .local p0, "this":Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;, "Landroidx/media2/exoplayer/external/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 144
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->flushed:Z

    .line 145
    const/4 v1, 0x0

    iput v1, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->skippedOutputBufferCount:I

    .line 146
    iget-object v1, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->dequeuedInputBuffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->dequeuedInputBuffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->releaseInputBufferInternal(Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;)V

    .line 148
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->dequeuedInputBuffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    goto :goto_0

    .line 146
    :cond_0
    nop

    .line 150
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->queuedInputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 151
    iget-object v1, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->queuedInputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->releaseInputBufferInternal(Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;)V

    goto :goto_0

    .line 150
    :cond_1
    nop

    .line 153
    :goto_1
    iget-object v1, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->queuedOutputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 154
    iget-object v1, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->queuedOutputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/decoder/OutputBuffer;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/decoder/OutputBuffer;->release()V

    goto :goto_1

    .line 156
    :cond_2
    monitor-exit v0

    .line 157
    return-void

    .line 156
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    return-void
.end method

.method public final queueInputBuffer(Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 109
    .local p0, "this":Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;, "Landroidx/media2/exoplayer/external/decoder/SimpleDecoder<TI;TO;TE;>;"
    .local p1, "inputBuffer":Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;, "TI;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    :try_start_0
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->maybeThrowException()V

    .line 111
    iget-object v1, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->dequeuedInputBuffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 112
    iget-object v1, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->queuedInputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 113
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->maybeNotifyDecodeLoop()V

    .line 114
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->dequeuedInputBuffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    .line 115
    monitor-exit v0

    .line 116
    return-void

    .line 115
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic queueInputBuffer(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    .local p0, "this":Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;, "Landroidx/media2/exoplayer/external/decoder/SimpleDecoder<TI;TO;TE;>;"
    check-cast p1, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->queueInputBuffer(Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 161
    .local p0, "this":Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;, "Landroidx/media2/exoplayer/external/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 162
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->released:Z

    .line 163
    iget-object v1, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 164
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :try_start_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->decodeThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 169
    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 170
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void

    .line 164
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected releaseOutputBuffer(Landroidx/media2/exoplayer/external/decoder/OutputBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .line 135
    .local p0, "this":Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;, "Landroidx/media2/exoplayer/external/decoder/SimpleDecoder<TI;TO;TE;>;"
    .local p1, "outputBuffer":Landroidx/media2/exoplayer/external/decoder/OutputBuffer;, "TO;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_0
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->releaseOutputBufferInternal(Landroidx/media2/exoplayer/external/decoder/OutputBuffer;)V

    .line 137
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->maybeNotifyDecodeLoop()V

    .line 138
    monitor-exit v0

    .line 139
    return-void

    .line 138
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected final setInitialInputBufferSize(I)V
    .locals 4
    .param p1, "size"    # I

    .line 90
    .local p0, "this":Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;, "Landroidx/media2/exoplayer/external/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget v0, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->availableInputBufferCount:I

    iget-object v1, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->availableInputBuffers:[Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    array-length v1, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 91
    iget-object v0, p0, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->availableInputBuffers:[Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 92
    .local v3, "inputBuffer":Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;, "TI;"
    invoke-virtual {v3, p1}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    .line 91
    .end local v3    # "inputBuffer":Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;, "TI;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 94
    :cond_1
    return-void
.end method
