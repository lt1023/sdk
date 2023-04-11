.class public abstract Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker;
.super Ljava/lang/Object;
.source "BinarySearchSeeker.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$BinarySearchSeekMap;,
        Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;,
        Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;,
        Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekTimestampConverter;,
        Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$DefaultSeekTimestampConverter;,
        Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$OutputFrameHolder;,
        Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSeeker;
    }
.end annotation


# static fields
.field private static final MAX_SKIP_BYTES:J = 0x40000L


# instance fields
.field private final minimumSearchRange:I

.field protected final seekMap:Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$BinarySearchSeekMap;

.field protected seekOperationParams:Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected final timestampSeeker:Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSeeker;


# direct methods
.method protected constructor <init>(Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekTimestampConverter;Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSeeker;JJJJJJI)V
    .locals 17
    .param p1, "seekTimestampConverter"    # Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekTimestampConverter;
    .param p2, "timestampSeeker"    # Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSeeker;
    .param p3, "durationUs"    # J
    .param p5, "floorTimePosition"    # J
    .param p7, "ceilingTimePosition"    # J
    .param p9, "floorBytePosition"    # J
    .param p11, "ceilingBytePosition"    # J
    .param p13, "approxBytesPerFrame"    # J
    .param p15, "minimumSearchRange"    # I

    .line 155
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 156
    move-object/from16 v1, p2

    iput-object v1, v0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker;->timestampSeeker:Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSeeker;

    .line 157
    move/from16 v2, p15

    iput v2, v0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker;->minimumSearchRange:I

    .line 158
    new-instance v15, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    move-object v3, v15

    move-object/from16 v4, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    move-wide/from16 v13, p11

    move-object v1, v15

    move-wide/from16 v15, p13

    invoke-direct/range {v3 .. v16}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$BinarySearchSeekMap;-><init>(Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekTimestampConverter;JJJJJJ)V

    iput-object v1, v0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker;->seekMap:Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    .line 167
    return-void
.end method


# virtual methods
.method protected createSeekParamsForTargetTimeUs(J)Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;
    .locals 19
    .param p1, "timeUs"    # J

    .line 256
    move-object/from16 v0, p0

    new-instance v16, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;

    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker;->seekMap:Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    .line 258
    move-wide/from16 v14, p1

    invoke-virtual {v1, v14, v15}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$BinarySearchSeekMap;->timeUsToTargetTime(J)J

    move-result-wide v4

    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker;->seekMap:Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    .line 259
    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$BinarySearchSeekMap;->access$1000(Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$BinarySearchSeekMap;)J

    move-result-wide v6

    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker;->seekMap:Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    .line 260
    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$BinarySearchSeekMap;->access$1100(Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$BinarySearchSeekMap;)J

    move-result-wide v8

    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker;->seekMap:Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    .line 261
    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$BinarySearchSeekMap;->access$1200(Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$BinarySearchSeekMap;)J

    move-result-wide v10

    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker;->seekMap:Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    .line 262
    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$BinarySearchSeekMap;->access$1300(Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$BinarySearchSeekMap;)J

    move-result-wide v12

    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker;->seekMap:Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    .line 263
    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$BinarySearchSeekMap;->access$1400(Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$BinarySearchSeekMap;)J

    move-result-wide v17

    move-object/from16 v1, v16

    move-wide/from16 v2, p1

    move-wide/from16 v14, v17

    invoke-direct/range {v1 .. v15}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;-><init>(JJJJJJJ)V

    .line 256
    return-object v16
.end method

.method public final getSeekMap()Landroidx/media2/exoplayer/external/extractor/SeekMap;
    .locals 1

    .line 171
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker;->seekMap:Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    return-object v0
.end method

