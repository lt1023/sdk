.class Landroidx/media2/player/exoplayer/TextRenderer;
.super Landroidx/media2/exoplayer/external/BaseRenderer;
.source "TextRenderer.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;,
        Landroidx/media2/player/exoplayer/TextRenderer$TextTrackType;,
        Landroidx/media2/player/exoplayer/TextRenderer$Output;
    }
.end annotation


# static fields
.field private static final CHANNEL_UNSET:I = -0x1

.field private static final PACKET_LENGTH:I = 0x3

.field private static final READ_AHEAD_THRESHOLD_US:I = 0x1adb0

.field public static final TRACK_TYPE_CEA608:I = 0x0

.field public static final TRACK_TYPE_CEA708:I = 0x1

.field public static final TRACK_TYPE_UNSET:I = -0x1

.field public static final TRACK_TYPE_WEBVTT:I = 0x2


# instance fields
.field private final mCcData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private final mCcMap:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Long;",
            "[B>;"
        }
    .end annotation
.end field

.field private final mDtvDataBuilder:Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;

.field private final mFormatHolder:Landroidx/media2/exoplayer/external/FormatHolder;

.field private final mHandler:Landroid/os/Handler;

.field private mHasPendingInputBuffer:Z

.field private final mInputBuffer:Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;

.field private mInputStreamEnded:Z

