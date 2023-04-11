.class public final Landroidx/media2/exoplayer/external/extractor/SeekMap$Unseekable;
.super Ljava/lang/Object;
.source "SeekMap.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/SeekMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Unseekable"
.end annotation


# instance fields
.field private final durationUs:J

.field private final startSeekPoints:Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;


# direct methods
.method public constructor <init>(J)V
    .locals 2
    .param p1, "durationUs"    # J

    .line 44
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/exoplayer/external/extractor/SeekMap$Unseekable;-><init>(JJ)V

    .line 45
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 4
    .param p1, "durationUs"    # J
    .param p3, "startPosition"    # J

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/SeekMap$Unseekable;->durationUs:J

    .line 54
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;

    .line 55
    const-wide/16 v1, 0x0

    cmp-long v3, p3, v1

    if-nez v3, :cond_0

    sget-object v1, Landroidx/media2/exoplayer/external/extractor/SeekPoint;->START:Landroidx/media2/exoplayer/external/extractor/SeekPoint;

    goto :goto_0

    :cond_0
    new-instance v3, Landroidx/media2/exoplayer/external/extractor/SeekPoint;

    invoke-direct {v3, v1, v2, p3, p4}, Landroidx/media2/exoplayer/external/extractor/SeekPoint;-><init>(JJ)V

    move-object v1, v3

    :goto_0
    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media2/exoplayer/external/extractor/SeekPoint;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/SeekMap$Unseekable;->startSeekPoints:Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;

    .line 56
    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .line 65
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/SeekMap$Unseekable;->durationUs:J

    return-wide v0
.end method

.method public getSeekPoints(J)Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;
    .locals 1
    .param p1, "timeUs"    # J

    .line 70
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/SeekMap$Unseekable;->startSeekPoints:Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;

    return-object v0
.end method

.method public isSeekable()Z
    .locals 1

    .line 60
    const/4 v0, 0x0

    return v0
.end method
