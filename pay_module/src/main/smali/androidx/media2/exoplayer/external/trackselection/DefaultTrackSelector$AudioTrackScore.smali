.class public final Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;
.super Ljava/lang/Object;
.source "DefaultTrackSelector.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "AudioTrackScore"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;",
        ">;"
    }
.end annotation


# instance fields
.field private final bitrate:I

.field private final channelCount:I

.field private final isDefaultSelectionFlag:Z

.field public final isWithinConstraints:Z

.field private final isWithinRendererCapabilities:Z

.field private final localeLanguageMatchIndex:I

.field private final localeLanguageScore:I

.field private final parameters:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

.field private final preferredLanguageScore:I

.field private final sampleRate:I


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;I)V
    .locals 5
    .param p1, "format"    # Landroidx/media2/exoplayer/external/Format;
    .param p2, "parameters"    # Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;
    .param p3, "formatSupport"    # I

    .line 2414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2415
    iput-object p2, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->parameters:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    .line 2416
    const/4 v0, 0x0

    invoke-static {p3, v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->isWithinRendererCapabilities:Z

    .line 2417
    iget-object v1, p2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguage:Ljava/lang/String;

    invoke-static {p1, v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->getFormatLanguageScore(Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->preferredLanguageScore:I

    .line 2418
    iget v1, p1, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->isDefaultSelectionFlag:Z

    .line 2419
    iget v1, p1, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    iput v1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->channelCount:I

    .line 2420
    iget v1, p1, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    iput v1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->sampleRate:I

    .line 2421
    iget v1, p1, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    iput v1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->bitrate:I

    .line 2422
    iget v1, p1, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    iget v1, p1, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    iget v4, p2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->maxAudioBitrate:I

    if-gt v1, v4, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_2

    :cond_2
    :goto_1
    iget v1, p1, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    if-eq v1, v3, :cond_3

    iget v1, p1, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    iget v3, p2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->maxAudioChannelCount:I

    if-gt v1, v3, :cond_1

    goto :goto_3

    :goto_2
    goto :goto_4

    :cond_3
    :goto_3
    const/4 v0, 0x1

    :goto_4
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->isWithinConstraints:Z

    .line 2426
    invoke-static {}, Landroidx/media2/exoplayer/external/util/Util;->getSystemLanguageCodes()[Ljava/lang/String;

    move-result-object v0

    .line 2427
    .local v0, "localeLanguages":[Ljava/lang/String;
    const v1, 0x7fffffff

    .line 2428
    .local v1, "bestMatchIndex":I
    const/4 v2, 0x0

    .line 2429
    .local v2, "bestMatchScore":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5
    array-length v4, v0

    if-ge v3, v4, :cond_5

    .line 2430
    aget-object v4, v0, v3

    invoke-static {p1, v4}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->getFormatLanguageScore(Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;)I

    move-result v4

    .line 2431
    .local v4, "score":I
    if-lez v4, :cond_4

    .line 2432
    move v1, v3

    .line 2433
    move v2, v4

    .line 2434
    goto :goto_6

    .line 2431
    :cond_4
    nop

    .line 2429
    .end local v4    # "score":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 2437
    .end local v3    # "i":I
    :cond_5
    :goto_6
    iput v1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->localeLanguageMatchIndex:I

    .line 2438
    iput v2, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->localeLanguageScore:I

    .line 2439
    return-void
.end method


# virtual methods
.method public compareTo(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;)I
    .locals 4
    .param p1, "other"    # Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2450
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->isWithinRendererCapabilities:Z

    iget-boolean v1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->isWithinRendererCapabilities:Z

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_1

    .line 2451
    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    return v2

    .line 2453
    :cond_1
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->preferredLanguageScore:I

    iget v1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->preferredLanguageScore:I

    if-eq v0, v1, :cond_2

    .line 2454
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->access$300(II)I

    move-result v0

    return v0

    .line 2456
    :cond_2
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->isWithinConstraints:Z

    iget-boolean v1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->isWithinConstraints:Z

    if-eq v0, v1, :cond_4

    .line 2457
    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, -0x1

    :goto_1
    return v2

    .line 2459
    :cond_4
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->parameters:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v0, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->forceLowestBitrate:Z

    if-eqz v0, :cond_7

    .line 2460
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->bitrate:I

    iget v1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->bitrate:I

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->access$400(II)I

    move-result v0

    .line 2461
    .local v0, "bitrateComparison":I
    if-eqz v0, :cond_6

    .line 2462
    if-lez v0, :cond_5

    const/4 v2, -0x1

    nop

    :cond_5
    return v2

    .line 2461
    :cond_6
    goto :goto_2

    .line 2459
    .end local v0    # "bitrateComparison":I
    :cond_7
    nop

    .line 2465
    :goto_2
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->isDefaultSelectionFlag:Z

    iget-boolean v1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->isDefaultSelectionFlag:Z

    if-eq v0, v1, :cond_9

    .line 2466
    if-eqz v0, :cond_8

    goto :goto_3

    :cond_8
    const/4 v2, -0x1

    :goto_3
    return v2

    .line 2468
    :cond_9
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->localeLanguageMatchIndex:I

    iget v1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->localeLanguageMatchIndex:I

    if-eq v0, v1, :cond_a

    .line 2469
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->access$300(II)I

    move-result v0

    neg-int v0, v0

    return v0

    .line 2471
    :cond_a
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->localeLanguageScore:I

    iget v1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->localeLanguageScore:I

    if-eq v0, v1, :cond_b

    .line 2472
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->access$300(II)I

    move-result v0

    return v0

    .line 2476
    :cond_b
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->isWithinConstraints:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->isWithinRendererCapabilities:Z

    if-eqz v0, :cond_c

    goto :goto_4

    :cond_c
    const/4 v2, -0x1

    :goto_4
    move v0, v2

    .line 2477
    .local v0, "resultSign":I
    iget v1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->channelCount:I

    iget v2, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->channelCount:I

    if-eq v1, v2, :cond_d

    .line 2478
    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->access$300(II)I

    move-result v1

    mul-int v1, v1, v0

    return v1

    .line 2480
    :cond_d
    iget v1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->sampleRate:I

    iget v2, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->sampleRate:I

    if-eq v1, v2, :cond_e

    .line 2481
    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->access$300(II)I

    move-result v1

    mul-int v1, v1, v0

    return v1

    .line 2483
    :cond_e
    iget v1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->bitrate:I

    iget v2, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->bitrate:I

    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->access$300(II)I

    move-result v1

    mul-int v1, v1, v0

    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2400
    check-cast p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;

    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->compareTo(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;)I

    move-result p1

    return p1
.end method
