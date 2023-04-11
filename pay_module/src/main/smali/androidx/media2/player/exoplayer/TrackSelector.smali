.class final Landroidx/media2/player/exoplayer/TrackSelector;
.super Ljava/lang/Object;
.source "TrackSelector.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/player/exoplayer/TrackSelector$InternalTextTrackInfo;
    }
.end annotation


# static fields
.field private static final TRACK_INDEX_UNSET:I = -0x1


# instance fields
.field private final mAudioTrackInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/player/MediaPlayer2$TrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultTrackSelector:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

.field private final mInternalTextTrackInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/player/exoplayer/TrackSelector$InternalTextTrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mMetadataTrackInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/player/MediaPlayer2$TrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingMetadataUpdate:Z

.field private mPlayerTextTrackIndex:I

.field private mSelectedAudioTrackIndex:I

.field private mSelectedMetadataTrackIndex:I

.field private mSelectedTextTrackIndex:I

.field private mSelectedVideoTrackIndex:I

.field private final mTextRenderer:Landroidx/media2/player/exoplayer/TextRenderer;

.field private final mTextTrackInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/player/MediaPlayer2$TrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mVideoTrackInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/player/MediaPlayer2$TrackInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/media2/player/exoplayer/TextRenderer;)V
    .locals 4
    .param p1, "textRenderer"    # Landroidx/media2/player/exoplayer/TextRenderer;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mTextRenderer:Landroidx/media2/player/exoplayer/TextRenderer;

    .line 84
    new-instance v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mDefaultTrackSelector:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mAudioTrackInfos:Ljava/util/List;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mVideoTrackInfos:Ljava/util/List;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mMetadataTrackInfos:Ljava/util/List;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mTextTrackInfos:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mInternalTextTrackInfos:Ljava/util/List;

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mSelectedAudioTrackIndex:I

    .line 91
    iput v0, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mSelectedVideoTrackIndex:I

    .line 92
    iput v0, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mSelectedMetadataTrackIndex:I

    .line 93
    iput v0, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mPlayerTextTrackIndex:I

    .line 94
    iput v0, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mSelectedTextTrackIndex:I

    .line 97
    iget-object v0, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mDefaultTrackSelector:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    new-instance v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;-><init>()V

    .line 99
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->setSelectUndeterminedTextLanguage(Z)Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v1

    .line 100
    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->setRendererDisabled(IZ)Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->setParameters(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;)V

    .line 101
    return-void
.end method

.method private static getTextTrackType(Ljava/lang/String;)I
    .locals 5
    .param p0, "sampleMimeType"    # Ljava/lang/String;

    .line 329
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x3be2f26c

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v1, :cond_3

    const v1, 0x5d578071

    if-eq v0, v1, :cond_2

    const v1, 0x5d578432

    if-eq v0, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v0, "application/cea-708"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "application/cea-608"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const-string v0, "text/vtt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 337
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected text MIME type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :pswitch_0
    return v2

    .line 333
    :pswitch_1
    return v3

    .line 331
    :pswitch_2
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public deselectTrack(I)V
    .locals 4
    .param p1, "index"    # I

    .line 310
    iget-object v0, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mVideoTrackInfos:Ljava/util/List;

    .line 311
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Video track deselection is not supported"

    .line 310
    invoke-static {v0, v3}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 312
    iget-object v0, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mVideoTrackInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p1, v0

    .line 313
    iget-object v0, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mAudioTrackInfos:Ljava/util/List;

    .line 314
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v3, "Audio track deselection is not supported"

    .line 313
    invoke-static {v0, v3}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 315
    iget-object v0, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mAudioTrackInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p1, v0

    .line 316
    iget-object v0, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mMetadataTrackInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, -0x1

    if-ge p1, v0, :cond_2

    .line 317
    iput v3, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mSelectedMetadataTrackIndex:I

    .line 318
    iget-object v0, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mDefaultTrackSelector:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->buildUponParameters()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v1

    const/4 v3, 0x3

    .line 319
    invoke-virtual {v1, v3, v2}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->setRendererDisabled(IZ)Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v1

    .line 318
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->setParameters(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;)V

    .line 320
    return-void

    .line 322
    :cond_2
    iget-object v0, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mMetadataTrackInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p1, v0

    .line 323
    iget v0, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mSelectedTextTrackIndex:I

    if-ne p1, v0, :cond_3

    const/4 v1, 0x1

    nop

    :cond_3
    invoke-static {v1}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 324
    iget-object v0, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mTextRenderer:Landroidx/media2/player/exoplayer/TextRenderer;

    invoke-virtual {v0}, Landroidx/media2/player/exoplayer/TextRenderer;->clearSelection()V

    .line 325
    iput v3, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mSelectedTextTrackIndex:I

    .line 326
    return-void
