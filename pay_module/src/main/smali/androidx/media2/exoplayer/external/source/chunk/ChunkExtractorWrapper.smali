.class public final Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper;
.super Ljava/lang/Object;
.source "ChunkExtractorWrapper.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;,
        Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;
    }
.end annotation


# instance fields
.field private final bindingTrackOutputs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;",
            ">;"
        }
    .end annotation
.end field

.field private endTimeUs:J

.field public final extractor:Landroidx/media2/exoplayer/external/extractor/Extractor;

.field private extractorInitialized:Z

.field private final primaryTrackManifestFormat:Landroidx/media2/exoplayer/external/Format;

.field private final primaryTrackType:I

.field private sampleFormats:[Landroidx/media2/exoplayer/external/Format;

.field private seekMap:Landroidx/media2/exoplayer/external/extractor/SeekMap;

.field private trackOutputProvider:Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/extractor/Extractor;ILandroidx/media2/exoplayer/external/Format;)V
    .locals 1
    .param p1, "extractor"    # Landroidx/media2/exoplayer/external/extractor/Extractor;
    .param p2, "primaryTrackType"    # I
    .param p3, "primaryTrackManifestFormat"    # Landroidx/media2/exoplayer/external/Format;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper;->extractor:Landroidx/media2/exoplayer/external/extractor/Extractor;

    .line 87
    iput p2, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper;->primaryTrackType:I

    .line 88
    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper;->primaryTrackManifestFormat:Landroidx/media2/exoplayer/external/Format;

    .line 89
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper;->bindingTrackOutputs:Landroid/util/SparseArray;

    .line 90
    return-void
.end method


# virtual methods
.method public endTracks()V
    .locals 3

    .line 153
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper;->bindingTrackOutputs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v0, v0, [Landroidx/media2/exoplayer/external/Format;

    .line 154
    .local v0, "sampleFormats":[Landroidx/media2/exoplayer/external/Format;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper;->bindingTrackOutputs:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 155
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper;->bindingTrackOutputs:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->sampleFormat:Landroidx/media2/exoplayer/external/Format;

    aput-object v2, v0, v1

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    .end local v1    # "i":I
    :cond_0
    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper;->sampleFormats:[Landroidx/media2/exoplayer/external/Format;

    .line 158
    return-void
.end method

.method public getSampleFormats()[Landroidx/media2/exoplayer/external/Format;
    .locals 1

    .line 103
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper;->sampleFormats:[Landroidx/media2/exoplayer/external/Format;

    return-object v0
.end method

.method public getSeekMap()Landroidx/media2/exoplayer/external/extractor/SeekMap;
    .locals 1

    .line 96
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper;->seekMap:Landroidx/media2/exoplayer/external/extractor/SeekMap;

    return-object v0
.end method

.method public init(Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;JJ)V
    .locals 6
    .param p1, "trackOutputProvider"    # Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "startTimeUs"    # J
    .param p4, "endTimeUs"    # J

    .line 118
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper;->trackOutputProvider:Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;

    .line 119
    iput-wide p4, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper;->endTimeUs:J

    .line 120
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper;->extractorInitialized:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v3, 0x0

    if-nez v0, :cond_1

    .line 121
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper;->extractor:Landroidx/media2/exoplayer/external/extractor/Extractor;

    invoke-interface {v0, p0}, Landroidx/media2/exoplayer/external/extractor/Extractor;->init(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;)V

    .line 122
    cmp-long v0, p2, v1

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper;->extractor:Landroidx/media2/exoplayer/external/extractor/Extractor;

    invoke-interface {v0, v3, v4, p2, p3}, Landroidx/media2/exoplayer/external/extractor/Extractor;->seek(JJ)V

    goto :goto_0

    .line 122
    :cond_0
    nop

    .line 125
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper;->extractorInitialized:Z

    goto :goto_3

    .line 127
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper;->extractor:Landroidx/media2/exoplayer/external/extractor/Extractor;

    cmp-long v5, p2, v1

    if-nez v5, :cond_2

    move-wide v1, v3

    goto :goto_1

    :cond_2
    move-wide v1, p2

    :goto_1
    invoke-interface {v0, v3, v4, v1, v2}, Landroidx/media2/exoplayer/external/extractor/Extractor;->seek(JJ)V

    .line 128
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper;->bindingTrackOutputs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 129
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper;->bindingTrackOutputs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;

    invoke-virtual {v1, p1, p4, p5}, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->bind(Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;J)V

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 132
    .end local v0    # "i":I
    :cond_3
    :goto_3
    return-void
.end method

.method public seekMap(Landroidx/media2/exoplayer/external/extractor/SeekMap;)V
    .locals 0
    .param p1, "seekMap"    # Landroidx/media2/exoplayer/external/extractor/SeekMap;

    .line 162
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper;->seekMap:Landroidx/media2/exoplayer/external/extractor/SeekMap;

    .line 163
    return-void
.end method

.method public track(II)Landroidx/media2/exoplayer/external/extractor/TrackOutput;
    .locals 4
    .param p1, "id"    # I
    .param p2, "type"    # I

    .line 138
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper;->bindingTrackOutputs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;

    .line 139
    .local v0, "bindingTrackOutput":Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;
    if-nez v0, :cond_2

    .line 141
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper;->sampleFormats:[Landroidx/media2/exoplayer/external/Format;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 143
    new-instance v1, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;

    .line 144
    iget v2, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper;->primaryTrackType:I

    if-ne p2, v2, :cond_1

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper;->primaryTrackManifestFormat:Landroidx/media2/exoplayer/external/Format;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-direct {v1, p1, p2, v2}, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;-><init>(IILandroidx/media2/exoplayer/external/Format;)V

    move-object v0, v1

    .line 145
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper;->trackOutputProvider:Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper;->endTimeUs:J

    invoke-virtual {v0, v1, v2, v3}, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->bind(Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;J)V

    .line 146
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper;->bindingTrackOutputs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 139
    :cond_2
    nop

    .line 148
    :goto_2
    return-object v0
.end method
