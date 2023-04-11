.class public final Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;
.super Ljava/lang/Object;
.source "AdPlaybackState.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdState;,
        Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;
    }
.end annotation


# static fields
.field public static final AD_STATE_AVAILABLE:I = 0x1

.field public static final AD_STATE_ERROR:I = 0x4

.field public static final AD_STATE_PLAYED:I = 0x3

.field public static final AD_STATE_SKIPPED:I = 0x2

.field public static final AD_STATE_UNAVAILABLE:I

.field public static final NONE:Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;


# instance fields
.field public final adGroupCount:I

.field public final adGroupTimesUs:[J

.field public final adGroups:[Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;

.field public final adResumePositionUs:J

.field public final contentDurationUs:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 276
    new-instance v0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;

    const/4 v1, 0x0

    new-array v1, v1, [J

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;-><init>([J)V

    sput-object v0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->NONE:Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;

    return-void
.end method

.method public varargs constructor <init>([J)V
    .locals 4
    .param p1, "adGroupTimesUs"    # [J

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    array-length v0, p1

    .line 300
    .local v0, "count":I
    iput v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroupCount:I

    .line 301
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroupTimesUs:[J

    .line 302
    new-array v1, v0, [Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;

    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroups:[Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;

    .line 303
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 304
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroups:[Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;

    new-instance v3, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;

    invoke-direct {v3}, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;-><init>()V

    aput-object v3, v2, v1

    .line 303
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 306
    .end local v1    # "i":I
    :cond_0
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adResumePositionUs:J

    .line 307
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->contentDurationUs:J

    .line 308
    return-void
.end method

.method private constructor <init>([J[Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;JJ)V
    .locals 1
    .param p1, "adGroupTimesUs"    # [J
    .param p2, "adGroups"    # [Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;
    .param p3, "adResumePositionUs"    # J
    .param p5, "contentDurationUs"    # J

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    array-length v0, p2

    iput v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroupCount:I

    .line 313
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroupTimesUs:[J

    .line 314
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroups:[Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;

    .line 315
    iput-wide p3, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adResumePositionUs:J

    .line 316
    iput-wide p5, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->contentDurationUs:J

    .line 317
    return-void
.end method

.method private isPositionBeforeAdGroup(JI)Z
    .locals 9
    .param p1, "positionUs"    # J
    .param p3, "adGroupIndex"    # I

    .line 481
    const-wide/high16 v0, -0x8000000000000000L

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-nez v3, :cond_0

    .line 483
    return v2

    .line 485
    :cond_0
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroupTimesUs:[J

    aget-wide v4, v3, p3

    .line 486
    .local v4, "adGroupPositionUs":J
    const/4 v3, 0x1

    cmp-long v6, v4, v0

    if-nez v6, :cond_3

    .line 487
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->contentDurationUs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v0, v6

    if-eqz v8, :cond_2

    cmp-long v6, p1, v0

    if-gez v6, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 489
    :cond_3
    cmp-long v0, p1, v4

    if-gez v0, :cond_4

    const/4 v2, 0x1

    nop

    :cond_4
    return v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 456
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 457
    return v0

    .line 459
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 462
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;

    .line 463
    .local v2, "that":Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;
    iget v3, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroupCount:I

    iget v4, v2, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroupCount:I

    if-ne v3, v4, :cond_4

    iget-wide v3, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adResumePositionUs:J

    iget-wide v5, v2, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adResumePositionUs:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_4

    iget-wide v3, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->contentDurationUs:J

    iget-wide v5, v2, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->contentDurationUs:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_4

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroupTimesUs:[J

    iget-object v4, v2, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroupTimesUs:[J

    .line 466
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroups:[Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;

    iget-object v4, v2, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroups:[Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;

    .line 467
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_0

    .line 466
    :cond_3
    goto :goto_0

    .line 463
    :cond_4
    nop

    .line 467
    :goto_0
    const/4 v0, 0x0

    .line 463
    :goto_1
    return v0

    .line 459
    .end local v2    # "that":Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;
    :cond_5
    :goto_2
    nop

    .line 460
    return v1
.end method

.method public getAdGroupIndexAfterPositionUs(JJ)I
    .locals 8
    .param p1, "positionUs"    # J
    .param p3, "periodDurationUs"    # J

    .line 351
    const/4 v0, -0x1

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v3, p1, v1

    if-eqz v3, :cond_5

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, p3, v3

    if-eqz v5, :cond_0

    cmp-long v3, p1, p3

    if-ltz v3, :cond_0

    goto :goto_3

    .line 357
    :cond_0
    const/4 v3, 0x0

    .line 358
    .local v3, "index":I
    :goto_0
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroupTimesUs:[J

    array-length v5, v4

    if-ge v3, v5, :cond_3

    aget-wide v5, v4, v3

    cmp-long v7, v5, v1

    if-eqz v7, :cond_3

    aget-wide v5, v4, v3

    cmp-long v4, p1, v5

    if-gez v4, :cond_2

    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroups:[Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;

    aget-object v4, v4, v3

    .line 360
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->hasUnplayedAds()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_2

    .line 358
    :cond_2
    nop

    .line 361
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 358
    :cond_3
    nop

    .line 363
    :goto_2
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroupTimesUs:[J

    array-length v1, v1

    if-ge v3, v1, :cond_4

    move v0, v3

    nop

    :cond_4
    return v0

    .line 351
    .end local v3    # "index":I
    :cond_5
    :goto_3
    nop

    .line 353
    return v0
.end method

.method public getAdGroupIndexForPositionUs(J)I
    .locals 2
    .param p1, "positionUs"    # J

    .line 332
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroupTimesUs:[J

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 333
    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_0

    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->isPositionBeforeAdGroup(JI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 333
    :cond_0
    nop

    .line 336
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroups:[Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->hasUnplayedAds()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 472
    iget v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroupCount:I

    .line 473
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adResumePositionUs:J

    long-to-int v3, v2

    add-int/2addr v1, v3

    .line 474
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->contentDurationUs:J

    long-to-int v3, v2

    add-int/2addr v0, v3

    .line 475
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroupTimesUs:[J

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([J)I

    move-result v2

    add-int/2addr v1, v2

    .line 476
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroups:[Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 477
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public withAdCount(II)Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;
    .locals 9
    .param p1, "adGroupIndex"    # I
    .param p2, "adCount"    # I
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 372
    if-lez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 373
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroups:[Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;

    aget-object v0, v0, p1

    iget v0, v0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->count:I

    if-ne v0, p2, :cond_1

    .line 374
    return-object p0

    .line 376
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroups:[Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;

    array-length v1, v0

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;

    .line 377
    .local v0, "adGroups":[Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroups:[Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;

    aget-object v1, v1, p1

    invoke-virtual {v1, p2}, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->withAdCount(I)Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;

    move-result-object v1

    aput-object v1, v0, p1

    .line 378
    new-instance v8, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroupTimesUs:[J

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adResumePositionUs:J

    iget-wide v6, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->contentDurationUs:J

    move-object v1, v8

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;-><init>([J[Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;JJ)V

    return-object v8
.end method

.method public withAdDurationsUs([[J)Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;
    .locals 9
    .param p1, "adDurationUs"    # [[J
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 427
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroups:[Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;

    array-length v1, v0

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;

    .line 428
    .local v0, "adGroups":[Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;
    const/4 v1, 0x0

    .local v1, "adGroupIndex":I
    :goto_0
    iget v2, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroupCount:I

    if-ge v1, v2, :cond_0

    .line 429
    aget-object v2, v0, v1

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->withAdDurationsUs([J)Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;

    move-result-object v2

    aput-object v2, v0, v1

    .line 428
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 431
    .end local v1    # "adGroupIndex":I
    :cond_0
    new-instance v8, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroupTimesUs:[J

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adResumePositionUs:J

    iget-wide v6, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->contentDurationUs:J

    move-object v1, v8

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;-><init>([J[Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;JJ)V

    return-object v8
.end method

.method public withAdLoadError(II)Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;
    .locals 9
    .param p1, "adGroupIndex"    # I
    .param p2, "adIndexInAdGroup"    # I
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 408
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroups:[Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;

    array-length v1, v0

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;

    .line 409
    .local v0, "adGroups":[Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;
    aget-object v1, v0, p1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p2}, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->withAdState(II)Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;

    move-result-object v1

    aput-object v1, v0, p1

    .line 410
    new-instance v8, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroupTimesUs:[J

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adResumePositionUs:J

    iget-wide v6, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->contentDurationUs:J

    move-object v1, v8

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;-><init>([J[Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;JJ)V

    return-object v8
.end method

.method public withAdResumePositionUs(J)Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;
    .locals 10
    .param p1, "adResumePositionUs"    # J
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 437
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adResumePositionUs:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    .line 438
    return-object p0

    .line 440
    :cond_0
    new-instance v0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroupTimesUs:[J

    iget-object v5, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroups:[Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;

    iget-wide v8, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->contentDurationUs:J

    move-object v3, v0

    move-wide v6, p1

    invoke-direct/range {v3 .. v9}, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;-><init>([J[Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;JJ)V

    return-object v0
.end method

.method public withAdUri(IILandroid/net/Uri;)Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;
    .locals 9
    .param p1, "adGroupIndex"    # I
    .param p2, "adIndexInAdGroup"    # I
    .param p3, "uri"    # Landroid/net/Uri;
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 384
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroups:[Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;

    array-length v1, v0

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;

    .line 385
    .local v0, "adGroups":[Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;
    aget-object v1, v0, p1

    invoke-virtual {v1, p3, p2}, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->withAdUri(Landroid/net/Uri;I)Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;

    move-result-object v1

    aput-object v1, v0, p1

    .line 386
    new-instance v8, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroupTimesUs:[J

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adResumePositionUs:J

    iget-wide v6, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->contentDurationUs:J

    move-object v1, v8

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;-><init>([J[Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;JJ)V

    return-object v8
.end method

.method public withContentDurationUs(J)Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;
    .locals 10
    .param p1, "contentDurationUs"    # J
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 447
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->contentDurationUs:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    .line 448
    return-object p0

    .line 450
    :cond_0
    new-instance v0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroupTimesUs:[J

    iget-object v5, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroups:[Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;

    iget-wide v6, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adResumePositionUs:J

    move-object v3, v0

    move-wide v8, p1

    invoke-direct/range {v3 .. v9}, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;-><init>([J[Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;JJ)V

    return-object v0
.end method

.method public withPlayedAd(II)Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;
    .locals 9
    .param p1, "adGroupIndex"    # I
    .param p2, "adIndexInAdGroup"    # I
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 392
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroups:[Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;

    array-length v1, v0

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;

    .line 393
    .local v0, "adGroups":[Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;
    aget-object v1, v0, p1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p2}, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->withAdState(II)Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;

    move-result-object v1

    aput-object v1, v0, p1

    .line 394
    new-instance v8, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroupTimesUs:[J

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adResumePositionUs:J

    iget-wide v6, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->contentDurationUs:J

    move-object v1, v8

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;-><init>([J[Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;JJ)V

    return-object v8
.end method

.method public withSkippedAd(II)Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;
    .locals 9
    .param p1, "adGroupIndex"    # I
    .param p2, "adIndexInAdGroup"    # I
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 400
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroups:[Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;

    array-length v1, v0

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;

    .line 401
    .local v0, "adGroups":[Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;
    aget-object v1, v0, p1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2}, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->withAdState(II)Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;

    move-result-object v1

    aput-object v1, v0, p1

    .line 402
    new-instance v8, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroupTimesUs:[J

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adResumePositionUs:J

    iget-wide v6, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->contentDurationUs:J

    move-object v1, v8

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;-><init>([J[Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;JJ)V

    return-object v8
.end method

.method public withSkippedAdGroup(I)Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;
    .locals 9
    .param p1, "adGroupIndex"    # I
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 419
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroups:[Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;

    array-length v1, v0

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;

    .line 420
    .local v0, "adGroups":[Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;
    aget-object v1, v0, p1

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->withAllAdsSkipped()Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;

    move-result-object v1

    aput-object v1, v0, p1

    .line 421
    new-instance v8, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroupTimesUs:[J

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adResumePositionUs:J

    iget-wide v6, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->contentDurationUs:J

    move-object v1, v8

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;-><init>([J[Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;JJ)V

    return-object v8
.end method
