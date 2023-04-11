.class public final Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;
.super Landroidx/media2/exoplayer/external/source/CompositeMediaSource;
.source "AdsMediaSource.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$AdPrepareErrorListener;,
        Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$ComponentListener;,
        Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$AdLoadException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media2/exoplayer/external/source/CompositeMediaSource<",
        "Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;",
        ">;"
    }
.end annotation


# static fields
.field private static final DUMMY_CONTENT_MEDIA_PERIOD_ID:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;


# instance fields
.field private adGroupMediaSources:[[Landroidx/media2/exoplayer/external/source/MediaSource;

.field private adGroupTimelines:[[Landroidx/media2/exoplayer/external/Timeline;

.field private final adMediaSourceFactory:Landroidx/media2/exoplayer/external/source/MediaSourceFactory;

.field private adPlaybackState:Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final adViewProvider:Landroidx/media2/exoplayer/external/source/ads/AdsLoader$AdViewProvider;

.field private final adsLoader:Landroidx/media2/exoplayer/external/source/ads/AdsLoader;

.field private componentListener:Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$ComponentListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private contentManifest:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final contentMediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

.field private contentTimeline:Landroidx/media2/exoplayer/external/Timeline;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final deferredMediaPeriodByAdMediaSource:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/media2/exoplayer/external/source/MediaSource;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mainHandler:Landroid/os/Handler;

.field private final period:Landroidx/media2/exoplayer/external/Timeline$Period;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 129
    new-instance v0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;)V

    sput-object v0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->DUMMY_CONTENT_MEDIA_PERIOD_ID:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/source/MediaSource;Landroidx/media2/exoplayer/external/source/MediaSourceFactory;Landroidx/media2/exoplayer/external/source/ads/AdsLoader;Landroidx/media2/exoplayer/external/source/ads/AdsLoader$AdViewProvider;)V
    .locals 2
    .param p1, "contentMediaSource"    # Landroidx/media2/exoplayer/external/source/MediaSource;
    .param p2, "adMediaSourceFactory"    # Landroidx/media2/exoplayer/external/source/MediaSourceFactory;
    .param p3, "adsLoader"    # Landroidx/media2/exoplayer/external/source/ads/AdsLoader;
    .param p4, "adViewProvider"    # Landroidx/media2/exoplayer/external/source/ads/AdsLoader$AdViewProvider;

    .line 182
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource;-><init>()V

    .line 183
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->contentMediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    .line 184
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->adMediaSourceFactory:Landroidx/media2/exoplayer/external/source/MediaSourceFactory;

    .line 185
    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->adsLoader:Landroidx/media2/exoplayer/external/source/ads/AdsLoader;

    .line 186
    iput-object p4, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->adViewProvider:Landroidx/media2/exoplayer/external/source/ads/AdsLoader$AdViewProvider;

    .line 187
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->mainHandler:Landroid/os/Handler;

    .line 188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->deferredMediaPeriodByAdMediaSource:Ljava/util/Map;

    .line 189
    new-instance v0, Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/Timeline$Period;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    .line 190
    const/4 v0, 0x0

    new-array v1, v0, [[Landroidx/media2/exoplayer/external/source/MediaSource;

    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->adGroupMediaSources:[[Landroidx/media2/exoplayer/external/source/MediaSource;

    .line 191
    new-array v0, v0, [[Landroidx/media2/exoplayer/external/Timeline;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->adGroupTimelines:[[Landroidx/media2/exoplayer/external/Timeline;

    .line 192
    invoke-interface {p2}, Landroidx/media2/exoplayer/external/source/MediaSourceFactory;->getSupportedTypes()[I

    move-result-object v0

    invoke-interface {p3, v0}, Landroidx/media2/exoplayer/external/source/ads/AdsLoader;->setSupportedContentTypes([I)V

    .line 193
    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/source/MediaSource;Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;Landroidx/media2/exoplayer/external/source/ads/AdsLoader;Landroidx/media2/exoplayer/external/source/ads/AdsLoader$AdViewProvider;)V
    .locals 1
    .param p1, "contentMediaSource"    # Landroidx/media2/exoplayer/external/source/MediaSource;
    .param p2, "dataSourceFactory"    # Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;
    .param p3, "adsLoader"    # Landroidx/media2/exoplayer/external/source/ads/AdsLoader;
    .param p4, "adViewProvider"    # Landroidx/media2/exoplayer/external/source/ads/AdsLoader$AdViewProvider;

    .line 162
    new-instance v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource$Factory;

    invoke-direct {v0, p2}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource$Factory;-><init>(Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;)V

    invoke-direct {p0, p1, v0, p3, p4}, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;-><init>(Landroidx/media2/exoplayer/external/source/MediaSource;Landroidx/media2/exoplayer/external/source/MediaSourceFactory;Landroidx/media2/exoplayer/external/source/ads/AdsLoader;Landroidx/media2/exoplayer/external/source/ads/AdsLoader$AdViewProvider;)V

    .line 167
    return-void
.end method

.method static synthetic access$000(Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;
    .param p1, "x1"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 63
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->createEventDispatcher(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;
    .param p1, "x1"    # Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;

    .line 63
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->onAdPlaybackState(Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;)V

    return-void
.end method

.method static synthetic access$200(Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;
    .param p1, "x1"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 63
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->createEventDispatcher(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;

    .line 63
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;)Landroidx/media2/exoplayer/external/source/ads/AdsLoader;
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;

    .line 63
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->adsLoader:Landroidx/media2/exoplayer/external/source/ads/AdsLoader;

    return-object v0
.end method

.method private static getAdDurations([[Landroidx/media2/exoplayer/external/Timeline;Landroidx/media2/exoplayer/external/Timeline$Period;)[[J
    .locals 6
    .param p0, "adTimelines"    # [[Landroidx/media2/exoplayer/external/Timeline;
    .param p1, "period"    # Landroidx/media2/exoplayer/external/Timeline$Period;

    .line 355
    array-length v0, p0

    new-array v0, v0, [[J

    .line 356
    .local v0, "adDurations":[[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 357
    aget-object v2, p0, v1

    array-length v2, v2

    new-array v2, v2, [J

    aput-object v2, v0, v1

    .line 358
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    aget-object v3, p0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 359
    aget-object v3, v0, v1

    .line 360
    aget-object v4, p0, v1

    aget-object v4, v4, v2

    if-nez v4, :cond_0

    .line 361
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_2

    .line 362
    :cond_0
    aget-object v4, p0, v1

    aget-object v4, v4, v2

    const/4 v5, 0x0

    invoke-virtual {v4, v5, p1}, Landroidx/media2/exoplayer/external/Timeline;->getPeriod(ILandroidx/media2/exoplayer/external/Timeline$Period;)Landroidx/media2/exoplayer/external/Timeline$Period;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/Timeline$Period;->getDurationUs()J

    move-result-wide v4

    :goto_2
    aput-wide v4, v3, v2

    .line 358
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 356
    .end local v2    # "j":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 365
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method private maybeUpdateSourceInfo()V
    .locals 4

    .line 342
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->contentTimeline:Landroidx/media2/exoplayer/external/Timeline;

    .line 343
    .local v0, "contentTimeline":Landroidx/media2/exoplayer/external/Timeline;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->adPlaybackState:Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 344
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->adGroupTimelines:[[Landroidx/media2/exoplayer/external/Timeline;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->getAdDurations([[Landroidx/media2/exoplayer/external/Timeline;Landroidx/media2/exoplayer/external/Timeline$Period;)[[J

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->withAdDurationsUs([[J)Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->adPlaybackState:Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;

    .line 346
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->adPlaybackState:Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;

    iget v1, v1, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroupCount:I

    if-nez v1, :cond_0

    .line 347
    move-object v1, v0

    goto :goto_0

    .line 348
    :cond_0
    new-instance v1, Landroidx/media2/exoplayer/external/source/ads/SinglePeriodAdTimeline;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->adPlaybackState:Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;

    invoke-direct {v1, v0, v2}, Landroidx/media2/exoplayer/external/source/ads/SinglePeriodAdTimeline;-><init>(Landroidx/media2/exoplayer/external/Timeline;Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;)V

    :goto_0
    nop

    .line 349
    .local v1, "timeline":Landroidx/media2/exoplayer/external/Timeline;
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->contentManifest:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->refreshSourceInfo(Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;)V

    goto :goto_1

    .line 343
    .end local v1    # "timeline":Landroidx/media2/exoplayer/external/Timeline;
    :cond_1
    nop

    .line 351
    :goto_1
    return-void
.end method

.method private onAdPlaybackState(Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;)V
    .locals 3
    .param p1, "adPlaybackState"    # Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;

    .line 307
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->adPlaybackState:Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;

    if-nez v0, :cond_0

    .line 308
    iget v0, p1, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroupCount:I

    new-array v0, v0, [[Landroidx/media2/exoplayer/external/source/MediaSource;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->adGroupMediaSources:[[Landroidx/media2/exoplayer/external/source/MediaSource;

    .line 309
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->adGroupMediaSources:[[Landroidx/media2/exoplayer/external/source/MediaSource;

    const/4 v1, 0x0

    new-array v2, v1, [Landroidx/media2/exoplayer/external/source/MediaSource;

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 310
    iget v0, p1, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroupCount:I

    new-array v0, v0, [[Landroidx/media2/exoplayer/external/Timeline;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->adGroupTimelines:[[Landroidx/media2/exoplayer/external/Timeline;

    .line 311
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->adGroupTimelines:[[Landroidx/media2/exoplayer/external/Timeline;

    new-array v1, v1, [Landroidx/media2/exoplayer/external/Timeline;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 307
    :cond_0
    nop

    .line 313
    :goto_0
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->adPlaybackState:Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;

    .line 314
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->maybeUpdateSourceInfo()V

    .line 315
    return-void
.end method

.method private onAdSourceInfoRefreshed(Landroidx/media2/exoplayer/external/source/MediaSource;IILandroidx/media2/exoplayer/external/Timeline;)V
    .locals 7
    .param p1, "mediaSource"    # Landroidx/media2/exoplayer/external/source/MediaSource;
    .param p2, "adGroupIndex"    # I
    .param p3, "adIndexInAdGroup"    # I
    .param p4, "timeline"    # Landroidx/media2/exoplayer/external/Timeline;

    .line 326
    invoke-virtual {p4}, Landroidx/media2/exoplayer/external/Timeline;->getPeriodCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 327
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->adGroupTimelines:[[Landroidx/media2/exoplayer/external/Timeline;

    aget-object v0, v0, p2

    aput-object p4, v0, p3

    .line 328
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->deferredMediaPeriodByAdMediaSource:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 329
    .local v0, "mediaPeriods":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;>;"
    if-eqz v0, :cond_2

    .line 330
    invoke-virtual {p4, v1}, Landroidx/media2/exoplayer/external/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v1

    .line 331
    .local v1, "periodUid":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 332
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;

    .line 333
    .local v3, "mediaPeriod":Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;
    new-instance v4, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-object v5, v3, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-wide v5, v5, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    invoke-direct {v4, v1, v5, v6}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;J)V

    .line 335
    .local v4, "adSourceMediaPeriodId":Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->createPeriod(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)V

    .line 331
    .end local v3    # "mediaPeriod":Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;
    .end local v4    # "adSourceMediaPeriodId":Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    goto :goto_2

    .line 329
    .end local v1    # "periodUid":Ljava/lang/Object;
    .end local v2    # "i":I
    :cond_2
    nop

    .line 338
    :goto_2
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->maybeUpdateSourceInfo()V

    .line 339
    return-void
.end method

.method private onContentSourceInfoRefreshed(Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;)V
    .locals 2
    .param p1, "timeline"    # Landroidx/media2/exoplayer/external/Timeline;
    .param p2, "manifest"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 318
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/Timeline;->getPeriodCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 319
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->contentTimeline:Landroidx/media2/exoplayer/external/Timeline;

    .line 320
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->contentManifest:Ljava/lang/Object;

    .line 321
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->maybeUpdateSourceInfo()V

    .line 322
    return-void
.end method


# virtual methods
.method public createPeriod(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/upstream/Allocator;J)Landroidx/media2/exoplayer/external/source/MediaPeriod;
    .locals 14
    .param p1, "id"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .param p2, "allocator"    # Landroidx/media2/exoplayer/external/upstream/Allocator;
    .param p3, "startPositionUs"    # J

    .line 212
    move-object v0, p0

    move-object v7, p1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->adPlaybackState:Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;

    .line 213
    .local v8, "adPlaybackState":Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;
    iget v1, v8, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroupCount:I

    if-lez v1, :cond_3

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 214
    iget v9, v7, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 215
    .local v9, "adGroupIndex":I
    iget v10, v7, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    .line 216
    .local v10, "adIndexInAdGroup":I
    iget-object v1, v8, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroups:[Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;

    aget-object v1, v1, v9

    iget-object v1, v1, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    aget-object v1, v1, v10

    .line 217
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/net/Uri;

    .line 218
    .local v11, "adUri":Landroid/net/Uri;
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->adGroupMediaSources:[[Landroidx/media2/exoplayer/external/source/MediaSource;

    aget-object v2, v1, v9

    array-length v2, v2

    if-gt v2, v10, :cond_0

    .line 219
    add-int/lit8 v2, v10, 0x1

    .line 220
    .local v2, "adCount":I
    aget-object v3, v1, v9

    .line 221
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroidx/media2/exoplayer/external/source/MediaSource;

    aput-object v3, v1, v9

    .line 222
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->adGroupTimelines:[[Landroidx/media2/exoplayer/external/Timeline;

    aget-object v3, v1, v9

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroidx/media2/exoplayer/external/Timeline;

    aput-object v3, v1, v9

    goto :goto_0

    .line 218
    .end local v2    # "adCount":I
    :cond_0
    nop

    .line 224
    :goto_0
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->adGroupMediaSources:[[Landroidx/media2/exoplayer/external/source/MediaSource;

    aget-object v1, v1, v9

    aget-object v1, v1, v10

    .line 225
    .local v1, "mediaSource":Landroidx/media2/exoplayer/external/source/MediaSource;
    if-nez v1, :cond_1

    .line 226
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->adMediaSourceFactory:Landroidx/media2/exoplayer/external/source/MediaSourceFactory;

    invoke-interface {v2, v11}, Landroidx/media2/exoplayer/external/source/MediaSourceFactory;->createMediaSource(Landroid/net/Uri;)Landroidx/media2/exoplayer/external/source/MediaSource;

    move-result-object v1

    .line 227
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->adGroupMediaSources:[[Landroidx/media2/exoplayer/external/source/MediaSource;

    aget-object v2, v2, v9

    aput-object v1, v2, v10

    .line 228
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->deferredMediaPeriodByAdMediaSource:Ljava/util/Map;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    invoke-virtual {p0, p1, v1}, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->prepareChildSource(Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/MediaSource;)V

    move-object v12, v1

    goto :goto_1

    .line 225
    :cond_1
    move-object v12, v1

    .line 231
    .end local v1    # "mediaSource":Landroidx/media2/exoplayer/external/source/MediaSource;
    .local v12, "mediaSource":Landroidx/media2/exoplayer/external/source/MediaSource;
    :goto_1
    new-instance v13, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;

    move-object v1, v13

    move-object v2, v12

    move-object v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;-><init>(Landroidx/media2/exoplayer/external/source/MediaSource;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/upstream/Allocator;J)V

    .line 233
    .local v1, "deferredMediaPeriod":Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;
    new-instance v2, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$AdPrepareErrorListener;

    invoke-direct {v2, p0, v11, v9, v10}, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$AdPrepareErrorListener;-><init>(Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;Landroid/net/Uri;II)V

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->setPrepareErrorListener(Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod$PrepareErrorListener;)V

    .line 235
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->deferredMediaPeriodByAdMediaSource:Ljava/util/Map;

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 236
    .local v2, "mediaPeriods":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;>;"
    if-nez v2, :cond_2

    .line 237
    iget-object v3, v0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->adGroupTimelines:[[Landroidx/media2/exoplayer/external/Timeline;

    aget-object v3, v3, v9

    aget-object v3, v3, v10

    .line 238
    invoke-static {v3}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/Timeline;

    const/4 v4, 0x0

    .line 239
    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v3

    .line 240
    .local v3, "periodUid":Ljava/lang/Object;
    new-instance v4, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-wide v5, v7, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    invoke-direct {v4, v3, v5, v6}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;J)V

    .line 241
    .local v4, "adSourceMediaPeriodId":Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    invoke-virtual {v1, v4}, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->createPeriod(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)V

    .line 242
    .end local v3    # "periodUid":Ljava/lang/Object;
    .end local v4    # "adSourceMediaPeriodId":Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    goto :goto_2

    .line 245
    :cond_2
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    :goto_2
    return-object v1

    .line 213
    .end local v1    # "deferredMediaPeriod":Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;
    .end local v2    # "mediaPeriods":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;>;"
    .end local v9    # "adGroupIndex":I
    .end local v10    # "adIndexInAdGroup":I
    .end local v11    # "adUri":Landroid/net/Uri;
    .end local v12    # "mediaSource":Landroidx/media2/exoplayer/external/source/MediaSource;
    :cond_3
    nop

    .line 249
    new-instance v9, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;

    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->contentMediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    move-object v1, v9

    move-object v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;-><init>(Landroidx/media2/exoplayer/external/source/MediaSource;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/upstream/Allocator;J)V

    .line 251
    .local v1, "mediaPeriod":Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;
    invoke-virtual {v1, p1}, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->createPeriod(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)V

    .line 252
    return-object v1
.end method

.method protected getMediaPeriodIdForChildMediaPeriodId(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .locals 1
    .param p1, "childId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .param p2, "mediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 301
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    return-object v0
.end method

.method protected bridge synthetic getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 62
    check-cast p1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    invoke-virtual {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->getMediaPeriodIdForChildMediaPeriodId(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    move-result-object p1

    return-object p1
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 198
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->contentMediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/MediaSource;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final synthetic lambda$prepareSourceInternal$0$AdsMediaSource(Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$ComponentListener;)V
    .locals 2
    .param p1, "componentListener"    # Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$ComponentListener;

    .line 207
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->adsLoader:Landroidx/media2/exoplayer/external/source/ads/AdsLoader;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->adViewProvider:Landroidx/media2/exoplayer/external/source/ads/AdsLoader$AdViewProvider;

    invoke-interface {v0, p1, v1}, Landroidx/media2/exoplayer/external/source/ads/AdsLoader;->start(Landroidx/media2/exoplayer/external/source/ads/AdsLoader$EventListener;Landroidx/media2/exoplayer/external/source/ads/AdsLoader$AdViewProvider;)V

    return-void
.end method

.method protected onChildSourceInfoRefreshed(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/source/MediaSource;Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;)V
    .locals 2
    .param p1, "mediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .param p2, "mediaSource"    # Landroidx/media2/exoplayer/external/source/MediaSource;
    .param p3, "timeline"    # Landroidx/media2/exoplayer/external/Timeline;
    .param p4, "manifest"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 287
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    iget v0, p1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 289
    .local v0, "adGroupIndex":I
    iget v1, p1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    .line 290
    .local v1, "adIndexInAdGroup":I
    invoke-direct {p0, p2, v0, v1, p3}, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->onAdSourceInfoRefreshed(Landroidx/media2/exoplayer/external/source/MediaSource;IILandroidx/media2/exoplayer/external/Timeline;)V

    .line 291
    .end local v0    # "adGroupIndex":I
    .end local v1    # "adIndexInAdGroup":I
    goto :goto_0

    .line 292
    :cond_0
    invoke-direct {p0, p3, p4}, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->onContentSourceInfoRefreshed(Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;)V

    .line 294
    :goto_0
    return-void
.end method

.method protected bridge synthetic onChildSourceInfoRefreshed(Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/MediaSource;Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;)V
    .locals 0
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 62
    check-cast p1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->onChildSourceInfoRefreshed(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/source/MediaSource;Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;)V

    return-void
.end method

.method public prepareSourceInternal(Landroidx/media2/exoplayer/external/upstream/TransferListener;)V
    .locals 3
    .param p1, "mediaTransferListener"    # Landroidx/media2/exoplayer/external/upstream/TransferListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 203
    invoke-super {p0, p1}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource;->prepareSourceInternal(Landroidx/media2/exoplayer/external/upstream/TransferListener;)V

    .line 204
    new-instance v0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$ComponentListener;

    invoke-direct {v0, p0}, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$ComponentListener;-><init>(Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;)V

    .line 205
    .local v0, "componentListener":Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$ComponentListener;
    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->componentListener:Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$ComponentListener;

    .line 206
    sget-object v1, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->DUMMY_CONTENT_MEDIA_PERIOD_ID:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->contentMediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    invoke-virtual {p0, v1, v2}, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->prepareChildSource(Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/MediaSource;)V

    .line 207
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->mainHandler:Landroid/os/Handler;

    new-instance v2, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$$Lambda$0;

    invoke-direct {v2, p0, v0}, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$$Lambda$0;-><init>(Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$ComponentListener;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 208
    return-void
.end method

.method public releasePeriod(Landroidx/media2/exoplayer/external/source/MediaPeriod;)V
    .locals 3
    .param p1, "mediaPeriod"    # Landroidx/media2/exoplayer/external/source/MediaPeriod;

    .line 258
    move-object v0, p1

    check-cast v0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;

    .line 259
    .local v0, "deferredMediaPeriod":Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->deferredMediaPeriodByAdMediaSource:Ljava/util/Map;

    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    .line 260
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 261
    .local v1, "mediaPeriods":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;>;"
    if-eqz v1, :cond_0

    .line 262
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 261
    :cond_0
    nop

    .line 264
    :goto_0
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->releasePeriod()V

    .line 265
    return-void
.end method

.method public releaseSourceInternal()V
    .locals 2

    .line 269
    invoke-super {p0}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource;->releaseSourceInternal()V

    .line 270
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->componentListener:Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$ComponentListener;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$ComponentListener;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$ComponentListener;->release()V

    .line 271
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->componentListener:Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$ComponentListener;

    .line 272
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->deferredMediaPeriodByAdMediaSource:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 273
    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->contentTimeline:Landroidx/media2/exoplayer/external/Timeline;

    .line 274
    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->contentManifest:Ljava/lang/Object;

    .line 275
    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->adPlaybackState:Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;

    .line 276
    const/4 v0, 0x0

    new-array v1, v0, [[Landroidx/media2/exoplayer/external/source/MediaSource;

    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->adGroupMediaSources:[[Landroidx/media2/exoplayer/external/source/MediaSource;

    .line 277
    new-array v0, v0, [[Landroidx/media2/exoplayer/external/Timeline;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->adGroupTimelines:[[Landroidx/media2/exoplayer/external/Timeline;

    .line 278
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->adsLoader:Landroidx/media2/exoplayer/external/source/ads/AdsLoader;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$$Lambda$1;->get$Lambda(Landroidx/media2/exoplayer/external/source/ads/AdsLoader;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 279
    return-void
.end method
