.class final Landroidx/media2/exoplayer/external/extractor/mp3/ConstantBitrateSeeker;
.super Landroidx/media2/exoplayer/external/extractor/ConstantBitrateSeekMap;
.source "ConstantBitrateSeeker.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Seeker;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>(JJLandroidx/media2/exoplayer/external/extractor/MpegAudioHeader;)V
    .locals 7
    .param p1, "inputLength"    # J
    .param p3, "firstFramePosition"    # J
    .param p5, "mpegAudioHeader"    # Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

    .line 41
    iget v5, p5, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->bitrate:I

    iget v6, p5, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->frameSize:I

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/extractor/ConstantBitrateSeekMap;-><init>(JJII)V

    .line 42
    return-void
.end method


# virtual methods
.method public getDataEndPosition()J
    .locals 2

    .line 51
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getTimeUs(J)J
    .locals 2
    .param p1, "position"    # J

    .line 46
    invoke-virtual {p0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/mp3/ConstantBitrateSeeker;->getTimeUsAtPosition(J)J

    move-result-wide v0

    return-wide v0
.end method
