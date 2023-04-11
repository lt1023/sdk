.class public final Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$WavFileAudioBufferSink;
.super Ljava/lang/Object;
.source "TeeAudioProcessor.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$AudioBufferSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WavFileAudioBufferSink"
.end annotation


# static fields
.field private static final FILE_SIZE_MINUS_44_OFFSET:I = 0x28

.field private static final FILE_SIZE_MINUS_8_OFFSET:I = 0x4

.field private static final HEADER_LENGTH:I = 0x2c

.field private static final TAG:Ljava/lang/String; = "WaveFileAudioBufferSink"


# instance fields
.field private bytesWritten:I

.field private channelCount:I

.field private counter:I

.field private encoding:I

.field private final outputFileNamePrefix:Ljava/lang/String;

.field private randomAccessFile:Ljava/io/RandomAccessFile;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private sampleRateHz:I

.field private final scratchBuffer:[B

.field private final scratchByteBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "outputFileNamePrefix"    # Ljava/lang/String;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$WavFileAudioBufferSink;->outputFileNamePrefix:Ljava/lang/String;

    .line 128
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$WavFileAudioBufferSink;->scratchBuffer:[B

    .line 129
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$WavFileAudioBufferSink;->scratchBuffer:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$WavFileAudioBufferSink;->scratchByteBuffer:Ljava/nio/ByteBuffer;

    .line 130
    return-void
.end method

.method private getNextOutputFileName()Ljava/lang/String;
    .locals 4

    .line 227
    const-string v0, "%s-%04d.wav"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$WavFileAudioBufferSink;->outputFileNamePrefix:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$WavFileAudioBufferSink;->counter:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$WavFileAudioBufferSink;->counter:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private maybePrepareFile()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$WavFileAudioBufferSink;->randomAccessFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 156
    return-void

    .line 158
    :cond_0
    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$WavFileAudioBufferSink;->getNextOutputFileName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .local v0, "randomAccessFile":Ljava/io/RandomAccessFile;
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$WavFileAudioBufferSink;->writeFileHeader(Ljava/io/RandomAccessFile;)V

    .line 160
    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$WavFileAudioBufferSink;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 161
    const/16 v1, 0x2c

    iput v1, p0, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$WavFileAudioBufferSink;->bytesWritten:I

    .line 162
    return-void
.end method

.method private reset()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$WavFileAudioBufferSink;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 200
    .local v0, "randomAccessFile":Ljava/io/RandomAccessFile;
    if-nez v0, :cond_0

    .line 201
    return-void

    .line 205
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$WavFileAudioBufferSink;->scratchByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 206
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$WavFileAudioBufferSink;->scratchByteBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$WavFileAudioBufferSink;->bytesWritten:I

    add-int/lit8 v2, v2, -0x8

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 207
    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 208
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$WavFileAudioBufferSink;->scratchBuffer:[B

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 210
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$WavFileAudioBufferSink;->scratchByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 211
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$WavFileAudioBufferSink;->scratchByteBuffer:Ljava/nio/ByteBuffer;

    iget v4, p0, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$WavFileAudioBufferSink;->bytesWritten:I

    add-int/lit8 v4, v4, -0x2c

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 212
    const-wide/16 v4, 0x28

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 213
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$WavFileAudioBufferSink;->scratchBuffer:[B

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    goto :goto_0

    .line 214
    :catch_0
    move-exception v1

    .line 216
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "WaveFileAudioBufferSink"

    const-string v3, "Error updating file size"

    invoke-static {v2, v3, v1}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 220
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$WavFileAudioBufferSink;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 223
    nop

    .line 224
    return-void

    .line 222
    :catchall_0
    move-exception v2

    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$WavFileAudioBufferSink;->randomAccessFile:Ljava/io/RandomAccessFile;

    throw v2
.end method

.method private writeBuffer(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$WavFileAudioBufferSink;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/RandomAccessFile;

    .line 190
    .local v0, "randomAccessFile":Ljava/io/RandomAccessFile;
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$WavFileAudioBufferSink;->scratchBuffer:[B

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 192
    .local v1, "bytesToWrite":I
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$WavFileAudioBufferSink;->scratchBuffer:[B

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 193
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$WavFileAudioBufferSink;->scratchBuffer:[B

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 194
    iget v2, p0, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$WavFileAudioBufferSink;->bytesWritten:I

    add-int/2addr v2, v1

    iput v2, p0, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$WavFileAudioBufferSink;->bytesWritten:I

    .line 195
    .end local v1    # "bytesToWrite":I
    goto :goto_0

    .line 196
    :cond_0
    return-void
.end method

.method private writeFileHeader(Ljava/io/RandomAccessFile;)V
    .locals 5
    .param p1, "randomAccessFile"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    const v0, 0x52494646

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 167
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 168
    const v1, 0x57415645

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 169
    const v1, 0x666d7420

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 172
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$WavFileAudioBufferSink;->scratchByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 173
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$WavFileAudioBufferSink;->scratchByteBuffer:Ljava/nio/ByteBuffer;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 174
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$WavFileAudioBufferSink;->scratchByteBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$WavFileAudioBufferSink;->encoding:I

    invoke-static {v2}, Landroidx/media2/exoplayer/external/audio/WavUtil;->getTypeForEncoding(I)I

    move-result v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 175
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$WavFileAudioBufferSink;->scratchByteBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$WavFileAudioBufferSink;->channelCount:I

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 176
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$WavFileAudioBufferSink;->scratchByteBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$WavFileAudioBufferSink;->sampleRateHz:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 177
    iget v1, p0, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$WavFileAudioBufferSink;->encoding:I

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$WavFileAudioBufferSink;->channelCount:I

    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/util/Util;->getPcmFrameSize(II)I

    move-result v1

    .line 178
    .local v1, "bytesPerSample":I
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$WavFileAudioBufferSink;->scratchByteBuffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$WavFileAudioBufferSink;->sampleRateHz:I

    mul-int v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 179
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$WavFileAudioBufferSink;->scratchByteBuffer:Ljava/nio/ByteBuffer;

    int-to-short v3, v1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 180
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$WavFileAudioBufferSink;->scratchByteBuffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v3, v1, 0x8

    iget v4, p0, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$WavFileAudioBufferSink;->channelCount:I

    div-int/2addr v3, v4

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 181
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$WavFileAudioBufferSink;->scratchBuffer:[B

    iget-object v3, p0, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$WavFileAudioBufferSink;->scratchByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 184
    const v2, 0x64617461

    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 185
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 186
    return-void
.end method


# virtual methods
.method public flush(III)V
    .locals 3
    .param p1, "sampleRateHz"    # I
    .param p2, "channelCount"    # I
    .param p3, "encoding"    # I

    .line 135
    :try_start_0
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$WavFileAudioBufferSink;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "WaveFileAudioBufferSink"

    const-string v2, "Error resetting"

    invoke-static {v1, v2, v0}, Landroidx/media2/exoplayer/external/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    iput p1, p0, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$WavFileAudioBufferSink;->sampleRateHz:I

    .line 140
    iput p2, p0, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$WavFileAudioBufferSink;->channelCount:I

    .line 141
    iput p3, p0, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$WavFileAudioBufferSink;->encoding:I

    .line 142
    return-void
.end method

.method public handleBuffer(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 147
    :try_start_0
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$WavFileAudioBufferSink;->maybePrepareFile()V

    .line 148
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$WavFileAudioBufferSink;->writeBuffer(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "WaveFileAudioBufferSink"

    const-string v2, "Error writing data"

    invoke-static {v1, v2, v0}, Landroidx/media2/exoplayer/external/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method
