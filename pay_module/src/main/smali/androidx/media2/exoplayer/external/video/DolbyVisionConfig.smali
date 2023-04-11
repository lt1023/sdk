.class public final Landroidx/media2/exoplayer/external/video/DolbyVisionConfig;
.super Ljava/lang/Object;
.source "DolbyVisionConfig.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field public final codecs:Ljava/lang/String;

.field public final level:I

.field public final profile:I


# direct methods
.method private constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "profile"    # I
    .param p2, "level"    # I
    .param p3, "codecs"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Landroidx/media2/exoplayer/external/video/DolbyVisionConfig;->profile:I

    .line 69
    iput p2, p0, Landroidx/media2/exoplayer/external/video/DolbyVisionConfig;->level:I

    .line 70
    iput-object p3, p0, Landroidx/media2/exoplayer/external/video/DolbyVisionConfig;->codecs:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public static parse(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/video/DolbyVisionConfig;
    .locals 6
    .param p0, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 42
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 43
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 44
    .local v0, "profileData":I
    shr-int/lit8 v1, v0, 0x1

    .line 45
    .local v1, "dvProfile":I
    and-int/lit8 v2, v0, 0x1

    const/4 v3, 0x5

    shl-int/2addr v2, v3

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    shr-int/lit8 v4, v4, 0x3

    and-int/lit8 v4, v4, 0x1f

    or-int/2addr v2, v4

    .line 47
    .local v2, "dvLevel":I
    const/4 v4, 0x4

    if-eq v1, v4, :cond_3

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    const/16 v3, 0x8

    if-ne v1, v3, :cond_1

    .line 50
    const-string v3, "hev1"

    goto :goto_1

    .line 51
    :cond_1
    const/16 v3, 0x9

    if-ne v1, v3, :cond_2

    .line 52
    const-string v3, "avc3"

    goto :goto_1

    .line 54
    :cond_2
    const/4 v3, 0x0

    return-object v3

    .line 47
    :cond_3
    :goto_0
    nop

    .line 48
    const-string v3, "dvhe"

    .line 56
    .local v3, "codecsPrefix":Ljava/lang/String;
    :goto_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".0"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ".0"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, "codecs":Ljava/lang/String;
    new-instance v5, Landroidx/media2/exoplayer/external/video/DolbyVisionConfig;

    invoke-direct {v5, v1, v2, v4}, Landroidx/media2/exoplayer/external/video/DolbyVisionConfig;-><init>(IILjava/lang/String;)V

    return-object v5
.end method
