.class public Landroidx/media2/exoplayer/external/decoder/SimpleOutputBuffer;
.super Landroidx/media2/exoplayer/external/decoder/OutputBuffer;
.source "SimpleOutputBuffer.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field public data:Ljava/nio/ByteBuffer;

.field private final owner:Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/decoder/SimpleDecoder<",
            "*",
            "Landroidx/media2/exoplayer/external/decoder/SimpleOutputBuffer;",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/decoder/SimpleDecoder<",
            "*",
            "Landroidx/media2/exoplayer/external/decoder/SimpleOutputBuffer;",
            "*>;)V"
        }
    .end annotation

    .line 36
    .local p1, "owner":Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;, "Landroidx/media2/exoplayer/external/decoder/SimpleDecoder<*Landroidx/media2/exoplayer/external/decoder/SimpleOutputBuffer;*>;"
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/decoder/OutputBuffer;-><init>()V

    .line 37
    iput-object p1, p0, Landroidx/media2/exoplayer/external/decoder/SimpleOutputBuffer;->owner:Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;

    .line 38
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 59
    invoke-super {p0}, Landroidx/media2/exoplayer/external/decoder/OutputBuffer;->clear()V

    .line 60
    iget-object v0, p0, Landroidx/media2/exoplayer/external/decoder/SimpleOutputBuffer;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0

    .line 60
    :cond_0
    nop

    .line 63
    :goto_0
    return-void
.end method

.method public init(JI)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "timeUs"    # J
    .param p3, "size"    # I

    .line 48
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/decoder/SimpleOutputBuffer;->timeUs:J

    .line 49
    iget-object v0, p0, Landroidx/media2/exoplayer/external/decoder/SimpleOutputBuffer;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, p3, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    .line 50
    :cond_1
    :goto_0
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/decoder/SimpleOutputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 52
    :goto_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/decoder/SimpleOutputBuffer;->data:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 53
    iget-object v0, p0, Landroidx/media2/exoplayer/external/decoder/SimpleOutputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 54
    iget-object v0, p0, Landroidx/media2/exoplayer/external/decoder/SimpleOutputBuffer;->data:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public release()V
    .locals 1

    .line 67
    iget-object v0, p0, Landroidx/media2/exoplayer/external/decoder/SimpleOutputBuffer;->owner:Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;

    invoke-virtual {v0, p0}, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->releaseOutputBuffer(Landroidx/media2/exoplayer/external/decoder/OutputBuffer;)V

    .line 68
    return-void
.end method
