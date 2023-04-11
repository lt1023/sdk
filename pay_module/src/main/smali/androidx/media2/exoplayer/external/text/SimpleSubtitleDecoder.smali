.class public abstract Landroidx/media2/exoplayer/external/text/SimpleSubtitleDecoder;
.super Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;
.source "SimpleSubtitleDecoder.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/text/SubtitleDecoder;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media2/exoplayer/external/decoder/SimpleDecoder<",
        "Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;",
        "Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;",
        "Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;",
        ">;",
        "Landroidx/media2/exoplayer/external/text/SubtitleDecoder;"
    }
.end annotation


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 41
    const/4 v0, 0x2

    new-array v1, v0, [Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;

    new-array v0, v0, [Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;

    invoke-direct {p0, v1, v0}, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;-><init>([Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;[Landroidx/media2/exoplayer/external/decoder/OutputBuffer;)V

    .line 42
    iput-object p1, p0, Landroidx/media2/exoplayer/external/text/SimpleSubtitleDecoder;->name:Ljava/lang/String;

    .line 43
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/text/SimpleSubtitleDecoder;->setInitialInputBufferSize(I)V

    .line 44
    return-void
.end method


# virtual methods
.method protected bridge synthetic createInputBuffer()Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;
    .locals 1

    .line 30
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/text/SimpleSubtitleDecoder;->createInputBuffer()Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected final createInputBuffer()Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;
    .locals 1

    .line 58
    new-instance v0, Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic createOutputBuffer()Landroidx/media2/exoplayer/external/decoder/OutputBuffer;
    .locals 1

    .line 30
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/text/SimpleSubtitleDecoder;->createOutputBuffer()Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected final createOutputBuffer()Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;
    .locals 1

    .line 63
    new-instance v0, Landroidx/media2/exoplayer/external/text/SimpleSubtitleOutputBuffer;

    invoke-direct {v0, p0}, Landroidx/media2/exoplayer/external/text/SimpleSubtitleOutputBuffer;-><init>(Landroidx/media2/exoplayer/external/text/SimpleSubtitleDecoder;)V

    return-object v0
.end method

.method protected final createUnexpectedDecodeException(Ljava/lang/Throwable;)Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;
    .locals 2
    .param p1, "error"    # Ljava/lang/Throwable;

    .line 68
    new-instance v0, Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;

    const-string v1, "Unexpected decode error"

    invoke-direct {v0, v1, p1}, Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method protected bridge synthetic createUnexpectedDecodeException(Ljava/lang/Throwable;)Ljava/lang/Exception;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/text/SimpleSubtitleDecoder;->createUnexpectedDecodeException(Ljava/lang/Throwable;)Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;

    move-result-object p1

    return-object p1
.end method

.method protected abstract decode([BIZ)Landroidx/media2/exoplayer/external/text/Subtitle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;
        }
    .end annotation
.end method

.method protected final decode(Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;Z)Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;
    .locals 9
    .param p1, "inputBuffer"    # Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;
    .param p2, "outputBuffer"    # Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;
    .param p3, "reset"    # Z

    .line 81
    :try_start_0
    iget-object v0, p1, Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 82
    .local v0, "inputData":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {p0, v1, v2, p3}, Landroidx/media2/exoplayer/external/text/SimpleSubtitleDecoder;->decode([BIZ)Landroidx/media2/exoplayer/external/text/Subtitle;

    move-result-object v6

    .line 83
    .local v6, "subtitle":Landroidx/media2/exoplayer/external/text/Subtitle;
    iget-wide v4, p1, Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;->timeUs:J

    iget-wide v7, p1, Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;->subsampleOffsetUs:J

    move-object v3, p2

    invoke-virtual/range {v3 .. v8}, Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;->setContent(JLandroidx/media2/exoplayer/external/text/Subtitle;J)V

    .line 85
    const/high16 v1, -0x80000000

    invoke-virtual {p2, v1}, Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;->clearFlag(I)V
    :try_end_0
    .catch Landroidx/media2/exoplayer/external/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    const/4 v1, 0x0

    return-object v1

    .line 87
    .end local v0    # "inputData":Ljava/nio/ByteBuffer;
    .end local v6    # "subtitle":Landroidx/media2/exoplayer/external/text/Subtitle;
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;
    return-object v0
.end method

.method protected bridge synthetic decode(Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;Landroidx/media2/exoplayer/external/decoder/OutputBuffer;Z)Ljava/lang/Exception;
    .locals 0

    .line 30
    check-cast p1, Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;

    check-cast p2, Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/text/SimpleSubtitleDecoder;->decode(Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;Z)Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;

    move-result-object p1

    return-object p1
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/SimpleSubtitleDecoder;->name:Ljava/lang/String;

    return-object v0
.end method

.method protected bridge synthetic releaseOutputBuffer(Landroidx/media2/exoplayer/external/decoder/OutputBuffer;)V
    .locals 0

    .line 30
    check-cast p1, Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;

    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/text/SimpleSubtitleDecoder;->releaseOutputBuffer(Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;)V

    return-void
.end method

.method protected final releaseOutputBuffer(Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;)V
    .locals 0
    .param p1, "buffer"    # Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;

    .line 73
    invoke-super {p0, p1}, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->releaseOutputBuffer(Landroidx/media2/exoplayer/external/decoder/OutputBuffer;)V

    .line 74
    return-void
.end method

.method public setPositionUs(J)V
    .locals 0
    .param p1, "timeUs"    # J

    .line 54
    return-void
.end method
