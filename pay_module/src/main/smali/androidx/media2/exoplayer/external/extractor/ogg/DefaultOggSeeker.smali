.class final Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;
.super Ljava/lang/Object;
.source "DefaultOggSeeker.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/ogg/OggSeeker;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker$OggSeekMap;
    }
.end annotation


# static fields
.field private static final DEFAULT_OFFSET:I = 0x7530

.field public static final MATCH_BYTE_RANGE:I = 0x186a0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final MATCH_RANGE:I = 0x11940
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final STATE_IDLE:I = 0x3

.field private static final STATE_READ_LAST_PAGE:I = 0x1

.field private static final STATE_SEEK:I = 0x2

.field private static final STATE_SEEK_TO_END:I


# instance fields
.field private end:J

.field private endGranule:J

.field private final endPosition:J

.field private final pageHeader:Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;

.field private positionBeforeSeekToEnd:J

.field private start:J

.field private startGranule:J

.field private final startPosition:J

.field private state:I

.field private final streamReader:Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;

.field private targetGranule:J

.field private totalGranules:J


# direct methods
.method public constructor <init>(JJLandroidx/media2/exoplayer/external/extractor/ogg/StreamReader;JJZ)V
    .locals 4
    .param p1, "startPosition"    # J
    .param p3, "endPosition"    # J
    .param p5, "streamReader"    # Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;
    .param p6, "firstPayloadPageSize"    # J
    .param p8, "firstPayloadPageGranulePosition"    # J
    .param p10, "firstPayloadPageIsLastPage"    # Z

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;

    .line 80
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-ltz v3, :cond_0

    cmp-long v1, p3, p1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 81
    iput-object p5, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->streamReader:Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;

    .line 82
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->startPosition:J

    .line 83
    iput-wide p3, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->endPosition:J

    .line 84
    sub-long v1, p3, p1

    cmp-long v3, p6, v1

    if-eqz v3, :cond_2

    if-eqz p10, :cond_1

    goto :goto_1

    .line 88
    :cond_1
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->state:I

    goto :goto_2

    .line 84
    :cond_2
    :goto_1
    nop

    .line 85
    iput-wide p8, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    .line 86
    const/4 v0, 0x3

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->state:I

    .line 90
    :goto_2
    return-void
.end method

