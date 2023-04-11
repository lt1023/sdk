.class public final Landroidx/media2/exoplayer/external/trackselection/TrackSelectionUtil;
.super Ljava/lang/Object;
.source "TrackSelectionUtil.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/trackselection/TrackSelectionUtil$AdaptiveTrackSelectionFactory;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createTrackSelectionsForDefinitions([Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;Landroidx/media2/exoplayer/external/trackselection/TrackSelectionUtil$AdaptiveTrackSelectionFactory;)[Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .locals 9
    .param p0, "definitions"    # [Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;
    .param p1, "adaptiveTrackSelectionFactory"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelectionUtil$AdaptiveTrackSelectionFactory;

    .line 71
    array-length v0, p0

    new-array v0, v0, [Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    .line 72
    .local v0, "selections":[Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    const/4 v1, 0x0

    .line 73
    .local v1, "createdAdaptiveTrackSelection":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 74
    aget-object v3, p0, v2

    .line 75
    .local v3, "definition":Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;
    if-nez v3, :cond_0

    .line 76
    goto :goto_1

    .line 78
    :cond_0
    iget-object v4, v3, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;->tracks:[I

    array-length v4, v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    if-nez v1, :cond_1

    .line 79
    const/4 v1, 0x1

    .line 80
    invoke-interface {p1, v3}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionUtil$AdaptiveTrackSelectionFactory;->createAdaptiveTrackSelection(Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;)Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    move-result-object v4

    aput-object v4, v0, v2

    goto :goto_1

    .line 78
    :cond_1
    nop

    .line 82
    new-instance v4, Landroidx/media2/exoplayer/external/trackselection/FixedTrackSelection;

    iget-object v5, v3, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;->group:Landroidx/media2/exoplayer/external/source/TrackGroup;

    iget-object v6, v3, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;->tracks:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    iget v7, v3, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;->reason:I

    iget-object v8, v3, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;->data:Ljava/lang/Object;

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/media2/exoplayer/external/trackselection/FixedTrackSelection;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;IILjava/lang/Object;)V

    aput-object v4, v0, v2

    .line 73
    .end local v3    # "definition":Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    .end local v2    # "i":I
    :cond_2
    return-object v0
.end method

.method private static estimateBitrates([I[Landroidx/media2/exoplayer/external/Format;[I[F)V
    .locals 5
    .param p0, "bitrates"    # [I
    .param p1, "formats"    # [Landroidx/media2/exoplayer/external/Format;
    .param p2, "referenceBitrates"    # [I
    .param p3, "referenceBitrateRatios"    # [F

    .line 326
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 327
    aget v1, p0, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 328
    aget-object v1, p1, v0

    iget v1, v1, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    .line 329
    .local v1, "formatBitrate":I
    if-eq v1, v2, :cond_0

    .line 330
    nop

    .line 331
    invoke-static {v1, p2}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionUtil;->getClosestBitrateIndex(I[I)I

    move-result v2

    .line 332
    .local v2, "closestReferenceBitrateIndex":I
    aget v3, p3, v2

    int-to-float v4, v1

    mul-float v3, v3, v4

    float-to-int v3, v3

    aput v3, p0, v0

    goto :goto_1

    .line 329
    .end local v2    # "closestReferenceBitrateIndex":I
    :cond_0
    goto :goto_1

    .line 327
    .end local v1    # "formatBitrate":I
    :cond_1
    nop

    .line 326
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 337
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public static getAverageBitrate(Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;J)I
    .locals 11
    .param p0, "iterator"    # Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;
    .param p1, "maxDurationUs"    # J

    .line 129
    const-wide/16 v0, 0x0

    .line 130
    .local v0, "totalDurationUs":J
    const-wide/16 v2, 0x0

    .line 131
    .local v2, "totalLength":J
    :goto_0
    invoke-interface {p0}, Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;->next()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 132
    invoke-interface {p0}, Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;->getDataSpec()Landroidx/media2/exoplayer/external/upstream/DataSpec;

    move-result-object v4

    iget-wide v4, v4, Landroidx/media2/exoplayer/external/upstream/DataSpec;->length:J

    .line 133
    .local v4, "chunkLength":J
    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    .line 134
    goto :goto_1

    .line 136
    :cond_0
    invoke-interface {p0}, Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;->getChunkEndTimeUs()J

    move-result-wide v6

    invoke-interface {p0}, Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;->getChunkStartTimeUs()J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 137
    .local v6, "chunkDurationUs":J
    add-long v8, v0, v6

    cmp-long v10, v8, p1

    if-ltz v10, :cond_1

    .line 138
    sub-long v8, p1, v0

    mul-long v8, v8, v4

    div-long/2addr v8, v6

    add-long/2addr v2, v8

    .line 139
    move-wide v0, p1

    .line 140
    goto :goto_1

    .line 142
    :cond_1
    add-long/2addr v0, v6

    .line 143
    add-long/2addr v2, v4

    .line 144
    .end local v4    # "chunkLength":J
    .end local v6    # "chunkDurationUs":J
    goto :goto_0

    .line 131
    :cond_2
    nop

    .line 145
    :goto_1
    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_3

    .line 146
    const/4 v4, -0x1

    goto :goto_2

    .line 147
    :cond_3
    const-wide/16 v4, 0x8

    mul-long v4, v4, v2

    const-wide/32 v6, 0xf4240

    mul-long v4, v4, v6

    div-long/2addr v4, v0

    long-to-int v4, v4

    .line 145
    :goto_2
    return v4
.end method

.method private static getAverageQueueBitrate(Ljava/util/List;J)I
    .locals 3
    .param p1, "maxDurationUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/media2/exoplayer/external/source/chunk/MediaChunk;",
            ">;J)I"
        }
    .end annotation

    .line 340
    .local p0, "queue":Ljava/util/List;, "Ljava/util/List<+Landroidx/media2/exoplayer/external/source/chunk/MediaChunk;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    const/4 v0, -0x1

    return v0

    .line 343
    :cond_0
    new-instance v0, Landroidx/media2/exoplayer/external/source/chunk/MediaChunkListIterator;

    .line 344
    invoke-static {p0}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionUtil;->getSingleFormatSubQueue(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/source/chunk/MediaChunkListIterator;-><init>(Ljava/util/List;Z)V

    .line 345
    .local v0, "iterator":Landroidx/media2/exoplayer/external/source/chunk/MediaChunkListIterator;
    invoke-static {v0, p1, p2}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionUtil;->getAverageBitrate(Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;J)I

    move-result v1

    return v1
.end method

.method static getBitratesUsingFutureInfo([Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;[Landroidx/media2/exoplayer/external/Format;J[I)[I
    .locals 11
    .param p0, "iterators"    # [Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;
    .param p1, "formats"    # [Landroidx/media2/exoplayer/external/Format;
    .param p2, "maxDurationUs"    # J
    .param p4, "bitrates"    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 173
    array-length v0, p0

    .line 174
    .local v0, "trackCount":I
    array-length v1, p1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 175
    if-nez v0, :cond_1

    .line 176
    new-array v1, v2, [I

    return-object v1

    .line 178
    :cond_1
    if-nez p4, :cond_2

    .line 179
    new-array p4, v0, [I

    goto :goto_1

    .line 178
    :cond_2
    nop

    .line 181
    :goto_1
    const-wide/16 v1, 0x0

    const/4 v3, -0x1

    cmp-long v4, p2, v1

    if-nez v4, :cond_3

    .line 182
    invoke-static {p4, v3}, Ljava/util/Arrays;->fill([II)V

    .line 183
    return-object p4

    .line 186
    :cond_3
    new-array v1, v0, [I

    .line 187
    .local v1, "formatBitrates":[I
    new-array v2, v0, [F

    .line 188
    .local v2, "bitrateRatios":[F
    const/4 v4, 0x0

    .line 189
    .local v4, "needEstimateBitrate":Z
    const/4 v5, 0x0

    .line 190
    .local v5, "canEstimateBitrate":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v0, :cond_6

    .line 191
    aget-object v7, p0, v6

    invoke-static {v7, p2, p3}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionUtil;->getAverageBitrate(Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;J)I

    move-result v7

    .line 192
    .local v7, "bitrate":I
    if-eq v7, v3, :cond_5

    .line 193
    aget-object v8, p1, v6

    iget v8, v8, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    .line 194
    .local v8, "formatBitrate":I
    aput v8, v1, v6

    .line 195
    if-eq v8, v3, :cond_4

    .line 196
    int-to-float v9, v7

    int-to-float v10, v8

    div-float/2addr v9, v10

    aput v9, v2, v6

    .line 197
    const/4 v5, 0x1

    goto :goto_3

    .line 195
    :cond_4
    nop

    .line 199
    .end local v8    # "formatBitrate":I
    :goto_3
    goto :goto_4

    .line 200
    :cond_5
    const/4 v4, 0x1

    .line 201
    aput v3, v1, v6

    .line 203
    :goto_4
    aput v7, p4, v6

    .line 190
    .end local v7    # "bitrate":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 206
    .end local v6    # "i":I
    :cond_6
    if-eqz v4, :cond_7

    if-eqz v5, :cond_7

    .line 207
    invoke-static {p4, p1, v1, v2}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionUtil;->estimateBitrates([I[Landroidx/media2/exoplayer/external/Format;[I[F)V

    goto :goto_5

    .line 206
    :cond_7
    nop

    .line 209
    :goto_5
    return-object p4
.end method

.method public static getBitratesUsingPastAndFutureInfo([Landroidx/media2/exoplayer/external/Format;Ljava/util/List;J[Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;JZ[I)[I
    .locals 4
    .param p0, "formats"    # [Landroidx/media2/exoplayer/external/Format;
    .param p2, "maxPastDurationUs"    # J
    .param p4, "iterators"    # [Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;
    .param p5, "maxFutureDurationUs"    # J
    .param p7, "useFormatBitrateAsLowerBound"    # Z
    .param p8, "bitrates"    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/media2/exoplayer/external/Format;",
            "Ljava/util/List<",
            "+",
            "Landroidx/media2/exoplayer/external/source/chunk/MediaChunk;",
            ">;J[",
            "Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;",
            "JZ[I)[I"
        }
    .end annotation

    .line 280
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<+Landroidx/media2/exoplayer/external/source/chunk/MediaChunk;>;"
    invoke-static {p4, p0, p5, p6, p8}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionUtil;->getBitratesUsingFutureInfo([Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;[Landroidx/media2/exoplayer/external/Format;J[I)[I

    move-result-object p8

    .line 281
    invoke-static {p1, p0, p2, p3, p8}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionUtil;->getBitratesUsingPastInfo(Ljava/util/List;[Landroidx/media2/exoplayer/external/Format;J[I)[I

    .line 282
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p8

    if-ge v0, v1, :cond_2

    .line 283
    aget v1, p8, v0

    .line 284
    .local v1, "bitrate":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-eqz p7, :cond_0

    aget-object v3, p0, v0

    iget v3, v3, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    if-eq v3, v2, :cond_0

    aget-object v2, p0, v0

    iget v2, v2, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    if-ge v1, v2, :cond_0

    goto :goto_1

    :cond_0
    goto :goto_2

    .line 288
    :cond_1
    :goto_1
    aget-object v2, p0, v0

    iget v2, v2, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    aput v2, p8, v0

    .line 282
    .end local v1    # "bitrate":I
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 291
    .end local v0    # "i":I
    :cond_2
    return-object p8
.end method

.method static getBitratesUsingPastInfo(Ljava/util/List;[Landroidx/media2/exoplayer/external/Format;J[I)[I
    .locals 6
    .param p1, "formats"    # [Landroidx/media2/exoplayer/external/Format;
    .param p2, "maxDurationUs"    # J
    .param p4, "bitrates"    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/media2/exoplayer/external/source/chunk/MediaChunk;",
            ">;[",
            "Landroidx/media2/exoplayer/external/Format;",
            "J[I)[I"
        }
    .end annotation

    .line 232
    .local p0, "queue":Ljava/util/List;, "Ljava/util/List<+Landroidx/media2/exoplayer/external/source/chunk/MediaChunk;>;"
    const/4 v0, -0x1

    if-nez p4, :cond_0

    .line 233
    array-length v1, p1

    new-array p4, v1, [I

    .line 234
    invoke-static {p4, v0}, Ljava/util/Arrays;->fill([II)V

    goto :goto_0

    .line 232
    :cond_0
    nop

    .line 236
    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-nez v3, :cond_1

    .line 237
    return-object p4

    .line 239
    :cond_1
    invoke-static {p0, p2, p3}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionUtil;->getAverageQueueBitrate(Ljava/util/List;J)I

    move-result v1

    .line 240
    .local v1, "queueAverageBitrate":I
    if-ne v1, v0, :cond_2

    .line 241
    return-object p4

    .line 243
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/source/chunk/MediaChunk;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/source/chunk/MediaChunk;->trackFormat:Landroidx/media2/exoplayer/external/Format;

    iget v2, v2, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    .line 244
    .local v2, "queueFormatBitrate":I
    if-eq v2, v0, :cond_3

    .line 245
    int-to-float v0, v1

    int-to-float v4, v2

    div-float/2addr v0, v4

    .line 246
    .local v0, "queueBitrateRatio":F
    new-array v4, v3, [I

    const/4 v5, 0x0

    aput v2, v4, v5

    new-array v3, v3, [F

    aput v0, v3, v5

    invoke-static {p4, p1, v4, v3}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionUtil;->estimateBitrates([I[Landroidx/media2/exoplayer/external/Format;[I[F)V

    goto :goto_1

    .line 244
    .end local v0    # "queueBitrateRatio":F
    :cond_3
    nop

    .line 249
    :goto_1
    return-object p4
.end method

.method private static getClosestBitrateIndex(I[I)I
    .locals 5
    .param p0, "formatBitrate"    # I
    .param p1, "formatBitrates"    # [I

    .line 361
    const v0, 0x7fffffff

    .line 362
    .local v0, "closestDistance":I
    const/4 v1, -0x1

    .line 363
    .local v1, "closestFormat":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 364
    aget v3, p1, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 365
    aget v3, p1, v2

    sub-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 366
    .local v3, "distance":I
    if-ge v3, v0, :cond_0

    .line 367
    move v0, v3

    .line 368
    move v1, v2

    goto :goto_1

    .line 366
    :cond_0
    goto :goto_1

    .line 364
    .end local v3    # "distance":I
    :cond_1
    nop

    .line 363
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 372
    .end local v2    # "j":I
    :cond_2
    return v1
.end method

.method public static getFormatBitrates([Landroidx/media2/exoplayer/external/Format;[I)[I
    .locals 3
    .param p0, "formats"    # [Landroidx/media2/exoplayer/external/Format;
    .param p1, "bitrates"    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 302
    array-length v0, p0

    .line 303
    .local v0, "trackCount":I
    if-nez p1, :cond_0

    .line 304
    new-array p1, v0, [I

    goto :goto_0

    .line 303
    :cond_0
    nop

    .line 306
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 307
    aget-object v2, p0, v1

    iget v2, v2, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    aput v2, p1, v1

    .line 306
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 309
    .end local v1    # "i":I
    :cond_1
    return-object p1
.end method

.method private static getSingleFormatSubQueue(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/media2/exoplayer/external/source/chunk/MediaChunk;",
            ">;)",
            "Ljava/util/List<",
            "+",
            "Landroidx/media2/exoplayer/external/source/chunk/MediaChunk;",
            ">;"
        }
    .end annotation

    .line 350
    .local p0, "queue":Ljava/util/List;, "Ljava/util/List<+Landroidx/media2/exoplayer/external/source/chunk/MediaChunk;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/chunk/MediaChunk;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/chunk/MediaChunk;->trackFormat:Landroidx/media2/exoplayer/external/Format;

    .line 351
    .local v0, "queueFormat":Landroidx/media2/exoplayer/external/Format;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 352
    .local v1, "queueSize":I
    add-int/lit8 v2, v1, -0x2

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 353
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/source/chunk/MediaChunk;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/source/chunk/MediaChunk;->trackFormat:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {v3, v0}, Landroidx/media2/exoplayer/external/Format;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 354
    add-int/lit8 v3, v2, 0x1

    invoke-interface {p0, v3, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 352
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 357
    .end local v2    # "i":I
    :cond_1
    return-object p0
.end method

.method public static updateParametersWithOverride(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;ILandroidx/media2/exoplayer/external/source/TrackGroupArray;ZLandroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;)Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;
    .locals 2
    .param p0, "parameters"    # Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;
    .param p1, "rendererIndex"    # I
    .param p2, "trackGroupArray"    # Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .param p3, "isDisabled"    # Z
    .param p4, "override"    # Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 107
    nop

    .line 109
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    .line 110
    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->clearSelectionOverrides(I)Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    .line 111
    invoke-virtual {v0, p1, p3}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->setRendererDisabled(IZ)Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    .line 112
    .local v0, "builder":Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;
    if-eqz p4, :cond_0

    .line 113
    invoke-virtual {v0, p1, p2, p4}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->setSelectionOverride(ILandroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;)Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;

    goto :goto_0

    .line 112
    :cond_0
    nop

    .line 115
    :goto_0
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->build()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v1

    return-object v1
.end method
