.class final Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;
.super Ljava/lang/Object;
.source "ProgressiveMediaPeriod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TrackId"
.end annotation


# instance fields
.field public final id:I

.field public final isIcyTrack:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "isIcyTrack"    # Z

    .line 1106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1107
    iput p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;->id:I

    .line 1108
    iput-boolean p2, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;->isIcyTrack:Z

    .line 1109
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1113
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1114
    return v0

    .line 1116
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 1119
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;

    .line 1120
    .local v2, "other":Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;
    iget v3, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;->id:I

    iget v4, v2, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;->id:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;->isIcyTrack:Z

    iget-boolean v4, v2, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;->isIcyTrack:Z

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1116
    .end local v2    # "other":Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;
    :cond_3
    :goto_1
    nop

    .line 1117
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1125
    iget v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;->id:I

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;->isIcyTrack:Z

    add-int/2addr v0, v1

    return v0
.end method
