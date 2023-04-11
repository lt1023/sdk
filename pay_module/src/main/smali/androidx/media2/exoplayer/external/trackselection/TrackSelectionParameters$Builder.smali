.class public Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$Builder;
.super Ljava/lang/Object;
.source "TrackSelectionParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field disabledTextTrackSelectionFlags:I

.field preferredAudioLanguage:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field preferredTextLanguage:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field selectUndeterminedTextLanguage:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    sget-object v0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->DEFAULT:Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$Builder;-><init>(Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;)V

    .line 52
    return-void
.end method

.method constructor <init>(Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;)V
    .locals 1
    .param p1, "initialValues"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iget-object v0, p1, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->preferredAudioLanguage:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$Builder;->preferredAudioLanguage:Ljava/lang/String;

    .line 62
    iget-object v0, p1, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->preferredTextLanguage:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$Builder;->preferredTextLanguage:Ljava/lang/String;

    .line 63
    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->selectUndeterminedTextLanguage:Z

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$Builder;->selectUndeterminedTextLanguage:Z

    .line 64
    iget v0, p1, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->disabledTextTrackSelectionFlags:I

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$Builder;->disabledTextTrackSelectionFlags:I

    .line 65
    return-void
.end method


# virtual methods
.method public build()Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;
    .locals 5

    .line 114
    new-instance v0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$Builder;->preferredAudioLanguage:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$Builder;->preferredTextLanguage:Ljava/lang/String;

    iget-boolean v3, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$Builder;->selectUndeterminedTextLanguage:Z

    iget v4, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$Builder;->disabledTextTrackSelectionFlags:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    return-object v0
.end method

.method public setDisabledTextTrackSelectionFlags(I)Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$Builder;
    .locals 0
    .param p1, "disabledTextTrackSelectionFlags"    # I

    .line 108
    iput p1, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$Builder;->disabledTextTrackSelectionFlags:I

    .line 109
    return-object p0
.end method

.method public setPreferredAudioLanguage(Ljava/lang/String;)Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$Builder;
    .locals 0
    .param p1, "preferredAudioLanguage"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 74
    iput-object p1, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$Builder;->preferredAudioLanguage:Ljava/lang/String;

    .line 75
    return-object p0
.end method

.method public setPreferredTextLanguage(Ljava/lang/String;)Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$Builder;
    .locals 0
    .param p1, "preferredTextLanguage"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 87
    iput-object p1, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$Builder;->preferredTextLanguage:Ljava/lang/String;

    .line 88
    return-object p0
.end method

.method public setSelectUndeterminedTextLanguage(Z)Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$Builder;
    .locals 0
    .param p1, "selectUndeterminedTextLanguage"    # Z

    .line 97
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$Builder;->selectUndeterminedTextLanguage:Z

    .line 98
    return-object p0
.end method
