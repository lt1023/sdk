.class public final Landroidx/media2/exoplayer/external/decoder/CryptoInfo;
.super Ljava/lang/Object;
.source "CryptoInfo.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/decoder/CryptoInfo$PatternHolderV24;
    }
.end annotation


# instance fields
.field public clearBlocks:I

.field public encryptedBlocks:I

.field private final frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

.field public iv:[B

.field public key:[B

.field public mode:I

.field public numBytesOfClearData:[I

.field public numBytesOfEncryptedData:[I

.field public numSubSamples:I

.field private final patternHolder:Landroidx/media2/exoplayer/external/decoder/CryptoInfo$PatternHolderV24;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/decoder/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    .line 72
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    new-instance v0, Landroidx/media2/exoplayer/external/decoder/CryptoInfo$PatternHolderV24;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/decoder/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0, v2, v1}, Landroidx/media2/exoplayer/external/decoder/CryptoInfo$PatternHolderV24;-><init>(Landroid/media/MediaCodec$CryptoInfo;Landroidx/media2/exoplayer/external/decoder/CryptoInfo$1;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Landroidx/media2/exoplayer/external/decoder/CryptoInfo;->patternHolder:Landroidx/media2/exoplayer/external/decoder/CryptoInfo$PatternHolderV24;

    .line 73
    return-void
.end method


# virtual methods
.method public getFrameworkCryptoInfo()Landroid/media/MediaCodec$CryptoInfo;
    .locals 1

    .line 111
    iget-object v0, p0, Landroidx/media2/exoplayer/external/decoder/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    return-object v0
.end method

.method public getFrameworkCryptoInfoV16()Landroid/media/MediaCodec$CryptoInfo;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 117
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/decoder/CryptoInfo;->getFrameworkCryptoInfo()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v0

    return-object v0
.end method

.method public set(I[I[I[B[BIII)V
    .locals 2
    .param p1, "numSubSamples"    # I
    .param p2, "numBytesOfClearData"    # [I
    .param p3, "numBytesOfEncryptedData"    # [I
    .param p4, "key"    # [B
    .param p5, "iv"    # [B
    .param p6, "mode"    # I
    .param p7, "encryptedBlocks"    # I
    .param p8, "clearBlocks"    # I

    .line 80
    iput p1, p0, Landroidx/media2/exoplayer/external/decoder/CryptoInfo;->numSubSamples:I

    .line 81
    iput-object p2, p0, Landroidx/media2/exoplayer/external/decoder/CryptoInfo;->numBytesOfClearData:[I

    .line 82
    iput-object p3, p0, Landroidx/media2/exoplayer/external/decoder/CryptoInfo;->numBytesOfEncryptedData:[I

    .line 83
    iput-object p4, p0, Landroidx/media2/exoplayer/external/decoder/CryptoInfo;->key:[B

    .line 84
    iput-object p5, p0, Landroidx/media2/exoplayer/external/decoder/CryptoInfo;->iv:[B

    .line 85
    iput p6, p0, Landroidx/media2/exoplayer/external/decoder/CryptoInfo;->mode:I

    .line 86
    iput p7, p0, Landroidx/media2/exoplayer/external/decoder/CryptoInfo;->encryptedBlocks:I

    .line 87
    iput p8, p0, Landroidx/media2/exoplayer/external/decoder/CryptoInfo;->clearBlocks:I

    .line 90
    iget-object v0, p0, Landroidx/media2/exoplayer/external/decoder/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    iput p1, v0, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    .line 91
    iput-object p2, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 92
    iput-object p3, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 93
    iput-object p4, v0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 94
    iput-object p5, v0, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 95
    iput p6, v0, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    .line 96
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 97
    iget-object v0, p0, Landroidx/media2/exoplayer/external/decoder/CryptoInfo;->patternHolder:Landroidx/media2/exoplayer/external/decoder/CryptoInfo$PatternHolderV24;

    invoke-static {v0, p7, p8}, Landroidx/media2/exoplayer/external/decoder/CryptoInfo$PatternHolderV24;->access$100(Landroidx/media2/exoplayer/external/decoder/CryptoInfo$PatternHolderV24;II)V

    goto :goto_0

    .line 96
    :cond_0
    nop

    .line 99
    :goto_0
    return-void
.end method
