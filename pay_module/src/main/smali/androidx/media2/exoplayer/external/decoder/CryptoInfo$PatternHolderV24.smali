.class final Landroidx/media2/exoplayer/external/decoder/CryptoInfo$PatternHolderV24;
.super Ljava/lang/Object;
.source "CryptoInfo.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/decoder/CryptoInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PatternHolderV24"
.end annotation


# instance fields
.field private final frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

.field private final pattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;


# direct methods
.method private constructor <init>(Landroid/media/MediaCodec$CryptoInfo;)V
    .locals 2
    .param p1, "frameworkCryptoInfo"    # Landroid/media/MediaCodec$CryptoInfo;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Landroidx/media2/exoplayer/external/decoder/CryptoInfo$PatternHolderV24;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    .line 128
    new-instance v0, Landroid/media/MediaCodec$CryptoInfo$Pattern;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/media/MediaCodec$CryptoInfo$Pattern;-><init>(II)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/decoder/CryptoInfo$PatternHolderV24;->pattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    .line 129
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaCodec$CryptoInfo;Landroidx/media2/exoplayer/external/decoder/CryptoInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/MediaCodec$CryptoInfo;
    .param p2, "x1"    # Landroidx/media2/exoplayer/external/decoder/CryptoInfo$1;

    .line 121
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/decoder/CryptoInfo$PatternHolderV24;-><init>(Landroid/media/MediaCodec$CryptoInfo;)V

    return-void
.end method

.method static synthetic access$100(Landroidx/media2/exoplayer/external/decoder/CryptoInfo$PatternHolderV24;II)V
    .locals 0
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/decoder/CryptoInfo$PatternHolderV24;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 121
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/decoder/CryptoInfo$PatternHolderV24;->set(II)V

    return-void
.end method

.method private set(II)V
    .locals 2
    .param p1, "encryptedBlocks"    # I
    .param p2, "clearBlocks"    # I

    .line 132
    iget-object v0, p0, Landroidx/media2/exoplayer/external/decoder/CryptoInfo$PatternHolderV24;->pattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaCodec$CryptoInfo$Pattern;->set(II)V

    .line 133
    iget-object v0, p0, Landroidx/media2/exoplayer/external/decoder/CryptoInfo$PatternHolderV24;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/decoder/CryptoInfo$PatternHolderV24;->pattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec$CryptoInfo;->setPattern(Landroid/media/MediaCodec$CryptoInfo$Pattern;)V

    .line 134
    return-void
.end method