.method static synthetic access$100(Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;

    .line 36
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->startPosition:J

    return-wide v0
.end method

.method static synthetic access$200(Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;)Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;

    .line 36
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->streamReader:Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;

    return-object v0
.end method

.method static synthetic access$300(Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;JJJ)J
    .locals 2
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # J

    .line 36
    invoke-direct/range {p0 .. p6}, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->getEstimatedPosition(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;

    .line 36
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    return-wide v0
.end method

.method private getEstimatedPosition(JJJ)J
    .locals 6
    .param p1, "position"    # J
    .param p3, "granuleDistance"    # J
    .param p5, "offset"    # J

    .line 218
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->endPosition:J

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->startPosition:J

    sub-long/2addr v0, v2

    mul-long v0, v0, p3

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    div-long/2addr v0, v4

    sub-long/2addr v0, p5

    add-long/2addr p1, v0

    .line 219
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 220
    iget-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->startPosition:J

    goto :goto_0

    .line 219
    :cond_0
    nop

    .line 222
    :goto_0
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->endPosition:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 223
    const-wide/16 v2, 0x1

    sub-long p1, v0, v2

    goto :goto_1

    .line 222
    :cond_1
    nop

    .line 225
    :goto_1
    return-wide p1
.end method


# virtual methods
.method public bridge synthetic createSeekMap()Landroidx/media2/exoplayer/external/extractor/SeekMap;
    .locals 1

    .line 35
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->createSeekMap()Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker$OggSeekMap;

    move-result-object v0

    return-object v0
.end method

.method public createSeekMap()Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker$OggSeekMap;
    .locals 6

    .line 140
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker$OggSeekMap;

    invoke-direct {v0, p0, v2}, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker$OggSeekMap;-><init>(Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker$1;)V

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public getNextSeekPosition(JLandroidx/media2/exoplayer/external/extractor/ExtractorInput;)J
    .locals 20
    .param p1, "targetGranule"    # J
    .param p3, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 168
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    iget-wide v2, v0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->start:J

    iget-wide v4, v0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->end:J

    const-wide/16 v6, 0x2

    cmp-long v8, v2, v4

    if-nez v8, :cond_0

    .line 169
    iget-wide v2, v0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->startGranule:J

    add-long/2addr v2, v6

    neg-long v2, v2

    return-wide v2

    .line 172
    :cond_0
    invoke-interface/range {p3 .. p3}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    .line 173
    .local v2, "initialPosition":J
    iget-wide v4, v0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->end:J

    invoke-virtual {v0, v1, v4, v5}, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->skipToNextPage(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;J)Z

    move-result v4

    if-nez v4, :cond_2

    .line 174
    iget-wide v4, v0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->start:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    .line 177
    return-wide v4

    .line 175
    :cond_1
    new-instance v4, Ljava/io/IOException;

    const-string v5, "No ogg page can be found."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 180
    :cond_2
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->populate(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Z)Z

    .line 181
    invoke-interface/range {p3 .. p3}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    .line 183
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;

    iget-wide v4, v4, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->granulePosition:J

    sub-long v4, p1, v4

    .line 184
    .local v4, "granuleDistance":J
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;

    iget v8, v8, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->headerSize:I

    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;

    iget v9, v9, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->bodySize:I

    add-int/2addr v8, v9

    .line 185
    .local v8, "pageSize":I
    const-wide/16 v9, 0x0

    cmp-long v11, v4, v9

    if-ltz v11, :cond_4

    const-wide/32 v11, 0x11940

    cmp-long v13, v4, v11

    if-lez v13, :cond_3

    goto :goto_0

    .line 213
    :cond_3
    invoke-interface {v1, v8}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    .line 214
    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;

    iget-wide v9, v9, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->granulePosition:J

    add-long/2addr v9, v6

    neg-long v6, v9

    return-wide v6

    .line 185
    :cond_4
    :goto_0
    nop

    .line 186
    const-wide/32 v11, 0x186a0

    cmp-long v13, v4, v9

    if-gez v13, :cond_5

    .line 187
    iput-wide v2, v0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->end:J

    .line 188
    iget-object v13, v0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;

    iget-wide v13, v13, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->granulePosition:J

    iput-wide v13, v0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->endGranule:J

    goto :goto_1

    .line 190
    :cond_5
    invoke-interface/range {p3 .. p3}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v13

    int-to-long v9, v8

    add-long/2addr v13, v9

    iput-wide v13, v0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->start:J

    .line 191
    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;

    iget-wide v9, v9, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->granulePosition:J

    iput-wide v9, v0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->startGranule:J

    .line 192
    iget-wide v9, v0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->end:J

    iget-wide v13, v0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->start:J

    sub-long/2addr v9, v13

    int-to-long v13, v8

    add-long/2addr v9, v13

    cmp-long v13, v9, v11

    if-gez v13, :cond_6

    .line 193
    invoke-interface {v1, v8}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    .line 194
    iget-wide v9, v0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->startGranule:J

    add-long/2addr v9, v6

    neg-long v6, v9

    return-wide v6

    .line 192
    :cond_6
    nop

    .line 198
    :goto_1
    iget-wide v9, v0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->end:J

    iget-wide v13, v0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->start:J

    sub-long/2addr v9, v13

    cmp-long v16, v9, v11

    if-gez v16, :cond_7

    .line 199
    iput-wide v13, v0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->end:J

    .line 200
    return-wide v13

    .line 203
    :cond_7
    int-to-long v9, v8

    const-wide/16 v13, 0x0

    cmp-long v15, v4, v13

    if-gtz v15, :cond_8

    goto :goto_2

    :cond_8
    const-wide/16 v6, 0x1

    :goto_2
    mul-long v9, v9, v6

    .line 204
    .local v9, "offset":J
    invoke-interface/range {p3 .. p3}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    sub-long/2addr v6, v9

    iget-wide v13, v0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->end:J

    iget-wide v11, v0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->start:J

    sub-long/2addr v13, v11

    mul-long v13, v13, v4

    move-wide/from16 v16, v2

    .end local v2    # "initialPosition":J
    .local v16, "initialPosition":J
    iget-wide v1, v0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->endGranule:J

    move-wide/from16 v18, v4

    .end local v4    # "granuleDistance":J
    .local v18, "granuleDistance":J
    iget-wide v3, v0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->startGranule:J

    sub-long/2addr v1, v3

    div-long/2addr v13, v1

    add-long/2addr v6, v13

    .line 207
    .local v6, "nextPosition":J
    invoke-static {v6, v7, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 208
    .end local v6    # "nextPosition":J
    .local v1, "nextPosition":J
    iget-wide v3, v0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->end:J

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 209
    return-wide v1
.end method

.method public read(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)J
    .locals 12
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 94
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->state:I

    const/4 v1, 0x3

    packed-switch v0, :pswitch_data_0

    .line 125
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 96
    :pswitch_0
    const-wide/16 v0, -0x1

    return-wide v0

    .line 112
    :pswitch_1
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->targetGranule:J

    const-wide/16 v4, 0x2

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-nez v0, :cond_0

    .line 113
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p0, v2, v3, p1}, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->getNextSeekPosition(JLandroidx/media2/exoplayer/external/extractor/ExtractorInput;)J

    move-result-wide v2

    .line 116
    .local v2, "position":J
    cmp-long v0, v2, v6

    if-ltz v0, :cond_1

    .line 117
    return-wide v2

    .line 119
    :cond_1
    iget-wide v8, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->targetGranule:J

    add-long v6, v2, v4

    neg-long v10, v6

    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->skipToPageOfGranule(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;JJ)J

    move-result-wide v2

    .line 121
    .local v2, "currentGranule":J
    :goto_0
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->state:I

    .line 122
    add-long/2addr v4, v2

    neg-long v0, v4

    return-wide v0

    .line 94
    .end local v2    # "currentGranule":J
    :pswitch_2
    goto :goto_1

    .line 98
    :pswitch_3
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->positionBeforeSeekToEnd:J

    .line 99
    const/4 v0, 0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->state:I

    .line 101
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->endPosition:J

    const-wide/32 v4, 0xff1b

    sub-long/2addr v2, v4

    .line 102
    .local v2, "lastPageSearchPosition":J
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->positionBeforeSeekToEnd:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 103
    return-wide v2

    .line 102
    :cond_2
    nop

    .line 107
    .end local v2    # "lastPageSearchPosition":J
    :goto_1
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->readGranuleOfLastPage(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    .line 108
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->state:I

    .line 109
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->positionBeforeSeekToEnd:J

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method readGranuleOfLastPage(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)J
    .locals 5
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 319
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->skipToNextPage(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)V

    .line 320
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->reset()V

    .line 321
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;

    iget v0, v0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->type:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->endPosition:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 322
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->populate(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Z)Z

    .line 323
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;

    iget v0, v0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->headerSize:I

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;

    iget v1, v1, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->bodySize:I

    add-int/2addr v0, v1

    invoke-interface {p1, v0}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_0

    .line 321
    :cond_0
    nop

    .line 325
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->granulePosition:J

    return-wide v0
.end method

.method public resetSeeking()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 145
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->startPosition:J

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->start:J

    .line 146
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->endPosition:J

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->end:J

    .line 147
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->startGranule:J

    .line 148
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->endGranule:J

    .line 149
    return-void
.end method

.method skipToNextPage(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)V
    .locals 2
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 262
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->endPosition:J

    invoke-virtual {p0, p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->skipToNextPage(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    return-void

    .line 264
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method skipToNextPage(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;J)Z
    .locals 6
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .param p2, "limit"    # J
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 280
    const-wide/16 v0, 0x3

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->endPosition:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    .line 281
    const/16 v0, 0x800

    new-array v0, v0, [B

    .line 282
    .local v0, "buffer":[B
    array-length v1, v0

    .line 284
    .local v1, "peekLength":I
    :goto_0
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    int-to-long v4, v1

    add-long/2addr v2, v4

    const/4 v4, 0x0

    cmp-long v5, v2, p2

    if-lez v5, :cond_1

    .line 286
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    sub-long v2, p2, v2

    long-to-int v1, v2

    .line 287
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 289
    return v4

    .line 287
    :cond_0
    goto :goto_1

    .line 284
    :cond_1
    nop

    .line 292
    :goto_1
    invoke-interface {p1, v0, v4, v1, v4}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BIIZ)Z

    .line 293
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    add-int/lit8 v3, v1, -0x3

    if-ge v2, v3, :cond_3

    .line 294
    aget-byte v3, v0, v2

    const/16 v4, 0x4f

    if-ne v3, v4, :cond_2

    add-int/lit8 v3, v2, 0x1

    aget-byte v3, v0, v3

    const/16 v4, 0x67

    if-ne v3, v4, :cond_2

    add-int/lit8 v3, v2, 0x2

    aget-byte v3, v0, v3

    if-ne v3, v4, :cond_2

    add-int/lit8 v3, v2, 0x3

    aget-byte v3, v0, v3

    const/16 v4, 0x53

    if-ne v3, v4, :cond_2

    .line 299
    invoke-interface {p1, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    .line 300
    const/4 v3, 0x1

    return v3

    .line 294
    :cond_2
    nop

    .line 293
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 304
    .end local v2    # "i":I
    :cond_3
    add-int/lit8 v2, v1, -0x3

    invoke-interface {p1, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_0
.end method

.method skipToPageOfGranule(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;JJ)J
    .locals 4
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .param p2, "targetGranule"    # J
    .param p4, "currentGranule"    # J
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 344
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->populate(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Z)Z

    .line 345
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;

    iget-wide v2, v0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->granulePosition:J

    cmp-long v0, v2, p2

    if-gez v0, :cond_0

    .line 346
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;

    iget v0, v0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->headerSize:I

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;

    iget v2, v2, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->bodySize:I

    add-int/2addr v0, v2

    invoke-interface {p1, v0}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    .line 348
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;

    iget-wide p4, v0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->granulePosition:J

    .line 350
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;

    invoke-virtual {v0, p1, v1}, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->populate(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Z)Z

    goto :goto_0

    .line 352
    :cond_0
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    .line 353
    return-wide p4
.end method

.method public startSeek(J)J
    .locals 4
    .param p1, "timeUs"    # J

    .line 131
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->state:I

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 132
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->streamReader:Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->convertTimeToGranule(J)J

    move-result-wide v2

    :goto_2
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->targetGranule:J

    .line 133
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->state:I

    .line 134
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->resetSeeking()V

    .line 135
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->targetGranule:J

    return-wide v0
.end method