.method public handlePendingSeek(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$OutputFrameHolder;)I
    .locals 18
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .param p2, "seekPositionHolder"    # Landroidx/media2/exoplayer/external/extractor/PositionHolder;
    .param p3, "outputFrameHolder"    # Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$OutputFrameHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker;->timestampSeeker:Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSeeker;

    invoke-static {v3}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSeeker;

    .line 210
    .local v3, "timestampSeeker":Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSeeker;
    :goto_0
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker;->seekOperationParams:Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;

    invoke-static {v4}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;

    .line 211
    .local v4, "seekOperationParams":Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;
    invoke-static {v4}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;->access$100(Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;)J

    move-result-wide v5

    .line 212
    .local v5, "floorPosition":J
    invoke-static {v4}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;->access$200(Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;)J

    move-result-wide v7

    .line 213
    .local v7, "ceilingPosition":J
    invoke-static {v4}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;->access$300(Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;)J

    move-result-wide v9

    .line 215
    .local v9, "searchPosition":J
    sub-long v11, v7, v5

    iget v13, v0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker;->minimumSearchRange:I

    int-to-long v13, v13

    const/4 v15, 0x0

    cmp-long v16, v11, v13

    if-gtz v16, :cond_0

    .line 217
    invoke-virtual {v0, v15, v5, v6}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker;->markSeekOperationFinished(ZJ)V

    .line 218
    invoke-virtual {v0, v1, v5, v6, v2}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker;->seekToPosition(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;JLandroidx/media2/exoplayer/external/extractor/PositionHolder;)I

    move-result v11

    return v11

    .line 220
    :cond_0
    invoke-virtual {v0, v1, v9, v10}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker;->skipInputUntilPosition(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;J)Z

    move-result v11

    if-nez v11, :cond_1

    .line 221
    invoke-virtual {v0, v1, v9, v10, v2}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker;->seekToPosition(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;JLandroidx/media2/exoplayer/external/extractor/PositionHolder;)I

    move-result v11

    return v11

    .line 224
    :cond_1
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    .line 225
    nop

    .line 227
    invoke-static {v4}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;->access$400(Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;)J

    move-result-wide v11

    .line 226
    move-object/from16 v13, p3

    invoke-interface {v3, v1, v11, v12, v13}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSeeker;->searchForTimestamp(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;JLandroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$OutputFrameHolder;)Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object v11

    .line 229
    .local v11, "timestampSearchResult":Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;
    invoke-static {v11}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;->access$500(Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;)I

    move-result v12

    packed-switch v12, :pswitch_data_0

    .line 250
    move-wide/from16 v16, v5

    .end local v5    # "floorPosition":J
    .local v16, "floorPosition":J
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Invalid case"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 239
    .end local v16    # "floorPosition":J
    .restart local v5    # "floorPosition":J
    :pswitch_0
    const/4 v12, 0x1

    .line 240
    invoke-static {v11}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;->access$700(Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;)J

    move-result-wide v14

    .line 239
    invoke-virtual {v0, v12, v14, v15}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker;->markSeekOperationFinished(ZJ)V

    .line 241
    invoke-static {v11}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;->access$700(Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;)J

    move-result-wide v14

    invoke-virtual {v0, v1, v14, v15}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker;->skipInputUntilPosition(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;J)Z

    .line 242
    nop

    .line 243
    invoke-static {v11}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;->access$700(Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;)J

    move-result-wide v14

    .line 242
    invoke-virtual {v0, v1, v14, v15, v2}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker;->seekToPosition(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;JLandroidx/media2/exoplayer/external/extractor/PositionHolder;)I

    move-result v12

    return v12

    .line 231
    :pswitch_1
    nop

    .line 232
    invoke-static {v11}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;->access$600(Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;)J

    move-result-wide v14

    move-wide/from16 v16, v5

    .end local v5    # "floorPosition":J
    .restart local v16    # "floorPosition":J
    invoke-static {v11}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;->access$700(Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;)J

    move-result-wide v5

    .line 231
    invoke-static {v4, v14, v15, v5, v6}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;->access$800(Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;JJ)V

    .line 233
    goto :goto_1

    .line 235
    .end local v16    # "floorPosition":J
    .restart local v5    # "floorPosition":J
    :pswitch_2
    move-wide/from16 v16, v5

    .line 236
    .end local v5    # "floorPosition":J
    .restart local v16    # "floorPosition":J
    invoke-static {v11}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;->access$600(Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;)J

    move-result-wide v5

    invoke-static {v11}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;->access$700(Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;)J

    move-result-wide v14

    .line 235
    invoke-static {v4, v5, v6, v14, v15}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;->access$900(Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;JJ)V

    .line 237
    nop

    .line 252
    .end local v4    # "seekOperationParams":Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;
    .end local v7    # "ceilingPosition":J
    .end local v9    # "searchPosition":J
    .end local v11    # "timestampSearchResult":Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;
    .end local v16    # "floorPosition":J
    :goto_1
    goto/16 :goto_0

    .line 247
    .restart local v4    # "seekOperationParams":Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;
    .restart local v5    # "floorPosition":J
    .restart local v7    # "ceilingPosition":J
    .restart local v9    # "searchPosition":J
    .restart local v11    # "timestampSearchResult":Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;
    :pswitch_3
    move-wide/from16 v16, v5

    .end local v5    # "floorPosition":J
    .restart local v16    # "floorPosition":J
    invoke-virtual {v0, v15, v9, v10}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker;->markSeekOperationFinished(ZJ)V

    .line 248
    invoke-virtual {v0, v1, v9, v10, v2}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker;->seekToPosition(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;JLandroidx/media2/exoplayer/external/extractor/PositionHolder;)I

    move-result v5

    return v5

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isSeeking()Z
    .locals 1

    .line 188
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker;->seekOperationParams:Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final markSeekOperationFinished(ZJ)V
    .locals 1
    .param p1, "foundTargetFrame"    # Z
    .param p2, "resultPosition"    # J

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker;->seekOperationParams:Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;

    .line 268
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker;->timestampSeeker:Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSeeker;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSeeker;->onSeekFinished()V

    .line 269
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker;->onSeekOperationFinished(ZJ)V

    .line 270
    return-void
