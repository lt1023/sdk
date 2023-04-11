.class public final Landroidx/media2/exoplayer/external/source/SilenceMediaSource;
.super Landroidx/media2/exoplayer/external/source/BaseMediaSource;
.source "SilenceMediaSource.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/SilenceMediaSource$SilenceSampleStream;,
        Landroidx/media2/exoplayer/external/source/SilenceMediaSource$SilenceMediaPeriod;
    }
.end annotation


# static fields
.field private static final CHANNEL_COUNT:I = 0x2

.field private static final ENCODING:I = 0x2

.field private static final FORMAT:Landroidx/media2/exoplayer/external/Format;

.field private static final SAMPLE_RATE_HZ:I = 0xac44

.field private static final SILENCE_SAMPLE:[B


# instance fields
.field private final durationUs:J


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 47
    const-string v1, "audio/raw"

    .line 48
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x2

    const v6, 0xac44

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v0 .. v11}, Landroidx/media2/exoplayer/external/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/SilenceMediaSource;->FORMAT:Landroidx/media2/exoplayer/external/Format;

    .line 61
    nop

    .line 62
    const/4 v0, 0x2

    invoke-static {v0, v0}, Landroidx/media2/exoplayer/external/util/Util;->getPcmFrameSize(II)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    new-array v0, v0, [B

    sput-object v0, Landroidx/media2/exoplayer/external/source/SilenceMediaSource;->SILENCE_SAMPLE:[B

    .line 61
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "durationUs"    # J

    .line 71
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/BaseMediaSource;-><init>()V

    .line 72
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 73
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/SilenceMediaSource;->durationUs:J

    .line 74
    return-void
.end method

.method static synthetic access$000()Landroidx/media2/exoplayer/external/Format;
    .locals 1

    .line 42
    sget-object v0, Landroidx/media2/exoplayer/external/source/SilenceMediaSource;->FORMAT:Landroidx/media2/exoplayer/external/Format;

    return-object v0
.end method

.method static synthetic access$100(J)J
    .locals 2
    .param p0, "x0"    # J

    .line 42
    invoke-static {p0, p1}, Landroidx/media2/exoplayer/external/source/SilenceMediaSource;->getAudioByteCount(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200()[B
    .locals 1

    .line 42
    sget-object v0, Landroidx/media2/exoplayer/external/source/SilenceMediaSource;->SILENCE_SAMPLE:[B

    return-object v0
.end method

.method static synthetic access$300(J)J
    .locals 2
    .param p0, "x0"    # J

    .line 42
    invoke-static {p0, p1}, Landroidx/media2/exoplayer/external/source/SilenceMediaSource;->getAudioPositionUs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getAudioByteCount(J)J
    .locals 4
    .param p0, "durationUs"    # J

    .line 242
    const-wide/32 v0, 0xac44

    mul-long v0, v0, p0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 243
    .local v0, "audioSampleCount":J
    const/4 v2, 0x2

    invoke-static {v2, v2}, Landroidx/media2/exoplayer/external/util/Util;->getPcmFrameSize(II)I

    move-result v2

    int-to-long v2, v2

    mul-long v2, v2, v0

    return-wide v2
.end method

.method private static getAudioPositionUs(J)J
    .locals 6
    .param p0, "bytes"    # J

    .line 247
    const/4 v0, 0x2

    invoke-static {v0, v0}, Landroidx/media2/exoplayer/external/util/Util;->getPcmFrameSize(II)I

    move-result v0

    int-to-long v0, v0

    div-long v0, p0, v0

    .line 248
    .local v0, "audioSampleCount":J
    const-wide/32 v2, 0xf4240

    mul-long v2, v2, v0

    const-wide/32 v4, 0xac44

    div-long/2addr v2, v4

    return-wide v2
.end method


# virtual methods
.method public createPeriod(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/upstream/Allocator;J)Landroidx/media2/exoplayer/external/source/MediaPeriod;
    .locals 3
    .param p1, "id"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .param p2, "allocator"    # Landroidx/media2/exoplayer/external/upstream/Allocator;
    .param p3, "startPositionUs"    # J

    .line 88
    new-instance v0, Landroidx/media2/exoplayer/external/source/SilenceMediaSource$SilenceMediaPeriod;

    iget-wide v1, p0, Landroidx/media2/exoplayer/external/source/SilenceMediaSource;->durationUs:J

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/source/SilenceMediaSource$SilenceMediaPeriod;-><init>(J)V

    return-object v0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 0

    .line 84
    return-void
.end method

.method public prepareSourceInternal(Landroidx/media2/exoplayer/external/upstream/TransferListener;)V
    .locals 5
    .param p1, "mediaTransferListener"    # Landroidx/media2/exoplayer/external/upstream/TransferListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 78
    new-instance v0, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;

    iget-wide v1, p0, Landroidx/media2/exoplayer/external/source/SilenceMediaSource;->durationUs:J

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;-><init>(JZZ)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/media2/exoplayer/external/source/SilenceMediaSource;->refreshSourceInfo(Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method public releasePeriod(Landroidx/media2/exoplayer/external/source/MediaPeriod;)V
    .locals 0
    .param p1, "mediaPeriod"    # Landroidx/media2/exoplayer/external/source/MediaPeriod;

    .line 92
    return-void
.end method

.method public releaseSourceInternal()V
    .locals 0

    .line 95
    return-void
.end method
