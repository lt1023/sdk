.class public final Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;
.super Ljava/lang/Object;
.source "AdPlaybackState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdGroup"
.end annotation


# instance fields
.field public final count:I

.field public final durationsUs:[J

.field public final states:[I

.field public final uris:[Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 65
    const/4 v0, 0x0

    new-array v1, v0, [I

    new-array v2, v0, [Landroid/net/Uri;

    new-array v0, v0, [J

    const/4 v3, -0x1

    invoke-direct {p0, v3, v1, v2, v0}, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;-><init>(I[I[Landroid/net/Uri;[J)V

    .line 70
    return-void
.end method

.method private constructor <init>(I[I[Landroid/net/Uri;[J)V
    .locals 2
    .param p1, "count"    # I
    .param p2, "states"    # [I
    .param p3, "uris"    # [Landroid/net/Uri;
    .param p4, "durationsUs"    # [J

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 75
    iput p1, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->count:I

    .line 76
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->states:[I

    .line 77
    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    .line 78
    iput-object p4, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->durationsUs:[J

    .line 79
    return-void
.end method

.method private static copyDurationsUsWithSpaceForAdCount([JI)[J
    .locals 4
    .param p0, "durationsUs"    # [J
    .param p1, "count"    # I
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 241
    array-length v0, p0

    .line 242
    .local v0, "oldDurationsUsCount":I
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 243
    .local v1, "newDurationsUsCount":I
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p0

    .line 244
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {p0, v0, v1, v2, v3}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 245
    return-object p0
.end method

.method private static copyStatesWithSpaceForAdCount([II)[I
    .locals 3
    .param p0, "states"    # [I
    .param p1, "count"    # I
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 232
    array-length v0, p0

    .line 233
    .local v0, "oldStateCount":I
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 234
    .local v1, "newStateCount":I
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    .line 235
    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 236
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 112
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 113
    return v0

    .line 115
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 118
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;

    .line 119
    .local v2, "adGroup":Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;
    iget v3, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->count:I

    iget v4, v2, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->count:I

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    iget-object v4, v2, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    .line 120
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->states:[I

    iget-object v4, v2, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->states:[I

    .line 121
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->durationsUs:[J

    iget-object v4, v2, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->durationsUs:[J

    .line 122
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_0

    .line 121
    :cond_3
    goto :goto_0

    .line 120
    :cond_4
    goto :goto_0

    .line 119
    :cond_5
    nop

    .line 122
    :goto_0
    const/4 v0, 0x0

    .line 119
    :goto_1
    return v0

    .line 115
    .end local v2    # "adGroup":Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;
    :cond_6
    :goto_2
    nop

    .line 116
    return v1
.end method

.method public getFirstAdIndexToPlay()I
    .locals 1

    .line 86
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->getNextAdIndexToPlay(I)I

    move-result v0

    return v0
.end method

.method public getNextAdIndexToPlay(I)I
    .locals 3
    .param p1, "lastPlayedAdIndex"    # I

    .line 94
    add-int/lit8 v0, p1, 0x1

    .line 95
    .local v0, "nextAdIndexToPlay":I
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->states:[I

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 96
    aget v2, v1, v0

    if-eqz v2, :cond_1

    aget v1, v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 98
    goto :goto_1

    .line 100
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_1
    goto :goto_1

    .line 95
    :cond_2
    nop

    .line 102
    :goto_1
    return v0
.end method

.method public hasUnplayedAds()Z
    .locals 2

    .line 107
    iget v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->count:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->getFirstAdIndexToPlay()I

    move-result v0

    iget v1, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->count:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 127
    iget v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->count:I

    .line 128
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 129
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->states:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v0, v2

    .line 130
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->durationsUs:[J

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([J)I

    move-result v2

    add-int/2addr v1, v2

    .line 131
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public withAdCount(I)Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;
    .locals 4
    .param p1, "count"    # I
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 140
    iget v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->count:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->states:[I

    array-length v0, v0

    if-gt v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 141
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->states:[I

    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->copyStatesWithSpaceForAdCount([II)[I

    move-result-object v0

    .line 142
    .local v0, "states":[I
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->durationsUs:[J

    invoke-static {v1, p1}, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->copyDurationsUsWithSpaceForAdCount([JI)[J

    move-result-object v1

    .line 143
    .local v1, "durationsUs":[J
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    invoke-static {v2, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/Uri;

    .line 144
    .local v2, "uris":[Landroid/net/Uri;
    new-instance v3, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;

    invoke-direct {v3, p1, v0, v2, v1}, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;-><init>(I[I[Landroid/net/Uri;[J)V

    return-object v3
.end method

.method public withAdDurationsUs([J)Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;
    .locals 4
    .param p1, "durationsUs"    # [J
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 200
    iget v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->count:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    array-length v0, p1

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    array-length v1, v1

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 201
    array-length v0, p1

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 202
    array-length v0, v1

    invoke-static {p1, v0}, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->copyDurationsUsWithSpaceForAdCount([JI)[J

    move-result-object p1

    goto :goto_2

    .line 201
    :cond_2
    nop

    .line 204
    :goto_2
    new-instance v0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;

    iget v1, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->count:I

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->states:[I

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    invoke-direct {v0, v1, v2, v3, p1}, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;-><init>(I[I[Landroid/net/Uri;[J)V

    return-object v0
.end method

.method public withAdState(II)Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;
    .locals 5
    .param p1, "state"    # I
    .param p2, "index"    # I
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 180
    iget v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->count:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ge p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 181
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->states:[I

    add-int/lit8 v3, p2, 0x1

    invoke-static {v0, v3}, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->copyStatesWithSpaceForAdCount([II)[I

    move-result-object v0

    .line 182
    .local v0, "states":[I
    aget v3, v0, p2

    if-eqz v3, :cond_3

    aget v3, v0, p2

    if-eq v3, v2, :cond_3

    aget v3, v0, p2

    if-ne v3, p1, :cond_2

    goto :goto_2

    :cond_2
    goto :goto_3

    :cond_3
    :goto_2
    const/4 v1, 0x1

    :goto_3
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 187
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->durationsUs:[J

    array-length v2, v1

    array-length v3, v0

    if-ne v2, v3, :cond_4

    .line 188
    goto :goto_4

    .line 189
    :cond_4
    array-length v2, v0

    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->copyDurationsUsWithSpaceForAdCount([JI)[J

    move-result-object v1

    :goto_4
    nop

    .line 192
    .local v1, "durationsUs":[J
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    array-length v3, v2

    array-length v4, v0

    if-ne v3, v4, :cond_5

    goto :goto_5

    :cond_5
    array-length v3, v0

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/Uri;

    .line 193
    .local v2, "uris":[Landroid/net/Uri;
    :goto_5
    aput p1, v0, p2

    .line 194
    new-instance v3, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;

    iget v4, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->count:I

    invoke-direct {v3, v4, v0, v2, v1}, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;-><init>(I[I[Landroid/net/Uri;[J)V

    return-object v3
.end method

.method public withAdUri(Landroid/net/Uri;I)Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "index"    # I
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 157
    iget v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->count:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ge p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 158
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->states:[I

    add-int/lit8 v3, p2, 0x1

    invoke-static {v0, v3}, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->copyStatesWithSpaceForAdCount([II)[I

    move-result-object v0

    .line 159
    .local v0, "states":[I
    aget v3, v0, p2

    if-nez v3, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 161
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->durationsUs:[J

    array-length v3, v1

    array-length v4, v0

    if-ne v3, v4, :cond_3

    .line 162
    goto :goto_2

    .line 163
    :cond_3
    array-length v3, v0

    invoke-static {v1, v3}, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->copyDurationsUsWithSpaceForAdCount([JI)[J

    move-result-object v1

    :goto_2
    nop

    .line 164
    .local v1, "durationsUs":[J
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    array-length v4, v0

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/net/Uri;

    .line 165
    .local v3, "uris":[Landroid/net/Uri;
    aput-object p1, v3, p2

    .line 166
    aput v2, v0, p2

    .line 167
    new-instance v2, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;

    iget v4, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->count:I

    invoke-direct {v2, v4, v0, v3, v1}, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;-><init>(I[I[Landroid/net/Uri;[J)V

    return-object v2
.end method

.method public withAllAdsSkipped()Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;
    .locals 5
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 213
    iget v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->count:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 214
    new-instance v0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;

    const/4 v1, 0x0

    new-array v2, v1, [I

    new-array v3, v1, [Landroid/net/Uri;

    new-array v4, v1, [J

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;-><init>(I[I[Landroid/net/Uri;[J)V

    return-object v0

    .line 220
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->states:[I

    array-length v1, v0

    .line 221
    .local v1, "count":I
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    .line 222
    .local v0, "states":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 223
    aget v3, v0, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    aget v3, v0, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_2

    .line 224
    :cond_2
    :goto_1
    const/4 v3, 0x2

    aput v3, v0, v2

    .line 222
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 227
    .end local v2    # "i":I
    :cond_3
    new-instance v2, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->durationsUs:[J

    invoke-direct {v2, v1, v0, v3, v4}, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;-><init>(I[I[Landroid/net/Uri;[J)V

    return-object v2
.end method