.end method

.method protected onSeekOperationFinished(ZJ)V
    .locals 0
    .param p1, "foundTargetFrame"    # Z
    .param p2, "resultPosition"    # J

    .line 274
    return-void
.end method

.method protected final seekToPosition(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;JLandroidx/media2/exoplayer/external/extractor/PositionHolder;)I
    .locals 3
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .param p2, "position"    # J
    .param p4, "seekPositionHolder"    # Landroidx/media2/exoplayer/external/extractor/PositionHolder;

    .line 288
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    .line 289
    const/4 v0, 0x0

    return v0

    .line 291
    :cond_0
    iput-wide p2, p4, Landroidx/media2/exoplayer/external/extractor/PositionHolder;->position:J

    .line 292
    const/4 v0, 0x1

    return v0
.end method

.method public final setSeekTargetUs(J)V
    .locals 3
    .param p1, "timeUs"    # J

    .line 180
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker;->seekOperationParams:Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;->access$000(Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;)J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    .line 181
    return-void

    .line 180
    :cond_0
    nop

    .line 183
    invoke-virtual {p0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker;->createSeekParamsForTargetTimeUs(J)Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker;->seekOperationParams:Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;

    .line 184
    return-void
.end method

.method protected final skipInputUntilPosition(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;J)Z
    .locals 5
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 278
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    sub-long v0, p2, v0

    .line 279
    .local v0, "bytesToSkip":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const-wide/32 v2, 0x40000

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 280
    long-to-int v2, v0

    invoke-interface {p1, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    .line 281
    const/4 v2, 0x1

    return v2

    .line 279
    :cond_0
    nop

    .line 283
    const/4 v2, 0x0

    return v2
.end method
