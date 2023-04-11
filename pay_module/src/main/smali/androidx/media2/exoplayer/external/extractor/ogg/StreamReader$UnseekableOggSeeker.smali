.class final Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader$UnseekableOggSeeker;
.super Ljava/lang/Object;
.source "StreamReader.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/ogg/OggSeeker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnseekableOggSeeker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader$1;

    .line 256
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader$UnseekableOggSeeker;-><init>()V

    return-void
.end method


# virtual methods
.method public createSeekMap()Landroidx/media2/exoplayer/external/extractor/SeekMap;
    .locals 3

    .line 270
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/SeekMap$Unseekable;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/SeekMap$Unseekable;-><init>(J)V

    return-object v0
.end method

.method public read(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)J
    .locals 2
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 260
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public startSeek(J)J
    .locals 2
    .param p1, "timeUs"    # J

    .line 265
    const-wide/16 v0, 0x0

    return-wide v0
.end method
