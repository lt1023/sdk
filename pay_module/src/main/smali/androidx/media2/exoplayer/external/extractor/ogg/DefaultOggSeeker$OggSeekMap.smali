.class Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker$OggSeekMap;
.super Ljava/lang/Object;
.source "DefaultOggSeeker.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OggSeekMap"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;


# direct methods
.method private constructor <init>(Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;)V
    .locals 0

    .line 228
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;
    .param p2, "x1"    # Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker$1;

    .line 228
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker$OggSeekMap;-><init>(Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;)V

    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .locals 3

    .line 247
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->access$200(Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;)Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;

    move-result-object v0

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->access$400(Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->convertGranuleToTime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSeekPoints(J)Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;
    .locals 10
    .param p1, "timeUs"    # J

    .line 237
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 238
    new-instance v2, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;

    new-instance v3, Landroidx/media2/exoplayer/external/extractor/SeekPoint;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;

    invoke-static {v4}, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->access$100(Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;)J

    move-result-wide v4

    invoke-direct {v3, v0, v1, v4, v5}, Landroidx/media2/exoplayer/external/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {v2, v3}, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media2/exoplayer/external/extractor/SeekPoint;)V

    return-object v2

    .line 240
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->access$200(Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;)Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->convertTimeToGranule(J)J

    move-result-wide v8

    .line 241
    .local v8, "granule":J
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->access$100(Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;)J

    move-result-wide v2

    const-wide/16 v6, 0x7530

    move-wide v4, v8

    invoke-static/range {v1 .. v7}, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;->access$300(Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;JJJ)J

    move-result-wide v0

    .line 242
    .local v0, "estimatedPosition":J
    new-instance v2, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;

    new-instance v3, Landroidx/media2/exoplayer/external/extractor/SeekPoint;

    invoke-direct {v3, p1, p2, v0, v1}, Landroidx/media2/exoplayer/external/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {v2, v3}, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media2/exoplayer/external/extractor/SeekPoint;)V

    return-object v2
.end method

.method public isSeekable()Z
    .locals 1

    .line 232
    const/4 v0, 0x1

    return v0
.end method
