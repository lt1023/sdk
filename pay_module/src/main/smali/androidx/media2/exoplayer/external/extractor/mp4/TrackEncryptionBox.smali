.class public final Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;
.super Ljava/lang/Object;
.source "TrackEncryptionBox.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TrackEncryptionBox"


# instance fields
.field public final cryptoData:Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;

.field public final defaultInitializationVector:[B

.field public final isEncrypted:Z

.field public final perSampleIvSize:I

.field public final schemeType:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLjava/lang/String;I[BII[B)V
    .locals 3
    .param p1, "isEncrypted"    # Z
    .param p2, "schemeType"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "perSampleIvSize"    # I
    .param p4, "keyId"    # [B
    .param p5, "defaultEncryptedBlocks"    # I
    .param p6, "defaultClearBlocks"    # I
    .param p7, "defaultInitializationVector"    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez p7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    xor-int/2addr v0, v2

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 81
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;->isEncrypted:Z

    .line 82
    iput-object p2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    .line 83
    iput p3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;->perSampleIvSize:I

    .line 84
    iput-object p7, p0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;->defaultInitializationVector:[B

    .line 85
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;

    invoke-static {p2}, Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;->schemeToCryptoMode(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1, p4, p5, p6}, Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;-><init>(I[BII)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;->cryptoData:Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;

    .line 87
    return-void
.end method

.method private static schemeToCryptoMode(Ljava/lang/String;)I
    .locals 5
    .param p0, "schemeType"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 91
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 93
    return v0

    .line 95
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x2e7ccd

    const/4 v4, 0x2

    if-eq v2, v3, :cond_5

    const v3, 0x2e7d0f

    if-eq v2, v3, :cond_4

    const v3, 0x2e8997

    if-eq v2, v3, :cond_3

    const v3, 0x2e89a7

    if-eq v2, v3, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const-string v2, "cens"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const-string v2, "cenc"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    const-string v2, "cbcs"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :cond_5
    const-string v2, "cbc1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 103
    const-string v1, "TrackEncryptionBox"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x44

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unsupported protection scheme type \'"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'. Assuming AES-CTR crypto mode."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return v0

    .line 101
    :pswitch_0
    return v4

    .line 98
    :pswitch_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
