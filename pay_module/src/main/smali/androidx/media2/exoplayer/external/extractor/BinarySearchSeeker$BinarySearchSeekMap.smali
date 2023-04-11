.class public Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$BinarySearchSeekMap;
.super Ljava/lang/Object;
.source "BinarySearchSeeker.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BinarySearchSeekMap"
.end annotation


# instance fields
.field private final approxBytesPerFrame:J

.field private final ceilingBytePosition:J

.field private final ceilingTimePosition:J

.field private final durationUs:J

.field private final floorBytePosition:J

.field private final floorTimePosition:J

.field private final seekTimestampConverter:Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekTimestampConverter;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekTimestampConverter;JJJJJJ)V
    .locals 0
    .param p1, "seekTimestampConverter"    # Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekTimestampConverter;
    .param p2, "durationUs"    # J
    .param p4, "floorTimePosition"    # J
    .param p6, "ceilingTimePosition"    # J
    .param p8, "floorBytePosition"    # J
    .param p10, "ceilingBytePosition"    # J
    .param p12, "approxBytesPerFrame"    # J

    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 538
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$BinarySearchSeekMap;->seekTimestampConverter:Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekTimestampConverter;

    .line 539
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$BinarySearchSeekMap;->durationUs:J

    .line 540
    iput-wide p4, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$BinarySearchSeekMap;->floorTimePosition:J

    .line 541
    iput-wide p6, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$BinarySearchSeekMap;->ceilingTimePosition:J

    .line 542
    iput-wide p8, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$BinarySearchSeekMap;->floorBytePosition:J

    .line 543
    iput-wide p10, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$BinarySearchSeekMap;->ceilingBytePosition:J

    .line 544
    iput-wide p12, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$BinarySearchSeekMap;->approxBytesPerFrame:J

    .line 545
    return-void
.end method

.method static synthetic access$1000(Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$BinarySearchSeekMap;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    .line 520
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$BinarySearchSeekMap;->floorTimePosition:J

    return-wide v0
.end method

.method static synthetic access$1100(Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$BinarySearchSeekMap;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    .line 520
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$BinarySearchSeekMap;->ceilingTimePosition:J

    return-wide v0
.end method

.method static synthetic access$1200(Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$BinarySearchSeekMap;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    .line 520
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$BinarySearchSeekMap;->floorBytePosition:J

    return-wide v0
.end method

.method static synthetic access$1300(Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$BinarySearchSeekMap;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    .line 520
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$BinarySearchSeekMap;->ceilingBytePosition:J

    return-wide v0
.end method

.method static synthetic access$1400(Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$BinarySearchSeekMap;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    .line 520
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$BinarySearchSeekMap;->approxBytesPerFrame:J

    return-wide v0
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .line 567
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$BinarySearchSeekMap;->durationUs:J

    return-wide v0
.end method

.method public getSeekPoints(J)Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;
    .locals 13
    .param p1, "timeUs"    # J

    .line 554
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$BinarySearchSeekMap;->seekTimestampConverter:Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekTimestampConverter;

    .line 556
    invoke-interface {v0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekTimestampConverter;->timeUsToTargetTime(J)J

    move-result-wide v1

    iget-wide v3, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$BinarySearchSeekMap;->floorTimePosition:J

    iget-wide v5, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$BinarySearchSeekMap;->ceilingTimePosition:J

    iget-wide v7, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$BinarySearchSeekMap;->floorBytePosition:J

    iget-wide v9, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$BinarySearchSeekMap;->ceilingBytePosition:J

    iget-wide v11, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$BinarySearchSeekMap;->approxBytesPerFrame:J

    .line 555
    invoke-static/range {v1 .. v12}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;->calculateNextSearchBytePosition(JJJJJJ)J

    move-result-wide v0

    .line 562
    .local v0, "nextSearchPosition":J
    new-instance v2, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;

    new-instance v3, Landroidx/media2/exoplayer/external/extractor/SeekPoint;

    invoke-direct {v3, p1, p2, v0, v1}, Landroidx/media2/exoplayer/external/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {v2, v3}, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media2/exoplayer/external/extractor/SeekPoint;)V

    return-object v2
.end method

.method public isSeekable()Z
    .locals 1

    .line 549
    const/4 v0, 0x1

    return v0
.end method

.method public timeUsToTargetTime(J)J
    .locals 2
    .param p1, "timeUs"    # J

    .line 572
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$BinarySearchSeekMap;->seekTimestampConverter:Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekTimestampConverter;

    invoke-interface {v0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekTimestampConverter;->timeUsToTargetTime(J)J

    move-result-wide v0

    return-wide v0
.end method
