.class final Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;
.super Ljava/lang/Object;
.source "MediaCodecUtil.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompat;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaCodecListCompatV21"
.end annotation


# instance fields
.field private final codecKind:I

.field private mediaCodecInfos:[Landroid/media/MediaCodecInfo;


# direct methods
.method public constructor <init>(ZZ)V
    .locals 1
    .param p1, "includeSecure"    # Z
    .param p2, "includeTunneling"    # Z

    .line 802
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 803
    nop

    .line 804
    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 806
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 804
    :cond_1
    :goto_0
    nop

    .line 805
    const/4 v0, 0x1

    .line 806
    :goto_1
    iput v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;->codecKind:I

    .line 807
    return-void
.end method

.method private ensureMediaCodecInfosInitialized()V
    .locals 2

    .line 839
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;->mediaCodecInfos:[Landroid/media/MediaCodecInfo;

    if-nez v0, :cond_0

    .line 840
    new-instance v0, Landroid/media/MediaCodecList;

    iget v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;->codecKind:I

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;->mediaCodecInfos:[Landroid/media/MediaCodecInfo;

    goto :goto_0

    .line 839
    :cond_0
    nop

    .line 842
    :goto_0
    return-void
.end method


# virtual methods
.method public getCodecCount()I
    .locals 1

    .line 811
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;->ensureMediaCodecInfosInitialized()V

    .line 812
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;->mediaCodecInfos:[Landroid/media/MediaCodecInfo;

    array-length v0, v0

    return v0
.end method

.method public getCodecInfoAt(I)Landroid/media/MediaCodecInfo;
    .locals 1
    .param p1, "index"    # I

    .line 817
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;->ensureMediaCodecInfosInitialized()V

    .line 818
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;->mediaCodecInfos:[Landroid/media/MediaCodecInfo;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public isFeatureRequired(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "capabilities"    # Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 835
    invoke-virtual {p3, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureRequired(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isFeatureSupported(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "capabilities"    # Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 829
    invoke-virtual {p3, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public secureDecodersExplicit()Z
    .locals 1

    .line 823
    const/4 v0, 0x1

    return v0
.end method
