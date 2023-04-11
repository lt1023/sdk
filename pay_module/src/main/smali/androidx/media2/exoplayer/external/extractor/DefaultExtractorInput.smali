.class public final Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;
.super Ljava/lang/Object;
.source "DefaultExtractorInput.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/ExtractorInput;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final PEEK_MAX_FREE_SPACE:I = 0x80000

.field private static final PEEK_MIN_FREE_SPACE_AFTER_RESIZE:I = 0x10000

.field private static final SCRATCH_SPACE_SIZE:I = 0x1000


# instance fields
.field private final dataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

.field private peekBuffer:[B

.field private peekBufferLength:I

.field private peekBufferPosition:I

.field private position:J

.field private final scratchSpace:[B

.field private final streamLength:J


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/DataSource;JJ)V
    .locals 1
    .param p1, "dataSource"    # Landroidx/media2/exoplayer/external/upstream/DataSource;
    .param p2, "position"    # J
    .param p4, "length"    # J

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->dataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    .line 57
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->position:J

    .line 58
    iput-wide p4, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->streamLength:J

    .line 59
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekBuffer:[B

    .line 60
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->scratchSpace:[B

    .line 61
    return-void
.end method

.method private commitBytesRead(I)V
    .locals 4
    .param p1, "bytesRead"    # I

    .line 282
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 283
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->position:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->position:J

    goto :goto_0

    .line 282
    :cond_0
    nop

    .line 285
    :goto_0
    return-void
.end method

.method private ensureSpaceForPeek(I)V
    .locals 4
    .param p1, "length"    # I

    .line 189
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekBufferPosition:I

    add-int/2addr v0, p1

    .line 190
    .local v0, "requiredLength":I
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekBuffer:[B

    array-length v2, v1

    if-le v0, v2, :cond_0

    .line 191
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    const/high16 v2, 0x10000

    add-int/2addr v2, v0

    const/high16 v3, 0x80000

    add-int/2addr v3, v0

    invoke-static {v1, v2, v3}, Landroidx/media2/exoplayer/external/util/Util;->constrainValue(III)I

    move-result v1

    .line 193
    .local v1, "newPeekCapacity":I
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekBuffer:[B

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    iput-object v2, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekBuffer:[B

    goto :goto_0

    .line 190
    .end local v1    # "newPeekCapacity":I
    :cond_0
    nop

    .line 195
    :goto_0
    return-void
.end method

.method private readFromDataSource([BIIIZ)I
    .locals 3
    .param p1, "target"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "bytesAlreadyRead"    # I
    .param p5, "allowEndOfInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 266
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->dataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    add-int v1, p2, p4

    sub-int v2, p3, p4

    invoke-interface {v0, p1, v1, v2}, Landroidx/media2/exoplayer/external/upstream/DataSource;->read([BII)I

    move-result v0

    .line 267
    .local v0, "bytesRead":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 268
    if-nez p4, :cond_0

    if-eqz p5, :cond_0

    .line 269
    return v1

    .line 268
    :cond_0
    nop

    .line 271
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 273
    :cond_1
    add-int v1, p4, v0

    return v1

    .line 264
    .end local v0    # "bytesRead":I
    :cond_2
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method private readFromPeekBuffer([BII)I
    .locals 3
    .param p1, "target"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 218
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekBufferLength:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 219
    return v1

    .line 221
    :cond_0
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 222
    .local v0, "peekBytes":I
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekBuffer:[B

    invoke-static {v2, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->updatePeekBuffer(I)V

    .line 224
    return v0
.end method

.method private skipFromPeekBuffer(I)I
    .locals 1
    .param p1, "length"    # I

    .line 204
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekBufferLength:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 205
    .local v0, "bytesSkipped":I
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->updatePeekBuffer(I)V

    .line 206
    return v0
.end method

.method private updatePeekBuffer(I)V
    .locals 5
    .param p1, "bytesConsumed"    # I

    .line 233
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekBufferLength:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekBufferLength:I

    .line 234
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekBufferPosition:I

    .line 235
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekBuffer:[B

    .line 236
    .local v1, "newPeekBuffer":[B
    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekBufferLength:I

    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekBuffer:[B

    array-length v3, v3

    const/high16 v4, 0x80000

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    .line 237
    const/high16 v3, 0x10000

    add-int/2addr v2, v3

    new-array v1, v2, [B

    goto :goto_0

    .line 236
    :cond_0
    nop

    .line 239
    :goto_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekBuffer:[B

    iget v3, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekBufferLength:I

    invoke-static {v2, p1, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    iput-object v1, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekBuffer:[B

    .line 241
    return-void
.end method


# virtual methods
.method public advancePeekPosition(I)V
    .locals 1
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 154
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->advancePeekPosition(IZ)Z

    .line 155
    return-void
.end method

.method public advancePeekPosition(IZ)Z
    .locals 7
    .param p1, "length"    # I
    .param p2, "allowEndOfInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 138
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->ensureSpaceForPeek(I)V

    .line 139
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekBufferLength:I

    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekBufferPosition:I

    sub-int/2addr v0, v1

    .line 140
    .local v0, "bytesPeeked":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 141
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekBuffer:[B

    iget v3, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekBufferPosition:I

    move-object v1, p0

    move v4, p1

    move v5, v0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->readFromDataSource([BIIIZ)I

    move-result v0

    .line 143
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 144
    const/4 v1, 0x0

    return v1

    .line 146
    :cond_0
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekBufferPosition:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekBufferLength:I

    goto :goto_0

    .line 148
    :cond_1
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekBufferPosition:I

    add-int/2addr v1, p1

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekBufferPosition:I

    .line 149
    const/4 v1, 0x1

    return v1
.end method

.method public getLength()J
    .locals 2

    .line 174
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->streamLength:J

    return-wide v0
.end method

.method public getPeekPosition()J
    .locals 4

    .line 164
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->position:J

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekBufferPosition:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getPosition()J
    .locals 2

    .line 169
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->position:J

    return-wide v0
.end method

.method public peekFully([BII)V
    .locals 1
    .param p1, "target"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 132
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekFully([BIIZ)Z

    .line 133
    return-void
.end method

.method public peekFully([BIIZ)Z
    .locals 2
    .param p1, "target"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "allowEndOfInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 122
    invoke-virtual {p0, p3, p4}, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->advancePeekPosition(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    const/4 v0, 0x0

    return v0

    .line 125
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekBuffer:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekBufferPosition:I

    sub-int/2addr v1, p3

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    const/4 v0, 0x1

    return v0
.end method

.method public read([BII)I
    .locals 7
    .param p1, "target"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->readFromPeekBuffer([BII)I

    move-result v0

    .line 66
    .local v0, "bytesRead":I
    if-nez v0, :cond_0

    .line 67
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v6}, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->readFromDataSource([BIIIZ)I

    move-result v0

    goto :goto_0

    .line 66
    :cond_0
    nop

    .line 69
    :goto_0
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->commitBytesRead(I)V

    .line 70
    return v0
.end method

.method public readFully([BII)V
    .locals 1
    .param p1, "target"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->readFully([BIIZ)Z

    .line 88
    return-void
.end method

.method public readFully([BIIZ)Z
    .locals 7
    .param p1, "target"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "allowEndOfInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->readFromPeekBuffer([BII)I

    move-result v0

    .line 77
    .local v0, "bytesRead":I
    :goto_0
    const/4 v1, -0x1

    if-ge v0, p3, :cond_0

    if-eq v0, v1, :cond_0

    .line 78
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, v0

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->readFromDataSource([BIIIZ)I

    move-result v0

    goto :goto_0

    .line 77
    :cond_0
    nop

    .line 80
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->commitBytesRead(I)V

    .line 81
    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public resetPeekPosition()V
    .locals 1

    .line 159
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekBufferPosition:I

    .line 160
    return-void
.end method

.method public setRetryPosition(JLjava/lang/Throwable;)V
    .locals 3
    .param p1, "position"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(JTE;)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 179
    .local p3, "e":Ljava/lang/Throwable;, "TE;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 180
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->position:J

    .line 181
    throw p3
.end method

.method public skip(I)I
    .locals 7
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 92
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->skipFromPeekBuffer(I)I

    move-result v0

    .line 93
    .local v0, "bytesSkipped":I
    if-nez v0, :cond_0

    .line 94
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->scratchSpace:[B

    const/4 v3, 0x0

    array-length v1, v2

    .line 95
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->readFromDataSource([BIIIZ)I

    move-result v0

    goto :goto_0

    .line 93
    :cond_0
    nop

    .line 97
    :goto_0
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->commitBytesRead(I)V

    .line 98
    return v0
.end method

.method public skipFully(I)V
    .locals 1
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->skipFully(IZ)Z

    .line 117
    return-void
.end method

.method public skipFully(IZ)Z
    .locals 8
    .param p1, "length"    # I
    .param p2, "allowEndOfInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 104
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->skipFromPeekBuffer(I)I

    move-result v0

    .line 105
    .local v0, "bytesSkipped":I
    :goto_0
    const/4 v1, -0x1

    if-ge v0, p1, :cond_0

    if-eq v0, v1, :cond_0

    .line 106
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->scratchSpace:[B

    array-length v1, v1

    add-int/2addr v1, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 107
    .local v7, "minLength":I
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->scratchSpace:[B

    neg-int v3, v0

    .line 108
    move-object v1, p0

    move v4, v7

    move v5, v0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->readFromDataSource([BIIIZ)I

    move-result v0

    .line 109
    .end local v7    # "minLength":I
    goto :goto_0

    .line 105
    :cond_0
    nop

    .line 110
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->commitBytesRead(I)V

    .line 111
    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method
