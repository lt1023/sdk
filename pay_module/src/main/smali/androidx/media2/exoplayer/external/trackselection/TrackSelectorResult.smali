.class public final Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;
.super Ljava/lang/Object;
.source "TrackSelectorResult.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field public final info:Ljava/lang/Object;

.field public final length:I

.field public final rendererConfigurations:[Landroidx/media2/exoplayer/external/RendererConfiguration;

.field public final selections:Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;


# direct methods
.method public constructor <init>([Landroidx/media2/exoplayer/external/RendererConfiguration;[Landroidx/media2/exoplayer/external/trackselection/TrackSelection;Ljava/lang/Object;)V
    .locals 1
    .param p1, "rendererConfigurations"    # [Landroidx/media2/exoplayer/external/RendererConfiguration;
    .param p2, "selections"    # [Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .param p3, "info"    # Ljava/lang/Object;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->rendererConfigurations:[Landroidx/media2/exoplayer/external/RendererConfiguration;

    .line 63
    new-instance v0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;

    invoke-direct {v0, p2}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;-><init>([Landroidx/media2/exoplayer/external/trackselection/TrackSelection;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->selections:Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;

    .line 64
    iput-object p3, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->info:Ljava/lang/Object;

    .line 65
    array-length v0, p1

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->length:I

    .line 66
    return-void
.end method


# virtual methods
.method public isEquivalent(Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;)Z
    .locals 3
    .param p1, "other"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 81
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p1, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->selections:Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;

    iget v1, v1, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;->length:I

    iget-object v2, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->selections:Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;

    iget v2, v2, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;->length:I

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 84
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->selections:Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;

    iget v2, v2, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;->length:I

    if-ge v1, v2, :cond_2

    .line 85
    invoke-virtual {p0, p1, v1}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->isEquivalent(Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 86
    return v0

    .line 84
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    .end local v1    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 81
    :cond_3
    :goto_1
    nop

    .line 82
    return v0
.end method

.method public isEquivalent(Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;I)Z
    .locals 3
    .param p1, "other"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "index"    # I

    .line 104
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 105
    return v0

    .line 107
    :cond_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->rendererConfigurations:[Landroidx/media2/exoplayer/external/RendererConfiguration;

    aget-object v1, v1, p2

    iget-object v2, p1, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->rendererConfigurations:[Landroidx/media2/exoplayer/external/RendererConfiguration;

    aget-object v2, v2, p2

    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->selections:Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;

    .line 108
    invoke-virtual {v1, p2}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;->get(I)Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    move-result-object v1

    iget-object v2, p1, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->selections:Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;

    invoke-virtual {v2, p2}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;->get(I)Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    goto :goto_0

    .line 107
    :cond_2
    nop

    .line 108
    :goto_0
    nop

    .line 107
    :goto_1
    return v0
.end method

.method public isRendererEnabled(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 70
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->rendererConfigurations:[Landroidx/media2/exoplayer/external/RendererConfiguration;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