.end method

.method public getPlayerTrackSelector()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;
    .locals 1

    .line 104
    iget-object v0, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mDefaultTrackSelector:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    return-object v0
.end method

.method public getSelectedTrack(I)I
    .locals 2
    .param p1, "trackType"    # I

    .line 221
    packed-switch p1, :pswitch_data_0

    .line 234
    :pswitch_0
    const/4 v0, -0x1

    return v0

    .line 227
    :pswitch_1
    iget-object v0, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mAudioTrackInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mVideoTrackInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mSelectedMetadataTrackIndex:I

    add-int/2addr v0, v1

    return v0

    .line 230
    :pswitch_2
    iget-object v0, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mAudioTrackInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mVideoTrackInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mMetadataTrackInfos:Ljava/util/List;

    .line 231
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mSelectedTextTrackIndex:I

    add-int/2addr v0, v1

    .line 230
    return v0

    .line 223
    :pswitch_3
    iget v0, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mSelectedAudioTrackIndex:I

    return v0

    .line 225
    :pswitch_4
    iget-object v0, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mAudioTrackInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mSelectedVideoTrackIndex:I

    add-int/2addr v0, v1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getTrackInfos()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/player/MediaPlayer2$TrackInfo;",
            ">;"
        }
    .end annotation

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mVideoTrackInfos:Ljava/util/List;

    .line 240
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mAudioTrackInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mMetadataTrackInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mInternalTextTrackInfos:Ljava/util/List;

    .line 241
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 242
    .local v0, "trackInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/player/MediaPlayer2$TrackInfo;>;"
    iget-object v1, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mVideoTrackInfos:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 243
    iget-object v1, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mAudioTrackInfos:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 244
    iget-object v1, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mMetadataTrackInfos:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 245
    iget-object v1, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mTextTrackInfos:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 246
    return-object v0
.end method

