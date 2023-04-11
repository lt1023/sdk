.class public final Landroidx/media2/player/MediaPlayer$TrackInfo;
.super Ljava/lang/Object;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrackInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/player/MediaPlayer$TrackInfo$MediaTrackType;
    }
.end annotation


# static fields
.field public static final MEDIA_TRACK_TYPE_AUDIO:I = 0x2

.field public static final MEDIA_TRACK_TYPE_METADATA:I = 0x5

.field public static final MEDIA_TRACK_TYPE_SUBTITLE:I = 0x4

.field public static final MEDIA_TRACK_TYPE_UNKNOWN:I = 0x0

.field public static final MEDIA_TRACK_TYPE_VIDEO:I = 0x1


# instance fields
.field private final mFormat:Landroid/media/MediaFormat;

.field private final mId:I

.field private final mItem:Landroidx/media2/common/MediaItem;

.field private final mTrackType:I


# direct methods
.method public constructor <init>(ILandroidx/media2/common/MediaItem;ILandroid/media/MediaFormat;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "item"    # Landroidx/media2/common/MediaItem;
    .param p3, "type"    # I
    .param p4, "format"    # Landroid/media/MediaFormat;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 3467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3468
    iput p1, p0, Landroidx/media2/player/MediaPlayer$TrackInfo;->mId:I

    .line 3469
    iput-object p2, p0, Landroidx/media2/player/MediaPlayer$TrackInfo;->mItem:Landroidx/media2/common/MediaItem;

    .line 3470
    iput p3, p0, Landroidx/media2/player/MediaPlayer$TrackInfo;->mTrackType:I

    .line 3471
    iput-object p4, p0, Landroidx/media2/player/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    .line 3472
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 3518
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 3519
    return v0

    .line 3521
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 3522
    return v1

    .line 3524
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 3525
    return v1

    .line 3527
    :cond_2
    move-object v2, p1

    check-cast v2, Landroidx/media2/player/MediaPlayer$TrackInfo;

    .line 3528
    .local v2, "other":Landroidx/media2/player/MediaPlayer$TrackInfo;
    iget v3, p0, Landroidx/media2/player/MediaPlayer$TrackInfo;->mId:I

    iget v4, v2, Landroidx/media2/player/MediaPlayer$TrackInfo;->mId:I

    if-eq v3, v4, :cond_3

    .line 3529
    return v1

    .line 3531
    :cond_3
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$TrackInfo;->mItem:Landroidx/media2/common/MediaItem;

    if-nez v3, :cond_4

    iget-object v3, v2, Landroidx/media2/player/MediaPlayer$TrackInfo;->mItem:Landroidx/media2/common/MediaItem;

    if-nez v3, :cond_4

    .line 3532
    return v0

    .line 3531
    :cond_4
    nop

    .line 3533
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$TrackInfo;->mItem:Landroidx/media2/common/MediaItem;

    if-eqz v0, :cond_7

    iget-object v3, v2, Landroidx/media2/player/MediaPlayer$TrackInfo;->mItem:Landroidx/media2/common/MediaItem;

    if-nez v3, :cond_5

    goto :goto_0

    .line 3536
    :cond_5
    invoke-virtual {v0}, Landroidx/media2/common/MediaItem;->getMediaId()Ljava/lang/String;

    move-result-object v0

    .line 3537
    .local v0, "mediaId":Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 3538
    iget-object v1, v2, Landroidx/media2/player/MediaPlayer$TrackInfo;->mItem:Landroidx/media2/common/MediaItem;

    invoke-virtual {v1}, Landroidx/media2/common/MediaItem;->getMediaId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 3540
    :cond_6
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$TrackInfo;->mItem:Landroidx/media2/common/MediaItem;

    iget-object v3, v2, Landroidx/media2/player/MediaPlayer$TrackInfo;->mItem:Landroidx/media2/common/MediaItem;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 3533
    .end local v0    # "mediaId":Ljava/lang/String;
    :cond_7
    :goto_0
    nop

    .line 3534
    return v1
.end method

.method public getFormat()Landroid/media/MediaFormat;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 3451
    iget v0, p0, Landroidx/media2/player/MediaPlayer$TrackInfo;->mTrackType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 3452
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    return-object v0

    .line 3454
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getId()I
    .locals 1

    .line 3458
    iget v0, p0, Landroidx/media2/player/MediaPlayer$TrackInfo;->mId:I

    return v0
.end method

.method public getLanguage()Ljava/util/Locale;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3438
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    const-string v1, "language"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3439
    .local v0, "language":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_1

    .line 3440
    const-string/jumbo v0, "und"

    goto :goto_1

    .line 3439
    :cond_1
    nop

    .line 3442
    :goto_1
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method getMediaItem()Landroidx/media2/common/MediaItem;
    .locals 1

    .line 3462
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$TrackInfo;->mItem:Landroidx/media2/common/MediaItem;

    return-object v0
.end method

.method public getTrackType()I
    .locals 1

    .line 3429
    iget v0, p0, Landroidx/media2/player/MediaPlayer$TrackInfo;->mTrackType:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 3501
    const/16 v0, 0x1f

    .line 3502
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 3503
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroidx/media2/player/MediaPlayer$TrackInfo;->mId:I

    add-int/2addr v2, v3

    .line 3504
    .end local v1    # "result":I
    .local v2, "result":I
    const/4 v1, 0x0

    .line 3505
    .local v1, "hashCode":I
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$TrackInfo;->mItem:Landroidx/media2/common/MediaItem;

    if-eqz v3, :cond_1

    .line 3506
    invoke-virtual {v3}, Landroidx/media2/common/MediaItem;->getMediaId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3507
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$TrackInfo;->mItem:Landroidx/media2/common/MediaItem;

    invoke-virtual {v3}, Landroidx/media2/common/MediaItem;->getMediaId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 3509
    :cond_0
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$TrackInfo;->mItem:Landroidx/media2/common/MediaItem;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    .line 3505
    :cond_1
    nop

    .line 3512
    :goto_0
    mul-int/lit8 v3, v2, 0x1f

    add-int/2addr v3, v1

    .line 3513
    .end local v2    # "result":I
    .local v3, "result":I
    return v3
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 3476
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3477
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3478
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/media2/player/MediaPlayer$TrackInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3479
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3480
    iget v1, p0, Landroidx/media2/player/MediaPlayer$TrackInfo;->mTrackType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    .line 3491
    const-string v1, "UNKNOWN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3485
    :pswitch_0
    const-string v1, "AUDIO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3486
    goto :goto_0

    .line 3482
    :pswitch_1
    const-string v1, "VIDEO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3483
    goto :goto_0

    .line 3488
    :cond_0
    const-string v1, "SUBTITLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3489
    nop

    .line 3494
    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3495
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3496
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
