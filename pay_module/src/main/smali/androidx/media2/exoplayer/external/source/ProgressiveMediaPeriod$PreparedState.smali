.class final Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;
.super Ljava/lang/Object;
.source "ProgressiveMediaPeriod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PreparedState"
.end annotation


# instance fields
.field public final seekMap:Landroidx/media2/exoplayer/external/extractor/SeekMap;

.field public final trackEnabledStates:[Z

.field public final trackIsAudioVideoFlags:[Z

.field public final trackNotifiedDownstreamFormats:[Z

.field public final tracks:Landroidx/media2/exoplayer/external/source/TrackGroupArray;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/extractor/SeekMap;Landroidx/media2/exoplayer/external/source/TrackGroupArray;[Z)V
    .locals 1
    .param p1, "seekMap"    # Landroidx/media2/exoplayer/external/extractor/SeekMap;
    .param p2, "tracks"    # Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .param p3, "trackIsAudioVideoFlags"    # [Z

    .line 1091
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1092
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;->seekMap:Landroidx/media2/exoplayer/external/extractor/SeekMap;

    .line 1093
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;->tracks:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 1094
    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;->trackIsAudioVideoFlags:[Z

    .line 1095
    iget v0, p2, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    new-array v0, v0, [Z

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;->trackEnabledStates:[Z

    .line 1096
    iget v0, p2, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    new-array v0, v0, [Z

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;->trackNotifiedDownstreamFormats:[Z

    .line 1097
    return-void
.end method