.method public handlePlayerTracksChanged(Landroidx/media2/exoplayer/external/Player;)V
    .locals 17
    .param p1, "player"    # Landroidx/media2/exoplayer/external/Player;

    .line 108
    move-object/from16 v0, p0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/media2/player/exoplayer/TrackSelector;->mPendingMetadataUpdate:Z

    .line 111
    iget-object v2, v0, Landroidx/media2/player/exoplayer/TrackSelector;->mDefaultTrackSelector:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    .line 112
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->buildUponParameters()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->clearSelectionOverrides()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v3

    .line 111
    invoke-virtual {v2, v3}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->setParameters(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;)V

    .line 113
    const/4 v2, -0x1

    iput v2, v0, Landroidx/media2/player/exoplayer/TrackSelector;->mSelectedAudioTrackIndex:I

    .line 114
    iput v2, v0, Landroidx/media2/player/exoplayer/TrackSelector;->mSelectedVideoTrackIndex:I

    .line 115
    iput v2, v0, Landroidx/media2/player/exoplayer/TrackSelector;->mSelectedMetadataTrackIndex:I

    .line 116
    iput v2, v0, Landroidx/media2/player/exoplayer/TrackSelector;->mPlayerTextTrackIndex:I

    .line 117
    iput v2, v0, Landroidx/media2/player/exoplayer/TrackSelector;->mSelectedTextTrackIndex:I

    .line 118
    iget-object v3, v0, Landroidx/media2/player/exoplayer/TrackSelector;->mAudioTrackInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 119
    iget-object v3, v0, Landroidx/media2/player/exoplayer/TrackSelector;->mVideoTrackInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 120
    iget-object v3, v0, Landroidx/media2/player/exoplayer/TrackSelector;->mMetadataTrackInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 121
    iget-object v3, v0, Landroidx/media2/player/exoplayer/TrackSelector;->mInternalTextTrackInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 122
    iget-object v3, v0, Landroidx/media2/player/exoplayer/TrackSelector;->mTextRenderer:Landroidx/media2/player/exoplayer/TextRenderer;

    invoke-virtual {v3}, Landroidx/media2/player/exoplayer/TextRenderer;->clearSelection()V

    .line 123
    iget-object v3, v0, Landroidx/media2/player/exoplayer/TrackSelector;->mDefaultTrackSelector:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    .line 124
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v3

    .line 125
    .local v3, "mappedTrackInfo":Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;
    if-nez v3, :cond_0

    .line 126
    return-void

    .line 130
    :cond_0
    invoke-virtual {v3, v1}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v4

    .line 131
    .local v4, "audioTrackGroups":Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget v6, v4, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-ge v5, v6, :cond_1

    .line 132
    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->get(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v6

    .line 133
    .local v6, "trackGroup":Landroidx/media2/exoplayer/external/source/TrackGroup;
    new-instance v9, Landroidx/media2/player/common/TrackInfoImpl;

    .line 134
    invoke-virtual {v6, v8}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v8

    invoke-static {v8}, Landroidx/media2/player/exoplayer/ExoPlayerUtils;->getMediaFormat(Landroidx/media2/exoplayer/external/Format;)Landroid/media/MediaFormat;

    move-result-object v8

    invoke-direct {v9, v7, v8}, Landroidx/media2/player/common/TrackInfoImpl;-><init>(ILandroid/media/MediaFormat;)V

    move-object v7, v9

    .line 135
    .local v7, "trackInfo":Landroidx/media2/player/common/TrackInfoImpl;
    iget-object v8, v0, Landroidx/media2/player/exoplayer/TrackSelector;->mAudioTrackInfos:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    .end local v6    # "trackGroup":Landroidx/media2/exoplayer/external/source/TrackGroup;
    .end local v7    # "trackInfo":Landroidx/media2/player/common/TrackInfoImpl;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 137
    .end local v5    # "i":I
    :cond_1
    invoke-virtual {v3, v8}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v5

    .line 138
    .local v5, "videoTrackGroups":Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    iget v9, v5, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    if-ge v6, v9, :cond_2

    .line 139
    invoke-virtual {v5, v6}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->get(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v9

    .line 140
    .local v9, "trackGroup":Landroidx/media2/exoplayer/external/source/TrackGroup;
    new-instance v10, Landroidx/media2/player/common/TrackInfoImpl;

    .line 141
    invoke-virtual {v9, v8}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v11

    invoke-static {v11}, Landroidx/media2/player/exoplayer/ExoPlayerUtils;->getMediaFormat(Landroidx/media2/exoplayer/external/Format;)Landroid/media/MediaFormat;

    move-result-object v11

    invoke-direct {v10, v1, v11}, Landroidx/media2/player/common/TrackInfoImpl;-><init>(ILandroid/media/MediaFormat;)V

    .line 142
    .local v10, "trackInfo":Landroidx/media2/player/common/TrackInfoImpl;
    iget-object v11, v0, Landroidx/media2/player/exoplayer/TrackSelector;->mVideoTrackInfos:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    .end local v9    # "trackGroup":Landroidx/media2/exoplayer/external/source/TrackGroup;
    .end local v10    # "trackInfo":Landroidx/media2/player/common/TrackInfoImpl;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 144
    .end local v6    # "i":I
    :cond_2
    nop

    .line 145
    const/4 v6, 0x3

    invoke-virtual {v3, v6}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v9

    .line 146
    .local v9, "metadataTrackGroups":Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    iget v11, v9, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    if-ge v10, v11, :cond_3

    .line 147
    invoke-virtual {v9, v10}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->get(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v11

    .line 148
    .local v11, "trackGroup":Landroidx/media2/exoplayer/external/source/TrackGroup;
    new-instance v12, Landroidx/media2/player/common/TrackInfoImpl;

    const/4 v13, 0x5

    .line 150
    invoke-virtual {v11, v8}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v14

    invoke-static {v14}, Landroidx/media2/player/exoplayer/ExoPlayerUtils;->getMediaFormat(Landroidx/media2/exoplayer/external/Format;)Landroid/media/MediaFormat;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Landroidx/media2/player/common/TrackInfoImpl;-><init>(ILandroid/media/MediaFormat;)V

    .line 151
    .local v12, "trackInfo":Landroidx/media2/player/common/TrackInfoImpl;
    iget-object v13, v0, Landroidx/media2/player/exoplayer/TrackSelector;->mMetadataTrackInfos:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    .end local v11    # "trackGroup":Landroidx/media2/exoplayer/external/source/TrackGroup;
    .end local v12    # "trackInfo":Landroidx/media2/player/common/TrackInfoImpl;
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 155
    .end local v10    # "i":I
    :cond_3
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/Player;->getCurrentTrackSelections()Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;

    move-result-object v10

    .line 156
    .local v10, "trackSelections":Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;
    invoke-virtual {v10, v1}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;->get(I)Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    move-result-object v1

    .line 157
    .local v1, "audioTrackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    if-nez v1, :cond_4

    const/4 v11, -0x1

    goto :goto_3

    .line 158
    :cond_4
    invoke-interface {v1}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->getTrackGroup()Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->indexOf(Landroidx/media2/exoplayer/external/source/TrackGroup;)I

    move-result v11

    :goto_3
    iput v11, v0, Landroidx/media2/player/exoplayer/TrackSelector;->mSelectedAudioTrackIndex:I

    .line 159
    invoke-virtual {v10, v8}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;->get(I)Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    move-result-object v11

    .line 160
    .local v11, "videoTrackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    if-nez v11, :cond_5

    const/4 v12, -0x1

    goto :goto_4

    .line 161
    :cond_5
    invoke-interface {v11}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->getTrackGroup()Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->indexOf(Landroidx/media2/exoplayer/external/source/TrackGroup;)I

    move-result v12

    :goto_4
    iput v12, v0, Landroidx/media2/player/exoplayer/TrackSelector;->mSelectedVideoTrackIndex:I

    .line 162
    invoke-virtual {v10, v6}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;->get(I)Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    move-result-object v6

    .line 163
    .local v6, "metadataTrackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    if-nez v6, :cond_6

    const/4 v12, -0x1

    goto :goto_5

    .line 165
    :cond_6
    invoke-interface {v6}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->getTrackGroup()Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v12

    .line 164
    invoke-virtual {v9, v12}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->indexOf(Landroidx/media2/exoplayer/external/source/TrackGroup;)I

    move-result v12

    :goto_5
    iput v12, v0, Landroidx/media2/player/exoplayer/TrackSelector;->mSelectedMetadataTrackIndex:I

    .line 169
    invoke-virtual {v3, v7}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v12

    .line 170
    .local v12, "textTrackGroups":Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_6
    iget v14, v12, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    if-ge v13, v14, :cond_7

    .line 171
    invoke-virtual {v12, v13}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->get(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v14

    .line 172
    .local v14, "trackGroup":Landroidx/media2/exoplayer/external/source/TrackGroup;
    invoke-virtual {v14, v8}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v15

    invoke-static {v15}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/media2/exoplayer/external/Format;

    .line 173
    .local v15, "format":Landroidx/media2/exoplayer/external/Format;
    iget-object v8, v15, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v8}, Landroidx/media2/player/exoplayer/TrackSelector;->getTextTrackType(Ljava/lang/String;)I

    move-result v8

    .line 174
    .local v8, "type":I
    new-instance v7, Landroidx/media2/player/exoplayer/TrackSelector$InternalTextTrackInfo;

    invoke-direct {v7, v13, v8, v15, v2}, Landroidx/media2/player/exoplayer/TrackSelector$InternalTextTrackInfo;-><init>(IILandroidx/media2/exoplayer/external/Format;I)V

    .line 176
    .local v7, "internalTextTrackInfo":Landroidx/media2/player/exoplayer/TrackSelector$InternalTextTrackInfo;
    iget-object v2, v0, Landroidx/media2/player/exoplayer/TrackSelector;->mInternalTextTrackInfos:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v2, v0, Landroidx/media2/player/exoplayer/TrackSelector;->mTextTrackInfos:Ljava/util/List;

    move-object/from16 v16, v1

    .end local v1    # "audioTrackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .local v16, "audioTrackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    iget-object v1, v7, Landroidx/media2/player/exoplayer/TrackSelector$InternalTextTrackInfo;->mTrackInfo:Landroidx/media2/player/common/TrackInfoImpl;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    .end local v7    # "internalTextTrackInfo":Landroidx/media2/player/exoplayer/TrackSelector$InternalTextTrackInfo;
    .end local v8    # "type":I
    .end local v14    # "trackGroup":Landroidx/media2/exoplayer/external/source/TrackGroup;
    .end local v15    # "format":Landroidx/media2/exoplayer/external/Format;
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v16

    const/4 v2, -0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    goto :goto_6

    .end local v16    # "audioTrackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .restart local v1    # "audioTrackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    :cond_7
    move-object/from16 v16, v1

    .line 179
    .end local v1    # "audioTrackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .end local v13    # "i":I
    .restart local v16    # "audioTrackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    const/4 v1, 0x2

    invoke-virtual {v10, v1}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;->get(I)Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    move-result-object v1

    .line 180
    .local v1, "textTrackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    if-nez v1, :cond_8

    const/4 v2, -0x1

    goto :goto_7

    .line 181
    :cond_8
    invoke-interface {v1}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->getTrackGroup()Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->indexOf(Landroidx/media2/exoplayer/external/source/TrackGroup;)I

    move-result v2

    :goto_7
    iput v2, v0, Landroidx/media2/player/exoplayer/TrackSelector;->mPlayerTextTrackIndex:I

    .line 182
    return-void
.end method

.method public handleTextRendererChannelAvailable(II)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "channel"    # I

    .line 187
    const/4 v0, 0x0

    .line 188
    .local v0, "populatedExistingTrack":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mInternalTextTrackInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 189
    iget-object v2, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mInternalTextTrackInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/player/exoplayer/TrackSelector$InternalTextTrackInfo;

    .line 190
    .local v2, "internalTextTrackInfo":Landroidx/media2/player/exoplayer/TrackSelector$InternalTextTrackInfo;
    iget v3, v2, Landroidx/media2/player/exoplayer/TrackSelector$InternalTextTrackInfo;->mType:I

    if-ne v3, p1, :cond_1

    iget v3, v2, Landroidx/media2/player/exoplayer/TrackSelector$InternalTextTrackInfo;->mChannel:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 192
    new-instance v3, Landroidx/media2/player/exoplayer/TrackSelector$InternalTextTrackInfo;

    iget v4, v2, Landroidx/media2/player/exoplayer/TrackSelector$InternalTextTrackInfo;->mPlayerTrackIndex:I

    iget-object v5, v2, Landroidx/media2/player/exoplayer/TrackSelector$InternalTextTrackInfo;->mFormat:Landroidx/media2/exoplayer/external/Format;

    invoke-direct {v3, v4, p1, v5, p2}, Landroidx/media2/player/exoplayer/TrackSelector$InternalTextTrackInfo;-><init>(IILandroidx/media2/exoplayer/external/Format;I)V

    .line 197
    .local v3, "replacementTextTrackInfo":Landroidx/media2/player/exoplayer/TrackSelector$InternalTextTrackInfo;
    iget-object v4, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mInternalTextTrackInfos:Ljava/util/List;

    invoke-interface {v4, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget v4, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mSelectedTextTrackIndex:I

    if-ne v4, v1, :cond_0

    .line 199
    iget-object v4, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mTextRenderer:Landroidx/media2/player/exoplayer/TextRenderer;

    invoke-virtual {v4, p1, p2}, Landroidx/media2/player/exoplayer/TextRenderer;->select(II)V

    goto :goto_1

    .line 198
    :cond_0
    nop

    .line 201
    :goto_1
    const/4 v0, 0x1

    .line 202
    goto :goto_2

    .line 190
    .end local v3    # "replacementTextTrackInfo":Landroidx/media2/player/exoplayer/TrackSelector$InternalTextTrackInfo;
    :cond_1
    nop

    .line 188
    .end local v2    # "internalTextTrackInfo":Landroidx/media2/player/exoplayer/TrackSelector$InternalTextTrackInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 205
    .end local v1    # "i":I
    :cond_2
    :goto_2
    if-nez v0, :cond_3

    .line 206
    new-instance v1, Landroidx/media2/player/exoplayer/TrackSelector$InternalTextTrackInfo;

    iget v2, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mPlayerTextTrackIndex:I

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3, p2}, Landroidx/media2/player/exoplayer/TrackSelector$InternalTextTrackInfo;-><init>(IILandroidx/media2/exoplayer/external/Format;I)V

    .line 208
    .local v1, "internalTextTrackInfo":Landroidx/media2/player/exoplayer/TrackSelector$InternalTextTrackInfo;
    iget-object v2, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mInternalTextTrackInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v2, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mTextTrackInfos:Ljava/util/List;

    iget-object v3, v1, Landroidx/media2/player/exoplayer/TrackSelector$InternalTextTrackInfo;->mTrackInfo:Landroidx/media2/player/common/TrackInfoImpl;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mPendingMetadataUpdate:Z

    goto :goto_3

    .line 205
    .end local v1    # "internalTextTrackInfo":Landroidx/media2/player/exoplayer/TrackSelector$InternalTextTrackInfo;
    :cond_3
    nop

    .line 212
    :goto_3
    return-void
.end method

.method public hasPendingMetadataUpdate()Z
    .locals 2

    .line 215
    iget-boolean v0, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mPendingMetadataUpdate:Z

    .line 216
    .local v0, "pendingMetadataUpdate":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mPendingMetadataUpdate:Z

    .line 217
    return v0
.end method

.method public selectTrack(I)V
    .locals 8
    .param p1, "index"    # I

    .line 250
    iget-object v0, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mVideoTrackInfos:Ljava/util/List;

    .line 251
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Video track selection is not supported"

    .line 250
    invoke-static {v0, v3}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 252
    iget-object v0, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mVideoTrackInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p1, v0

    .line 253
    iget-object v0, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mAudioTrackInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 254
    iput p1, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mSelectedAudioTrackIndex:I

    .line 255
    iget-object v0, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mDefaultTrackSelector:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    .line 256
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;

    .line 257
    .local v0, "mappedTrackInfo":Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v2

    .line 258
    .local v2, "audioTrackGroups":Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    invoke-virtual {v2, p1}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->get(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v3

    .line 260
    .local v3, "selectedTrackGroup":Landroidx/media2/exoplayer/external/source/TrackGroup;
    iget v4, v3, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    new-array v4, v4, [I

    .line 261
    .local v4, "trackIndices":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_1

    .line 262
    aput v5, v4, v5

    .line 261
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 264
    .end local v5    # "i":I
    :cond_1
    new-instance v5, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;

    invoke-direct {v5, p1, v4}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;-><init>(I[I)V

    .line 266
    .local v5, "selectionOverride":Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;
    iget-object v6, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mDefaultTrackSelector:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->buildUponParameters()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v7

    .line 267
    invoke-virtual {v7, v1, v2, v5}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->setSelectionOverride(ILandroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;)Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v1

    .line 268
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->build()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v1

    .line 266
    invoke-virtual {v6, v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->setParameters(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)V

    .line 269
    return-void

    .line 271
    .end local v0    # "mappedTrackInfo":Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;
    .end local v2    # "audioTrackGroups":Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .end local v3    # "selectedTrackGroup":Landroidx/media2/exoplayer/external/source/TrackGroup;
    .end local v4    # "trackIndices":[I
    .end local v5    # "selectionOverride":Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;
    :cond_2
    iget-object v0, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mAudioTrackInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p1, v0

    .line 272
    iget-object v0, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mMetadataTrackInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 273
    iput p1, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mSelectedMetadataTrackIndex:I

    .line 274
    iget-object v0, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mDefaultTrackSelector:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    .line 275
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;

    .line 276
    .restart local v0    # "mappedTrackInfo":Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;
    nop

    .line 277
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v4

    .line 278
    .local v4, "metadataTrackGroups":Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    new-instance v5, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;

    new-array v1, v1, [I

    aput v2, v1, v2

    invoke-direct {v5, p1, v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;-><init>(I[I)V

    move-object v1, v5

    .line 280
    .local v1, "selectionOverride":Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;
    iget-object v5, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mDefaultTrackSelector:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->buildUponParameters()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v6

    .line 281
    invoke-virtual {v6, v3, v2}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->setRendererDisabled(IZ)Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v2

    .line 282
    invoke-virtual {v2, v3, v4, v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->setSelectionOverride(ILandroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;)Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v2

    .line 284
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->build()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v2

    .line 280
    invoke-virtual {v5, v2}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->setParameters(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)V

    .line 285
    return-void

    .line 287
    .end local v0    # "mappedTrackInfo":Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;
    .end local v1    # "selectionOverride":Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;
    .end local v4    # "metadataTrackGroups":Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    :cond_3
    iget-object v0, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mMetadataTrackInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p1, v0

    .line 288
    iget-object v0, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mInternalTextTrackInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 289
    iget-object v0, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mInternalTextTrackInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/player/exoplayer/TrackSelector$InternalTextTrackInfo;

    .line 290
    .local v0, "internalTextTrackInfo":Landroidx/media2/player/exoplayer/TrackSelector$InternalTextTrackInfo;
    iget v3, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mPlayerTextTrackIndex:I

    iget v4, v0, Landroidx/media2/player/exoplayer/TrackSelector$InternalTextTrackInfo;->mPlayerTrackIndex:I

    if-eq v3, v4, :cond_5

    .line 292
    iget-object v3, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mTextRenderer:Landroidx/media2/player/exoplayer/TextRenderer;

    invoke-virtual {v3}, Landroidx/media2/player/exoplayer/TextRenderer;->clearSelection()V

    .line 293
    iget v3, v0, Landroidx/media2/player/exoplayer/TrackSelector$InternalTextTrackInfo;->mPlayerTrackIndex:I

    iput v3, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mPlayerTextTrackIndex:I

    .line 294
    iget-object v3, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mDefaultTrackSelector:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    .line 295
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v3

    invoke-static {v3}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;

    .line 296
    .local v3, "mappedTrackInfo":Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v5

    .line 297
    .local v5, "textTrackGroups":Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    new-instance v6, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;

    iget v7, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mPlayerTextTrackIndex:I

    new-array v1, v1, [I

    aput v2, v1, v2

    invoke-direct {v6, v7, v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;-><init>(I[I)V

    move-object v1, v6

    .line 299
    .restart local v1    # "selectionOverride":Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;
    iget-object v2, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mDefaultTrackSelector:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->buildUponParameters()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v6

    .line 300
    invoke-virtual {v6, v4, v5, v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->setSelectionOverride(ILandroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;)Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v4

    .line 301
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->build()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v4

    .line 299
    invoke-virtual {v2, v4}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->setParameters(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)V

    goto :goto_3

    .line 290
    .end local v1    # "selectionOverride":Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;
    .end local v3    # "mappedTrackInfo":Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;
    .end local v5    # "textTrackGroups":Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    :cond_5
    nop

    .line 303
    :goto_3
    iget v1, v0, Landroidx/media2/player/exoplayer/TrackSelector$InternalTextTrackInfo;->mChannel:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    .line 304
    iget-object v1, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mTextRenderer:Landroidx/media2/player/exoplayer/TextRenderer;

    iget v2, v0, Landroidx/media2/player/exoplayer/TrackSelector$InternalTextTrackInfo;->mType:I

    iget v3, v0, Landroidx/media2/player/exoplayer/TrackSelector$InternalTextTrackInfo;->mChannel:I

    invoke-virtual {v1, v2, v3}, Landroidx/media2/player/exoplayer/TextRenderer;->select(II)V

    goto :goto_4

    .line 303
    :cond_6
    nop

    .line 306
    :goto_4
    iput p1, p0, Landroidx/media2/player/exoplayer/TrackSelector;->mSelectedTextTrackIndex:I

    .line 307
    return-void
.end method
