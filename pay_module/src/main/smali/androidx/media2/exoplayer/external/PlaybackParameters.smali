.class public final Landroidx/media2/exoplayer/external/PlaybackParameters;
.super Ljava/lang/Object;
.source "PlaybackParameters.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final DEFAULT:Landroidx/media2/exoplayer/external/PlaybackParameters;


# instance fields
.field public final pitch:F

.field private final scaledUsPerMs:I

.field public final skipSilence:Z

.field public final speed:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Landroidx/media2/exoplayer/external/PlaybackParameters;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/PlaybackParameters;-><init>(F)V

    sput-object v0, Landroidx/media2/exoplayer/external/PlaybackParameters;->DEFAULT:Landroidx/media2/exoplayer/external/PlaybackParameters;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 2
    .param p1, "speed"    # F

    .line 55
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroidx/media2/exoplayer/external/PlaybackParameters;-><init>(FFZ)V

    .line 56
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1
    .param p1, "speed"    # F
    .param p2, "pitch"    # F

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/exoplayer/external/PlaybackParameters;-><init>(FFZ)V

    .line 66
    return-void
.end method

.method public constructor <init>(FFZ)V
    .locals 4
    .param p1, "speed"    # F
    .param p2, "pitch"    # F
    .param p3, "skipSilence"    # Z

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v3, p1, v2

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 78
    cmpl-float v2, p2, v2

    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 79
    iput p1, p0, Landroidx/media2/exoplayer/external/PlaybackParameters;->speed:F

    .line 80
    iput p2, p0, Landroidx/media2/exoplayer/external/PlaybackParameters;->pitch:F

    .line 81
    iput-boolean p3, p0, Landroidx/media2/exoplayer/external/PlaybackParameters;->skipSilence:Z

    .line 82
    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float v0, v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/PlaybackParameters;->scaledUsPerMs:I

    .line 83
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 98
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 99
    return v0

    .line 101
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 104
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/media2/exoplayer/external/PlaybackParameters;

    .line 105
    .local v2, "other":Landroidx/media2/exoplayer/external/PlaybackParameters;
    iget v3, p0, Landroidx/media2/exoplayer/external/PlaybackParameters;->speed:F

    iget v4, v2, Landroidx/media2/exoplayer/external/PlaybackParameters;->speed:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget v3, p0, Landroidx/media2/exoplayer/external/PlaybackParameters;->pitch:F

    iget v4, v2, Landroidx/media2/exoplayer/external/PlaybackParameters;->pitch:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget-boolean v3, p0, Landroidx/media2/exoplayer/external/PlaybackParameters;->skipSilence:Z

    iget-boolean v4, v2, Landroidx/media2/exoplayer/external/PlaybackParameters;->skipSilence:Z

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 101
    .end local v2    # "other":Landroidx/media2/exoplayer/external/PlaybackParameters;
    :cond_3
    :goto_1
    nop

    .line 102
    return v1
.end method

.method public getMediaTimeUsForPlayoutTimeMs(J)J
    .locals 2
    .param p1, "timeMs"    # J

    .line 93
    iget v0, p0, Landroidx/media2/exoplayer/external/PlaybackParameters;->scaledUsPerMs:I

    int-to-long v0, v0

    mul-long v0, v0, p1

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 112
    const/16 v0, 0x11

    .line 113
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/media2/exoplayer/external/PlaybackParameters;->speed:F

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    .line 114
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroidx/media2/exoplayer/external/PlaybackParameters;->pitch:F

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 115
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/PlaybackParameters;->skipSilence:Z

    add-int/2addr v1, v2

    .line 116
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method