.field private mIsTypeAndChannelAdvertised:[Z

.field private final mLine21Channels:[I

.field private final mLine21DataBuilder:Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;

.field final mOutput:Landroidx/media2/player/exoplayer/TextRenderer$Output;

.field private final mScratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private mSelectedChannel:I

.field private mSelectedType:I


# direct methods
.method constructor <init>(Landroidx/media2/player/exoplayer/TextRenderer$Output;)V
    .locals 2
    .param p1, "output"    # Landroidx/media2/player/exoplayer/TextRenderer$Output;

    .line 103
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/BaseRenderer;-><init>(I)V

    .line 104
    iput-object p1, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mOutput:Landroidx/media2/player/exoplayer/TextRenderer$Output;

    .line 105
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mHandler:Landroid/os/Handler;

    .line 106
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mCcData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 107
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mCcMap:Ljava/util/SortedMap;

    .line 108
    new-instance v0, Landroidx/media2/exoplayer/external/FormatHolder;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/FormatHolder;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mFormatHolder:Landroidx/media2/exoplayer/external/FormatHolder;

    .line 109
    new-instance v0, Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mInputBuffer:Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;

    .line 110
    new-instance v0, Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;

    invoke-direct {v0}, Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mLine21DataBuilder:Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;

    .line 111
    new-instance v0, Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;

    invoke-direct {v0}, Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mDtvDataBuilder:Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;

    .line 112
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mLine21Channels:[I

    .line 113
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mScratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 114
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mSelectedType:I

    .line 115
    iput v0, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mSelectedChannel:I

    .line 116
    return-void
.end method

.method private display(J)V
    .locals 10
    .param p1, "timeUs"    # J

    .line 307
    iget v0, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mSelectedType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    iget v0, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mSelectedChannel:I

    if-ne v0, v1, :cond_0

    goto :goto_3

    .line 311
    :cond_0
    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 312
    .local v1, "data":[B
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 313
    .local v2, "displayTimeUs":J
    :goto_0
    iget-object v4, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mCcMap:Ljava/util/SortedMap;

    invoke-interface {v4}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 314
    iget-object v4, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mCcMap:Ljava/util/SortedMap;

    invoke-interface {v4}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 315
    .local v4, "ccTimeUs":J
    cmp-long v6, p1, v4

    if-gez v6, :cond_1

    .line 316
    goto :goto_1

    .line 318
    :cond_1
    iget-object v6, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mCcMap:Ljava/util/SortedMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 319
    .local v6, "ccData":[B
    move-wide v2, v4

    .line 320
    array-length v7, v1

    .line 321
    .local v7, "offset":I
    array-length v8, v6

    add-int/2addr v8, v7

    invoke-static {v1, v8}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 322
    array-length v8, v6

    invoke-static {v6, v0, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 323
    iget-object v8, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mCcMap:Ljava/util/SortedMap;

    invoke-interface {v8}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    .end local v4    # "ccTimeUs":J
    .end local v6    # "ccData":[B
    .end local v7    # "offset":I
    goto :goto_0

    .line 313
    :cond_2
    nop

    .line 325
    :goto_1
    array-length v0, v1

    if-lez v0, :cond_3

    .line 326
    iget-object v0, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mOutput:Landroidx/media2/player/exoplayer/TextRenderer$Output;

    invoke-interface {v0, v1, v2, v3}, Landroidx/media2/player/exoplayer/TextRenderer$Output;->onCcData([BJ)V

    goto :goto_2

    .line 325
    :cond_3
    nop

    .line 328
    :goto_2
    return-void

    .line 307
    .end local v1    # "data":[B
    .end local v2    # "displayTimeUs":J
    :cond_4
    :goto_3
    nop

    .line 309
    return-void
.end method

.method private flush()V
    .locals 1

    .line 245
    iget-object v0, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mCcMap:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->clear()V

    .line 246
    iget-object v0, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mLine21DataBuilder:Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;

    invoke-virtual {v0}, Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;->clear()V

    .line 247
    iget-object v0, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mDtvDataBuilder:Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;

    invoke-virtual {v0}, Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;->clear()V

    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mInputStreamEnded:Z

    .line 249
    iput-boolean v0, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mHasPendingInputBuffer:Z

    .line 250
    return-void
.end method

.method private handleDtvPacket(Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;J)V
    .locals 7
    .param p1, "dataBuilder"    # Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;
    .param p2, "timeUs"    # J

    .line 266
    iget-object v0, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mScratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v1, p1, Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;->mData:[B

    iget v2, p1, Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;->mLength:I

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset([BI)V

    .line 267
    invoke-virtual {p1}, Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;->clear()V

    .line 268
    iget-object v0, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mScratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    .line 269
    .local v0, "size":I
    if-nez v0, :cond_0

    .line 270
    const/16 v0, 0x40

    goto :goto_0

    .line 269
    :cond_0
    nop

    .line 272
    :goto_0
    iget-object v1, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mScratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v1

    mul-int/lit8 v2, v0, 0x2

    if-eq v1, v2, :cond_1

    .line 273
    return-void

    .line 272
    :cond_1
    nop

    .line 275
    :goto_1
    iget-object v1, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mScratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_7

    .line 276
    iget-object v1, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mScratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 277
    .local v1, "value":I
    and-int/lit16 v2, v1, 0xe0

    shr-int/lit8 v2, v2, 0x5

    .line 278
    .local v2, "serviceNumber":I
    and-int/lit8 v3, v1, 0x1f

    .line 279
    .local v3, "blockSize":I
    const/4 v4, 0x7

    if-ne v2, v4, :cond_3

    .line 280
    iget-object v5, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mScratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    and-int/lit8 v2, v5, 0x3f

    .line 281
    if-ge v2, v4, :cond_2

    .line 282
    return-void

    .line 281
    :cond_2
    goto :goto_2

    .line 279
    :cond_3
    nop

    .line 285
    :goto_2
    iget-object v4, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mScratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    if-ge v4, v3, :cond_4

    .line 286
    return-void

    .line 288
    :cond_4
    if-lez v3, :cond_6

    .line 289
    const/4 v4, 0x1

    invoke-direct {p0, v4, v2}, Landroidx/media2/player/exoplayer/TextRenderer;->maybeAdvertiseChannel(II)V

    .line 290
    iget v5, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mSelectedType:I

    if-ne v5, v4, :cond_5

    iget v4, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mSelectedChannel:I

    if-ne v4, v2, :cond_5

    .line 291
    new-array v4, v3, [B

    .line 292
    .local v4, "data":[B
    iget-object v5, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mScratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 293
    iget-object v5, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mCcMap:Ljava/util/SortedMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    goto :goto_1

    .line 290
    .end local v4    # "data":[B
    :cond_5
    nop

    .line 296
    iget-object v4, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mScratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v4, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_3

    .line 288
    :cond_6
    nop

    .line 298
    .end local v1    # "value":I
    .end local v2    # "serviceNumber":I
    .end local v3    # "blockSize":I
    :goto_3
    goto :goto_1

    .line 299
    :cond_7
    return-void
.end method

.method private handleLine21Packet(Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;J)V
    .locals 4
    .param p1, "dataBuilder"    # Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;
    .param p2, "timeUs"    # J

    .line 302
    iget-object v0, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mCcMap:Ljava/util/SortedMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p1, Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;->mData:[B

    iget v3, p1, Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;->mLength:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    invoke-virtual {p1}, Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;->clear()V

    .line 304
    return-void
.end method

.method private maybeAdvertiseChannel(II)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "channel"    # I

    .line 253
    shl-int/lit8 v0, p1, 0x6

    add-int/2addr v0, p2

    .line 254
    .local v0, "typeAndChannel":I
    iget-object v1, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mIsTypeAndChannelAdvertised:[Z

    aget-boolean v2, v1, v0

    if-nez v2, :cond_0

    .line 255
    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 256
    iget-object v1, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroidx/media2/player/exoplayer/TextRenderer$1;

    invoke-direct {v2, p0, p1, p2}, Landroidx/media2/player/exoplayer/TextRenderer$1;-><init>(Landroidx/media2/player/exoplayer/TextRenderer;II)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 254
    :cond_0
    nop

    .line 263
    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized clearSelection()V
    .locals 1

    monitor-enter p0

    .line 232
    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0, v0, v0}, Landroidx/media2/player/exoplayer/TextRenderer;->select(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    monitor-exit p0

    return-void

    .line 231
    .end local p0    # "this":Landroidx/media2/player/exoplayer/TextRenderer;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isEnded()Z
    .locals 1

    .line 218
    iget-boolean v0, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mInputStreamEnded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mCcMap:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 225
    const/4 v0, 0x1

    return v0
.end method

.method protected declared-synchronized onPositionReset(JZ)V
    .locals 0
    .param p1, "positionUs"    # J
    .param p3, "joining"    # Z

    monitor-enter p0

    .line 140
    :try_start_0
    invoke-direct {p0}, Landroidx/media2/player/exoplayer/TextRenderer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    monitor-exit p0

    return-void

    .line 139
    .end local p0    # "this":Landroidx/media2/player/exoplayer/TextRenderer;
    .end local p1    # "positionUs":J
    .end local p3    # "joining":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected onStreamChanged([Landroidx/media2/exoplayer/external/Format;J)V
    .locals 1
    .param p1, "formats"    # [Landroidx/media2/exoplayer/external/Format;
    .param p2, "offsetUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 134
    invoke-super {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/BaseRenderer;->onStreamChanged([Landroidx/media2/exoplayer/external/Format;J)V

    .line 135
    const/16 v0, 0x80

    new-array v0, v0, [Z

    iput-object v0, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mIsTypeAndChannelAdvertised:[Z

    .line 136
    return-void
.end method

.method public declared-synchronized render(JJ)V
    .locals 11
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J

    monitor-enter p0

    .line 145
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/player/exoplayer/TextRenderer;->getState()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 146
    monitor-exit p0

    return-void

    .line 150
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2}, Landroidx/media2/player/exoplayer/TextRenderer;->display(J)V

    .line 153
    iget-boolean v0, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mHasPendingInputBuffer:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_4

    .line 155
    iget-object v0, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mInputBuffer:Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;->clear()V

    .line 156
    iget-object v0, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mFormatHolder:Landroidx/media2/exoplayer/external/FormatHolder;

    iget-object v4, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mInputBuffer:Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;

    invoke-virtual {p0, v0, v4, v3}, Landroidx/media2/player/exoplayer/TextRenderer;->readSource(Landroidx/media2/exoplayer/external/FormatHolder;Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;Z)I

    move-result v0

    .line 157
    .local v0, "result":I
    const/4 v4, -0x3

    if-eq v0, v4, :cond_3

    const/4 v4, -0x5

    if-ne v0, v4, :cond_1

    goto :goto_0

    .line 160
    :cond_1
    iget-object v4, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mInputBuffer:Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;->isEndOfStream()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 161
    iput-boolean v2, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mInputStreamEnded:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    monitor-exit p0

    return-void

    .line 164
    .end local p0    # "this":Landroidx/media2/player/exoplayer/TextRenderer;
    :cond_2
    :try_start_2
    iput-boolean v2, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mHasPendingInputBuffer:Z

    .line 165
    iget-object v4, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mInputBuffer:Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;->flip()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 157
    :cond_3
    :goto_0
    nop

    .line 158
    monitor-exit p0

    return-void

    .line 153
    .end local v0    # "result":I
    :cond_4
    nop

    .line 167
    :goto_1
    :try_start_3
    iget-object v0, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mInputBuffer:Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;

    iget-wide v4, v0, Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;->timeUs:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-long/2addr v4, p1

    const-wide/32 v6, 0x1adb0

    cmp-long v0, v4, v6

    if-lez v0, :cond_5

    .line 169
    monitor-exit p0

    return-void

    .line 171
    :cond_5
    :try_start_4
    iput-boolean v3, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mHasPendingInputBuffer:Z

    .line 172
    iget-object v0, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mCcData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v4, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mInputBuffer:Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    iget-object v5, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mInputBuffer:Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset([BI)V

    .line 173
    iget-object v0, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mLine21DataBuilder:Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;

    invoke-virtual {v0}, Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;->clear()V

    .line 174
    :goto_2
    iget-object v0, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mCcData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v4, 0x3

    if-lt v0, v4, :cond_14

    .line 175
    iget-object v0, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mCcData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    int-to-byte v0, v0

    .line 176
    .local v0, "ccDataHeader":B
    iget-object v5, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mCcData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    int-to-byte v5, v5

    .line 177
    .local v5, "ccData1":B
    iget-object v6, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mCcData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    int-to-byte v6, v6

    .line 179
    .local v6, "ccData2":B
    and-int/lit8 v7, v0, 0x4

    if-eqz v7, :cond_6

    const/4 v7, 0x1

    goto :goto_3

    :cond_6
    const/4 v7, 0x0

    .line 180
    .local v7, "ccValid":Z
    :goto_3
    and-int/lit8 v8, v0, 0x3

    .line 181
    .local v8, "ccType":I
    if-eqz v7, :cond_11

    .line 182
    if-ne v8, v4, :cond_8

    .line 183
    iget-object v4, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mDtvDataBuilder:Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;

    invoke-virtual {v4}, Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;->hasData()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 184
    iget-object v4, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mDtvDataBuilder:Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;

    iget-object v9, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mInputBuffer:Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;

    iget-wide v9, v9, Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;->timeUs:J

    invoke-direct {p0, v4, v9, v10}, Landroidx/media2/player/exoplayer/TextRenderer;->handleDtvPacket(Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;J)V

    goto :goto_4

    .line 183
    :cond_7
    nop

    .line 186
    :goto_4
    iget-object v4, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mDtvDataBuilder:Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;

    invoke-virtual {v4, v5, v6}, Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;->append(BB)V

    goto/16 :goto_a

    .line 187
    :cond_8
    iget-object v4, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mDtvDataBuilder:Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;

    iget v4, v4, Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;->mLength:I

    if-lez v4, :cond_9

    if-ne v8, v1, :cond_9

    .line 188
    iget-object v4, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mDtvDataBuilder:Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;

    invoke-virtual {v4, v5, v6}, Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;->append(BB)V

    goto/16 :goto_a

    .line 187
    :cond_9
    nop

    .line 189
    if-eqz v8, :cond_b

    if-ne v8, v2, :cond_a

    goto :goto_5

    :cond_a
    goto :goto_a

    .line 190
    :cond_b
    :goto_5
    and-int/lit8 v4, v5, 0x7f

    int-to-byte v4, v4

    .line 191
    .end local v5    # "ccData1":B
    .local v4, "ccData1":B
    and-int/lit8 v5, v6, 0x7f

    int-to-byte v5, v5

    .line 192
    .end local v6    # "ccData2":B
    .local v5, "ccData2":B
    const/16 v6, 0x10

    if-ge v4, v6, :cond_c

    if-ge v5, v6, :cond_c

    .line 194
    goto :goto_2

    .line 192
    :cond_c
    nop

    .line 196
    if-lt v4, v6, :cond_f

    const/16 v6, 0x1f

    if-gt v4, v6, :cond_f

    .line 197
    const/16 v6, 0x18

    if-lt v4, v6, :cond_d

    const/4 v6, 0x1

    goto :goto_6

    :cond_d
    const/4 v6, 0x0

    :goto_6
    if-eqz v0, :cond_e

    const/4 v9, 0x2

    goto :goto_7

    :cond_e
    const/4 v9, 0x0

    :goto_7
    add-int/2addr v6, v9

    .line 198
    .local v6, "channel":I
    iget-object v9, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mLine21Channels:[I

    aput v6, v9, v8

    .line 199
    invoke-direct {p0, v3, v6}, Landroidx/media2/player/exoplayer/TextRenderer;->maybeAdvertiseChannel(II)V

    goto :goto_8

    .line 196
    .end local v6    # "channel":I
    :cond_f
    nop

    .line 201
    :goto_8
    iget v6, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mSelectedType:I

    if-nez v6, :cond_10

    iget v6, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mSelectedChannel:I

    iget-object v9, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mLine21Channels:[I

    aget v9, v9, v8

    if-ne v6, v9, :cond_10

    .line 203
    iget-object v6, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mLine21DataBuilder:Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;

    int-to-byte v9, v8

    invoke-virtual {v6, v9, v4, v5}, Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;->append(BBB)V

    goto :goto_a

    .line 201
    :cond_10
    goto :goto_a

    .line 206
    .end local v4    # "ccData1":B
    .local v5, "ccData1":B
    .local v6, "ccData2":B
    :cond_11
    if-eq v8, v4, :cond_13

    if-ne v8, v1, :cond_12

    goto :goto_9

    :cond_12
    goto :goto_a

    :cond_13
    :goto_9
    iget-object v4, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mDtvDataBuilder:Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;

    invoke-virtual {v4}, Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;->hasData()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 207
    iget-object v4, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mDtvDataBuilder:Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;

    iget-object v9, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mInputBuffer:Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;

    iget-wide v9, v9, Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;->timeUs:J

    invoke-direct {p0, v4, v9, v10}, Landroidx/media2/player/exoplayer/TextRenderer;->handleDtvPacket(Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;J)V

    .line 209
    .end local v0    # "ccDataHeader":B
    .end local v5    # "ccData1":B
    .end local v6    # "ccData2":B
    .end local v7    # "ccValid":Z
    .end local v8    # "ccType":I
    :goto_a
    goto/16 :goto_2

    .line 211
    :cond_14
    iget v0, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mSelectedType:I

    if-nez v0, :cond_15

    iget-object v0, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mLine21DataBuilder:Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;

    invoke-virtual {v0}, Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;->hasData()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 212
    iget-object v0, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mLine21DataBuilder:Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;

    iget-object v1, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mInputBuffer:Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;

    iget-wide v1, v1, Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;->timeUs:J

    invoke-direct {p0, v0, v1, v2}, Landroidx/media2/player/exoplayer/TextRenderer;->handleLine21Packet(Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_b

    .line 211
    :cond_15
    nop

    .line 214
    :goto_b
    monitor-exit p0

    return-void

    .line 144
    .end local p1    # "positionUs":J
    .end local p3    # "elapsedRealtimeUs":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public declared-synchronized select(II)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "channel"    # I

    monitor-enter p0

    .line 237
    :try_start_0
    iput p1, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mSelectedType:I

    .line 238
    iput p2, p0, Landroidx/media2/player/exoplayer/TextRenderer;->mSelectedChannel:I

    .line 239
    invoke-direct {p0}, Landroidx/media2/player/exoplayer/TextRenderer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    monitor-exit p0

    return-void

    .line 236
    .end local p0    # "this":Landroidx/media2/player/exoplayer/TextRenderer;
    .end local p1    # "type":I
    .end local p2    # "channel":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public supportsFormat(Landroidx/media2/exoplayer/external/Format;)I
    .locals 2
    .param p1, "format"    # Landroidx/media2/exoplayer/external/Format;

    .line 122
    iget-object v0, p1, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    .line 123
    .local v0, "mimeType":Ljava/lang/String;
    const-string v1, "application/cea-608"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "application/cea-708"

    .line 124
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "text/vtt"

    .line 125
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 124
    :cond_1
    goto :goto_0

    .line 123
    :cond_2
    nop

    .line 126
    :goto_0
    const/4 v1, 0x4

    return v1
.end method
