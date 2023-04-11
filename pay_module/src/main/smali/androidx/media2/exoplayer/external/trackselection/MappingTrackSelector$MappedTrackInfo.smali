.class public final Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;
.super Ljava/lang/Object;
.source "MappingTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MappedTrackInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo$RendererSupport;
    }
.end annotation


# static fields
.field public static final RENDERER_SUPPORT_EXCEEDS_CAPABILITIES_TRACKS:I = 0x2

.field public static final RENDERER_SUPPORT_NO_TRACKS:I = 0x0

.field public static final RENDERER_SUPPORT_PLAYABLE_TRACKS:I = 0x3

.field public static final RENDERER_SUPPORT_UNSUPPORTED_TRACKS:I = 0x1


# instance fields
.field public final length:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final rendererCount:I

.field private final rendererFormatSupports:[[[I

.field private final rendererMixedMimeTypeAdaptiveSupports:[I

.field private final rendererTrackGroups:[Landroidx/media2/exoplayer/external/source/TrackGroupArray;

.field private final rendererTrackTypes:[I

.field private final unmappedTrackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;


# direct methods
.method constructor <init>([I[Landroidx/media2/exoplayer/external/source/TrackGroupArray;[I[[[ILandroidx/media2/exoplayer/external/source/TrackGroupArray;)V
    .locals 1
    .param p1, "rendererTrackTypes"    # [I
    .param p2, "rendererTrackGroups"    # [Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .param p3, "rendererMixedMimeTypeAdaptiveSupports"    # [I
    .param p4, "rendererFormatSupports"    # [[[I
    .param p5, "unmappedTrackGroups"    # Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackTypes:[I

    .line 120
    iput-object p2, p0, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackGroups:[Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 121
    iput-object p4, p0, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererFormatSupports:[[[I

    .line 122
    iput-object p3, p0, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererMixedMimeTypeAdaptiveSupports:[I

    .line 123
    iput-object p5, p0, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->unmappedTrackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 124
    array-length v0, p1

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererCount:I

    .line 125
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererCount:I

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->length:I

    .line 126
    return-void
.end method


# virtual methods
.method public getAdaptiveSupport(IIZ)I
    .locals 6
    .param p1, "rendererIndex"    # I
    .param p2, "groupIndex"    # I
    .param p3, "includeCapabilitiesExceededTracks"    # Z

    .line 257
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackGroups:[Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->get(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v0

    iget v0, v0, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    .line 259
    .local v0, "trackCount":I
    new-array v1, v0, [I

    .line 260
    .local v1, "trackIndices":[I
    const/4 v2, 0x0

    .line 261
    .local v2, "trackIndexCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 262
    invoke-virtual {p0, p1, p2, v3}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackSupport(III)I

    move-result v4

    .line 263
    .local v4, "fixedSupport":I
    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    if-eqz p3, :cond_0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    goto :goto_2

    .line 266
    :cond_1
    :goto_1
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "trackIndexCount":I
    .local v5, "trackIndexCount":I
    aput v3, v1, v2

    move v2, v5

    .line 261
    .end local v4    # "fixedSupport":I
    .end local v5    # "trackIndexCount":I
    .restart local v2    # "trackIndexCount":I
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 269
    .end local v3    # "i":I
    :cond_2
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 270
    invoke-virtual {p0, p1, p2, v1}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->getAdaptiveSupport(II[I)I

    move-result v3

    return v3
.end method

.method public getAdaptiveSupport(II[I)I
    .locals 8
    .param p1, "rendererIndex"    # I
    .param p2, "groupIndex"    # I
    .param p3, "trackIndices"    # [I

    .line 284
    const/4 v0, 0x0

    .line 285
    .local v0, "handledTrackCount":I
    const/16 v1, 0x10

    .line 286
    .local v1, "adaptiveSupport":I
    const/4 v2, 0x0

    .line 287
    .local v2, "multipleMimeTypes":Z
    const/4 v3, 0x0

    .line 288
    .local v3, "firstSampleMimeType":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, p3

    if-ge v4, v5, :cond_1

    .line 289
    aget v5, p3, v4

    .line 290
    .local v5, "trackIndex":I
    iget-object v6, p0, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackGroups:[Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    aget-object v6, v6, p1

    .line 291
    invoke-virtual {v6, p2}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->get(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v6

    iget-object v6, v6, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    .line 292
    .local v6, "sampleMimeType":Ljava/lang/String;
    add-int/lit8 v7, v0, 0x1

    .end local v0    # "handledTrackCount":I
    .local v7, "handledTrackCount":I
    if-nez v0, :cond_0

    .line 293
    move-object v0, v6

    move-object v3, v0

    goto :goto_1

    .line 295
    :cond_0
    invoke-static {v3, v6}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    or-int/2addr v0, v2

    move v2, v0

    .line 297
    :goto_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererFormatSupports:[[[I

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    aget v0, v0, v4

    and-int/lit8 v0, v0, 0x18

    .line 298
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 288
    .end local v5    # "trackIndex":I
    .end local v6    # "sampleMimeType":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    move v0, v7

    goto :goto_0

    .line 303
    .end local v4    # "i":I
    .end local v7    # "handledTrackCount":I
    .restart local v0    # "handledTrackCount":I
    :cond_1
    if-eqz v2, :cond_2

    .line 304
    iget-object v4, p0, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererMixedMimeTypeAdaptiveSupports:[I

    aget v4, v4, p1

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_2

    .line 305
    :cond_2
    move v4, v1

    .line 303
    :goto_2
    return v4
.end method

.method public getRendererCount()I
    .locals 1

    .line 130
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererCount:I

    return v0
.end method

.method public getRendererSupport(I)I
    .locals 10
    .param p1, "rendererIndex"    # I

    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "bestRendererSupport":I
    iget-object v1, p0, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererFormatSupports:[[[I

    aget-object v1, v1, p1

    .line 165
    .local v1, "rendererFormatSupport":[[I
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v0

    const/4 v0, 0x0

    .end local v0    # "bestRendererSupport":I
    .local v4, "bestRendererSupport":I
    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v5, v1, v0

    .line 166
    .local v5, "trackGroupFormatSupport":[I
    array-length v6, v5

    move v7, v4

    const/4 v4, 0x0

    .end local v4    # "bestRendererSupport":I
    .local v7, "bestRendererSupport":I
    :goto_1
    if-ge v4, v6, :cond_0

    aget v8, v5, v4

    .line 168
    .local v8, "trackFormatSupport":I
    and-int/lit8 v9, v8, 0x7

    packed-switch v9, :pswitch_data_0

    .line 175
    const/4 v9, 0x1

    goto :goto_2

    .line 170
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 172
    :pswitch_1
    const/4 v9, 0x2

    .line 173
    .local v9, "trackRendererSupport":I
    nop

    .line 178
    :goto_2
    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 166
    .end local v8    # "trackFormatSupport":I
    .end local v9    # "trackRendererSupport":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 165
    .end local v5    # "trackGroupFormatSupport":[I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    move v4, v7

    goto :goto_0

    .line 181
    .end local v7    # "bestRendererSupport":I
    .restart local v4    # "bestRendererSupport":I
    :cond_1
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getRendererType(I)I
    .locals 1
    .param p1, "rendererIndex"    # I

    .line 141
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackTypes:[I

    aget v0, v0, p1

    return v0
.end method

.method public getTrackFormatSupport(III)I
    .locals 1
    .param p1, "rendererIndex"    # I
    .param p2, "groupIndex"    # I
    .param p3, "trackIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 214
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackSupport(III)I

    move-result v0

    return v0
.end method

.method public getTrackGroups(I)Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .locals 1
    .param p1, "rendererIndex"    # I

    .line 151
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackGroups:[Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getTrackSupport(III)I
    .locals 1
    .param p1, "rendererIndex"    # I
    .param p2, "groupIndex"    # I
    .param p3, "trackIndex"    # I

    .line 230
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererFormatSupports:[[[I

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    aget v0, v0, p3

    and-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public getTrackTypeRendererSupport(I)I
    .locals 1
    .param p1, "trackType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 187
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->getTypeSupport(I)I

    move-result v0

    return v0
.end method

.method public getTypeSupport(I)I
    .locals 3
    .param p1, "trackType"    # I

    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, "bestRendererSupport":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererCount:I

    if-ge v1, v2, :cond_1

    .line 204
    iget-object v2, p0, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackTypes:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    .line 205
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererSupport(I)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    .line 204
    :cond_0
    nop

    .line 203
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 208
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public getUnassociatedTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 311
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->getUnmappedTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v0

    return-object v0
.end method

.method public getUnmappedTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .locals 1

    .line 316
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->unmappedTrackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    return-object v0
.end method
