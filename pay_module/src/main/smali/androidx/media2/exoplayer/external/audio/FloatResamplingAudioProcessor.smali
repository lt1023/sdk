.class final Landroidx/media2/exoplayer/external/audio/FloatResamplingAudioProcessor;
.super Landroidx/media2/exoplayer/external/audio/BaseAudioProcessor;
.source "FloatResamplingAudioProcessor.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final FLOAT_NAN_AS_INT:I

.field private static final PCM_32_BIT_INT_TO_PCM_32_BIT_FLOAT_FACTOR:D = 4.656612875245797E-10


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    sput v0, Landroidx/media2/exoplayer/external/audio/FloatResamplingAudioProcessor;->FLOAT_NAN_AS_INT:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/BaseAudioProcessor;-><init>()V

    return-void
.end method

.method private static writePcm32BitFloat(ILjava/nio/ByteBuffer;)V
    .locals 4
    .param p0, "pcm32BitInt"    # I
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 95
    int-to-double v0, p0

    const-wide v2, 0x3e00000000200000L    # 4.656612875245797E-10

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float v0, v0

    .line 96
    .local v0, "pcm32BitFloat":F
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 97
    .local v1, "floatBits":I
    sget v2, Landroidx/media2/exoplayer/external/audio/FloatResamplingAudioProcessor;->FLOAT_NAN_AS_INT:I

    if-ne v1, v2, :cond_0

    .line 98
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    goto :goto_0

    .line 97
    :cond_0
    nop

    .line 100
    :goto_0
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 101
    return-void
.end method


# virtual methods
.method public configure(III)Z
    .locals 1
    .param p1, "sampleRateHz"    # I
    .param p2, "channelCount"    # I
    .param p3, "encoding"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/audio/AudioProcessor$UnhandledFormatException;
        }
    .end annotation

    .line 40
    invoke-static {p3}, Landroidx/media2/exoplayer/external/util/Util;->isEncodingHighResolutionIntegerPcm(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/audio/FloatResamplingAudioProcessor;->setInputFormat(III)Z

    move-result v0

    return v0

    .line 41
    :cond_0
    new-instance v0, Landroidx/media2/exoplayer/external/audio/AudioProcessor$UnhandledFormatException;

    invoke-direct {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/audio/AudioProcessor$UnhandledFormatException;-><init>(III)V

    throw v0
.end method

.method public getOutputEncoding()I
    .locals 1

    .line 53
    const/4 v0, 0x4

    return v0
.end method

.method public isActive()Z
    .locals 1

    .line 48
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/FloatResamplingAudioProcessor;->encoding:I

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->isEncodingHighResolutionIntegerPcm(I)Z

    move-result v0

    return v0
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .locals 9
    .param p1, "inputBuffer"    # Ljava/nio/ByteBuffer;

    .line 58
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/FloatResamplingAudioProcessor;->encoding:I

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 59
    .local v0, "isInput32Bit":Z
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 60
    .local v1, "position":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 61
    .local v2, "limit":I
    sub-int v3, v2, v1

    .line 63
    .local v3, "size":I
    if-eqz v0, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    div-int/lit8 v4, v3, 0x3

    mul-int/lit8 v4, v4, 0x4

    .line 64
    .local v4, "resampledSize":I
    :goto_1
    invoke-virtual {p0, v4}, Landroidx/media2/exoplayer/external/audio/FloatResamplingAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 65
    .local v5, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_3

    .line 66
    move v6, v1

    .local v6, "i":I
    :goto_2
    if-ge v6, v2, :cond_2

    .line 67
    nop

    .line 68
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v8, v6, 0x1

    .line 69
    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    add-int/lit8 v8, v6, 0x2

    .line 70
    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v7, v8

    add-int/lit8 v8, v6, 0x3

    .line 71
    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x18

    or-int/2addr v7, v8

    .line 72
    .local v7, "pcm32BitInteger":I
    invoke-static {v7, v5}, Landroidx/media2/exoplayer/external/audio/FloatResamplingAudioProcessor;->writePcm32BitFloat(ILjava/nio/ByteBuffer;)V

    .line 66
    .end local v7    # "pcm32BitInteger":I
    add-int/lit8 v6, v6, 0x4

    goto :goto_2

    :cond_2
    goto :goto_4

    .line 75
    .end local v6    # "i":I
    :cond_3
    move v6, v1

    .restart local v6    # "i":I
    :goto_3
    if-ge v6, v2, :cond_4

    .line 76
    nop

    .line 77
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    add-int/lit8 v8, v6, 0x1

    .line 78
    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v7, v8

    add-int/lit8 v8, v6, 0x2

    .line 79
    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x18

    or-int/2addr v7, v8

    .line 80
    .restart local v7    # "pcm32BitInteger":I
    invoke-static {v7, v5}, Landroidx/media2/exoplayer/external/audio/FloatResamplingAudioProcessor;->writePcm32BitFloat(ILjava/nio/ByteBuffer;)V

    .line 75
    .end local v7    # "pcm32BitInteger":I
    add-int/lit8 v6, v6, 0x3

    goto :goto_3

    .line 84
    .end local v6    # "i":I
    :cond_4
    :goto_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 85
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 86
    return-void
.end method
