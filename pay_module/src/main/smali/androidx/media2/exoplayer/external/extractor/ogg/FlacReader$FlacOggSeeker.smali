.class Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;
.super Ljava/lang/Object;
.source "FlacReader.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/ogg/OggSeeker;
.implements Landroidx/media2/exoplayer/external/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlacOggSeeker"
.end annotation


# static fields
.field private static final METADATA_LENGTH_OFFSET:I = 0x1

.field private static final SEEK_POINT_SIZE:I = 0x12


# instance fields
.field private firstFrameOffset:J

.field private pendingSeekGranule:J

.field private seekPointGranules:[J

.field private seekPointOffsets:[J

.field final synthetic this$0:Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader;)V
    .locals 2

    .line 143
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;->this$0:Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;->firstFrameOffset:J

    .line 145
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;->pendingSeekGranule:J

    .line 146
    return-void
.end method


# virtual methods
.method public createSeekMap()Landroidx/media2/exoplayer/external/extractor/SeekMap;
    .locals 0

    .line 193
    return-object p0
.end method

.method public getDurationUs()J
    .locals 2

    .line 220
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;->this$0:Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader;->access$000(Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader;)Landroidx/media2/exoplayer/external/util/FlacStreamInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/FlacStreamInfo;->durationUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSeekPoints(J)Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;
    .locals 18
    .param p1, "timeUs"    # J

    .line 203
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;->this$0:Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader;

    invoke-virtual {v3, v1, v2}, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader;->convertTimeToGranule(J)J

    move-result-wide v3

    .line 204
    .local v3, "granule":J
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;->seekPointGranules:[J

    const/4 v6, 0x1

    invoke-static {v5, v3, v4, v6, v6}, Landroidx/media2/exoplayer/external/util/Util;->binarySearchFloor([JJZZ)I

    move-result v5

    .line 205
    .local v5, "index":I
    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;->this$0:Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader;

    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;->seekPointGranules:[J

    aget-wide v9, v8, v5

    invoke-virtual {v7, v9, v10}, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader;->convertGranuleToTime(J)J

    move-result-wide v7

    .line 206
    .local v7, "seekTimeUs":J
    iget-wide v9, v0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;->firstFrameOffset:J

    iget-object v11, v0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;->seekPointOffsets:[J

    aget-wide v12, v11, v5

    add-long/2addr v9, v12

    .line 207
    .local v9, "seekPosition":J
    new-instance v11, Landroidx/media2/exoplayer/external/extractor/SeekPoint;

    invoke-direct {v11, v7, v8, v9, v10}, Landroidx/media2/exoplayer/external/extractor/SeekPoint;-><init>(JJ)V

    .line 208
    .local v11, "seekPoint":Landroidx/media2/exoplayer/external/extractor/SeekPoint;
    cmp-long v12, v7, v1

    if-gez v12, :cond_1

    iget-object v12, v0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;->seekPointGranules:[J

    array-length v13, v12

    sub-int/2addr v13, v6

    if-ne v5, v13, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;->this$0:Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader;

    add-int/lit8 v13, v5, 0x1

    aget-wide v13, v12, v13

    invoke-virtual {v6, v13, v14}, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader;->convertGranuleToTime(J)J

    move-result-wide v12

    .line 212
    .local v12, "secondSeekTimeUs":J
    iget-wide v14, v0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;->firstFrameOffset:J

    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;->seekPointOffsets:[J

    add-int/lit8 v16, v5, 0x1

    aget-wide v16, v6, v16

    add-long v14, v14, v16

    .line 213
    .local v14, "secondSeekPosition":J
    new-instance v6, Landroidx/media2/exoplayer/external/extractor/SeekPoint;

    invoke-direct {v6, v12, v13, v14, v15}, Landroidx/media2/exoplayer/external/extractor/SeekPoint;-><init>(JJ)V

    .line 214
    .local v6, "secondSeekPoint":Landroidx/media2/exoplayer/external/extractor/SeekPoint;
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;

    invoke-direct {v0, v11, v6}, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media2/exoplayer/external/extractor/SeekPoint;Landroidx/media2/exoplayer/external/extractor/SeekPoint;)V

    return-object v0

    .line 208
    .end local v6    # "secondSeekPoint":Landroidx/media2/exoplayer/external/extractor/SeekPoint;
    .end local v12    # "secondSeekTimeUs":J
    .end local v14    # "secondSeekPosition":J
    :cond_1
    :goto_0
    nop

    .line 209
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;

    invoke-direct {v0, v11}, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media2/exoplayer/external/extractor/SeekPoint;)V

    return-object v0
.end method

.method public isSeekable()Z
    .locals 1

    .line 198
    const/4 v0, 0x1

    return v0
.end method

.method public parseSeekTable(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V
    .locals 6
    .param p1, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 161
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 162
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v0

    .line 163
    .local v0, "length":I
    div-int/lit8 v1, v0, 0x12

    .line 164
    .local v1, "numberOfSeekPoints":I
    new-array v2, v1, [J

    iput-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;->seekPointGranules:[J

    .line 165
    new-array v2, v1, [J

    iput-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;->seekPointOffsets:[J

    .line 166
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 167
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;->seekPointGranules:[J

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLong()J

    move-result-wide v4

    aput-wide v4, v3, v2

    .line 168
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;->seekPointOffsets:[J

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLong()J

    move-result-wide v4

    aput-wide v4, v3, v2

    .line 169
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 166
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public read(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)J
    .locals 7
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 175
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;->pendingSeekGranule:J

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_0

    .line 176
    const-wide/16 v4, 0x2

    add-long/2addr v0, v4

    neg-long v0, v0

    .line 177
    .local v0, "result":J
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;->pendingSeekGranule:J

    .line 178
    return-wide v0

    .line 180
    .end local v0    # "result":J
    :cond_0
    return-wide v2
.end method

.method public setFirstFrameOffset(J)V
    .locals 0
    .param p1, "firstFrameOffset"    # J

    .line 149
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;->firstFrameOffset:J

    .line 150
    return-void
.end method

.method public startSeek(J)J
    .locals 6
    .param p1, "timeUs"    # J

    .line 185
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;->this$0:Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader;->convertTimeToGranule(J)J

    move-result-wide v0

    .line 186
    .local v0, "granule":J
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;->seekPointGranules:[J

    const/4 v3, 0x1

    invoke-static {v2, v0, v1, v3, v3}, Landroidx/media2/exoplayer/external/util/Util;->binarySearchFloor([JJZZ)I

    move-result v2

    .line 187
    .local v2, "index":I
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;->seekPointGranules:[J

    aget-wide v4, v3, v2

    iput-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;->pendingSeekGranule:J

    .line 188
    return-wide v0
.end method
