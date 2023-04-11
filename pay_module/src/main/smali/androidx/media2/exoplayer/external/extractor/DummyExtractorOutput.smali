.class public final Landroidx/media2/exoplayer/external/extractor/DummyExtractorOutput;
.super Ljava/lang/Object;
.source "DummyExtractorOutput.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endTracks()V
    .locals 0

    .line 37
    return-void
.end method

.method public seekMap(Landroidx/media2/exoplayer/external/extractor/SeekMap;)V
    .locals 0
    .param p1, "seekMap"    # Landroidx/media2/exoplayer/external/extractor/SeekMap;

    .line 42
    return-void
.end method

.method public track(II)Landroidx/media2/exoplayer/external/extractor/TrackOutput;
    .locals 1
    .param p1, "id"    # I
    .param p2, "type"    # I

    .line 31
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/DummyTrackOutput;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/extractor/DummyTrackOutput;-><init>()V

    return-object v0
.end method
