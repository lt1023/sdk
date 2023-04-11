.class public Landroidx/media2/exoplayer/external/extractor/ogg/OggExtractor;
.super Ljava/lang/Object;
.source "OggExtractor.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/Extractor;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final FACTORY:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

.field private static final MAX_VERIFICATION_BYTES:I = 0x8


# instance fields
.field private output:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

.field private streamReader:Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;

.field private streamReaderInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/ogg/OggExtractor$$Lambda$0;->$instance:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/ogg/OggExtractor;->FACTORY:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final synthetic lambda$static$0$OggExtractor()[Landroidx/media2/exoplayer/external/extractor/Extractor;
    .locals 3

    .line 41
    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media2/exoplayer/external/extractor/Extractor;

    new-instance v1, Landroidx/media2/exoplayer/external/extractor/ogg/OggExtractor;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/extractor/ogg/OggExtractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private static resetPosition(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .locals 1
    .param p0, "scratch"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 117
    return-object p0
.end method

.method private sniffInternal(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z
    .locals 6
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 94
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;-><init>()V

    .line 95
    .local v0, "header":Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->populate(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Z)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->type:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-eq v2, v4, :cond_0

    goto :goto_1

    .line 99
    :cond_0
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->bodySize:I

    const/16 v4, 0x8

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 100
    .local v2, "length":I
    new-instance v4, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {v4, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>(I)V

    .line 101
    .local v4, "scratch":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    iget-object v5, v4, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v5, v3, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 103
    invoke-static {v4}, Landroidx/media2/exoplayer/external/extractor/ogg/OggExtractor;->resetPosition(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    move-result-object v5

    invoke-static {v5}, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader;->verifyBitstreamType(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 104
    new-instance v3, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader;

    invoke-direct {v3}, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader;-><init>()V

    iput-object v3, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggExtractor;->streamReader:Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;

    goto :goto_0

    .line 105
    :cond_1
    invoke-static {v4}, Landroidx/media2/exoplayer/external/extractor/ogg/OggExtractor;->resetPosition(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    move-result-object v5

    invoke-static {v5}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->verifyBitstreamType(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 106
    new-instance v3, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;

    invoke-direct {v3}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;-><init>()V

    iput-object v3, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggExtractor;->streamReader:Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;

    goto :goto_0

    .line 107
    :cond_2
    invoke-static {v4}, Landroidx/media2/exoplayer/external/extractor/ogg/OggExtractor;->resetPosition(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    move-result-object v5

    invoke-static {v5}, Landroidx/media2/exoplayer/external/extractor/ogg/OpusReader;->verifyBitstreamType(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 108
    new-instance v3, Landroidx/media2/exoplayer/external/extractor/ogg/OpusReader;

    invoke-direct {v3}, Landroidx/media2/exoplayer/external/extractor/ogg/OpusReader;-><init>()V

    iput-object v3, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggExtractor;->streamReader:Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;

    .line 112
    :goto_0
    return v1

    .line 110
    :cond_3
    return v3

    .line 95
    .end local v2    # "length":I
    .end local v4    # "scratch":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    :cond_4
    :goto_1
    nop

    .line 96
    return v3
.end method


# virtual methods
.method public init(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;)V
    .locals 0
    .param p1, "output"    # Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    .line 60
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggExtractor;->output:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    .line 61
    return-void
.end method

.method public read(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;)I
    .locals 4
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Landroidx/media2/exoplayer/external/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggExtractor;->streamReader:Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;

    if-nez v0, :cond_1

    .line 79
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/ogg/OggExtractor;->sniffInternal(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    goto :goto_0

    .line 80
    :cond_0
    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    const-string v1, "Failed to determine bitstream type"

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_1
    nop

    .line 84
    :goto_0
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggExtractor;->streamReaderInitialized:Z

    if-nez v0, :cond_2

    .line 85
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggExtractor;->output:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->track(II)Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    move-result-object v0

    .line 86
    .local v0, "trackOutput":Landroidx/media2/exoplayer/external/extractor/TrackOutput;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggExtractor;->output:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->endTracks()V

    .line 87
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggExtractor;->streamReader:Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggExtractor;->output:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    invoke-virtual {v1, v3, v0}, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->init(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;Landroidx/media2/exoplayer/external/extractor/TrackOutput;)V

    .line 88
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggExtractor;->streamReaderInitialized:Z

    goto :goto_1

    .line 84
    .end local v0    # "trackOutput":Landroidx/media2/exoplayer/external/extractor/TrackOutput;
    :cond_2
    nop

    .line 90
    :goto_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggExtractor;->streamReader:Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->read(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;)I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 0

    .line 73
    return-void
.end method

.method public seek(JJ)V
    .locals 1
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .line 65
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggExtractor;->streamReader:Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->seek(JJ)V

    goto :goto_0

    .line 65
    :cond_0
    nop

    .line 68
    :goto_0
    return-void
.end method

.method public sniff(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z
    .locals 2
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 52
    :try_start_0
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/ogg/OggExtractor;->sniffInternal(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z

    move-result v0
    :try_end_0
    .catch Landroidx/media2/exoplayer/external/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Landroidx/media2/exoplayer/external/ParserException;
    const/4 v1, 0x0

    return v1
.end method
