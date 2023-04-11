.class public final Landroidx/media2/player/exoplayer/TrackSelector$InternalTextTrackInfo;
.super Ljava/lang/Object;
.source "TrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/exoplayer/TrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InternalTextTrackInfo"
.end annotation


# static fields
.field public static final MIMETYPE_TEXT_CEA_608:Ljava/lang/String; = "text/cea-608"

.field public static final MIMETYPE_TEXT_CEA_708:Ljava/lang/String; = "text/cea-708"

.field public static final UNSET:I = -0x1


# instance fields
.field public final mChannel:I

.field public final mFormat:Landroidx/media2/exoplayer/external/Format;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final mPlayerTrackIndex:I

.field public final mTrackInfo:Landroidx/media2/player/common/TrackInfoImpl;

.field public final mType:I


# direct methods
.method constructor <init>(IILandroidx/media2/exoplayer/external/Format;I)V
    .locals 3
    .param p1, "playerTrackIndex"    # I
    .param p2, "type"    # I
    .param p3, "format"    # Landroidx/media2/exoplayer/external/Format;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "channel"    # I

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    iput p1, p0, Landroidx/media2/player/exoplayer/TrackSelector$InternalTextTrackInfo;->mPlayerTrackIndex:I

    .line 358
    if-nez p2, :cond_0

    if-nez p4, :cond_0

    .line 359
    const/4 v0, 0x5

    goto :goto_0

    .line 358
    :cond_0
    nop

    .line 360
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    if-ne p4, v0, :cond_1

    .line 361
    const/4 v0, 0x1

    goto :goto_0

    .line 360
    :cond_1
    nop

    .line 363
    if-nez p3, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget v0, p3, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    .line 365
    .local v0, "selectionFlags":I
    :goto_0
    if-nez p3, :cond_3

    const-string/jumbo v1, "und"

    goto :goto_1

    :cond_3
    iget-object v1, p3, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    .line 366
    .local v1, "language":Ljava/lang/String;
    :goto_1
    invoke-static {p2, v1, v0}, Landroidx/media2/player/exoplayer/TrackSelector$InternalTextTrackInfo;->getTrackInfo(ILjava/lang/String;I)Landroidx/media2/player/common/TrackInfoImpl;

    move-result-object v2

    iput-object v2, p0, Landroidx/media2/player/exoplayer/TrackSelector$InternalTextTrackInfo;->mTrackInfo:Landroidx/media2/player/common/TrackInfoImpl;

    .line 367
    iput p2, p0, Landroidx/media2/player/exoplayer/TrackSelector$InternalTextTrackInfo;->mType:I

    .line 368
    iput p4, p0, Landroidx/media2/player/exoplayer/TrackSelector$InternalTextTrackInfo;->mChannel:I

    .line 369
    iput-object p3, p0, Landroidx/media2/player/exoplayer/TrackSelector$InternalTextTrackInfo;->mFormat:Landroidx/media2/exoplayer/external/Format;

    .line 370
    return-void
.end method

.method static getTrackInfo(ILjava/lang/String;I)Landroidx/media2/player/common/TrackInfoImpl;
    .locals 6
    .param p0, "type"    # I
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "selectionFlags"    # I

    .line 374
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 375
    .local v0, "mediaFormat":Landroid/media/MediaFormat;
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p0, :cond_0

    .line 376
    const-string v3, "mime"

    const-string v4, "text/cea-608"

    invoke-virtual {v0, v3, v4}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 377
    :cond_0
    if-ne p0, v2, :cond_1

    .line 378
    const-string v3, "mime"

    const-string v4, "text/cea-708"

    invoke-virtual {v0, v3, v4}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 379
    :cond_1
    if-ne p0, v1, :cond_6

    .line 380
    const-string v3, "mime"

    const-string v4, "text/vtt"

    invoke-virtual {v0, v3, v4}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    :goto_0
    const-string v3, "language"

    invoke-virtual {v0, v3, p1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const-string v3, "is-forced-subtitle"

    and-int/lit8 v4, p2, 0x2

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v0, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 388
    const-string v3, "is-autoselect"

    and-int/lit8 v4, p2, 0x4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v0, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 390
    const-string v3, "is-default"

    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v0, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 394
    if-ne p0, v1, :cond_5

    goto :goto_4

    :cond_5
    const/4 v5, 0x4

    :goto_4
    move v1, v5

    .line 397
    .local v1, "trackInfoType":I
    new-instance v2, Landroidx/media2/player/common/TrackInfoImpl;

    invoke-direct {v2, v1, v0}, Landroidx/media2/player/common/TrackInfoImpl;-><init>(ILandroid/media/MediaFormat;)V

    return-object v2

    .line 383
    .end local v1    # "trackInfoType":I
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method
