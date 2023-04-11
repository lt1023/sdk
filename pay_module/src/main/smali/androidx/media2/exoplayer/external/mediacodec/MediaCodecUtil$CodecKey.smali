.class final Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;
.super Ljava/lang/Object;
.source "MediaCodecUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CodecKey"
.end annotation


# instance fields
.field public final mimeType:Ljava/lang/String;

.field public final secure:Z

.field public final tunneling:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "secure"    # Z
    .param p3, "tunneling"    # Z

    .line 886
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 887
    iput-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;->mimeType:Ljava/lang/String;

    .line 888
    iput-boolean p2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;->secure:Z

    .line 889
    iput-boolean p3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;->tunneling:Z

    .line 890
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 904
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 905
    return v0

    .line 907
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 910
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;

    .line 911
    .local v2, "other":Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;
    iget-object v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;->mimeType:Ljava/lang/String;

    iget-object v4, v2, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;->mimeType:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;->secure:Z

    iget-boolean v4, v2, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;->secure:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;->tunneling:Z

    iget-boolean v4, v2, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;->tunneling:Z

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 907
    .end local v2    # "other":Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;
    :cond_3
    :goto_1
    nop

    .line 908
    return v1
.end method

.method public hashCode()I
    .locals 6

    .line 894
    const/16 v0, 0x1f

    .line 895
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 896
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;->mimeType:Ljava/lang/String;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 897
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-boolean v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;->secure:Z

    const/16 v4, 0x4cf

    const/16 v5, 0x4d5

    if-eqz v3, :cond_1

    const/16 v3, 0x4cf

    goto :goto_1

    :cond_1
    const/16 v3, 0x4d5

    :goto_1
    add-int/2addr v1, v3

    .line 898
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;->tunneling:Z

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/16 v4, 0x4d5

    :goto_2
    add-int/2addr v2, v4

    .line 899
    .end local v1    # "result":I
    .restart local v2    # "result":I
    return v2
.end method
