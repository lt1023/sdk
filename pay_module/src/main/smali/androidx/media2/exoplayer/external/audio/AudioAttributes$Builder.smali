.class public final Landroidx/media2/exoplayer/external/audio/AudioAttributes$Builder;
.super Ljava/lang/Object;
.source "AudioAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/audio/AudioAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private contentType:I

.field private flags:I

.field private usage:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/audio/AudioAttributes$Builder;->contentType:I

    .line 60
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/AudioAttributes$Builder;->flags:I

    .line 61
    const/4 v0, 0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/audio/AudioAttributes$Builder;->usage:I

    .line 62
    return-void
.end method


# virtual methods
.method public build()Landroidx/media2/exoplayer/external/audio/AudioAttributes;
    .locals 5

    .line 92
    new-instance v0, Landroidx/media2/exoplayer/external/audio/AudioAttributes;

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/AudioAttributes$Builder;->contentType:I

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/AudioAttributes$Builder;->flags:I

    iget v3, p0, Landroidx/media2/exoplayer/external/audio/AudioAttributes$Builder;->usage:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/media2/exoplayer/external/audio/AudioAttributes;-><init>(IIILandroidx/media2/exoplayer/external/audio/AudioAttributes$1;)V

    return-object v0
.end method

.method public setContentType(I)Landroidx/media2/exoplayer/external/audio/AudioAttributes$Builder;
    .locals 0
    .param p1, "contentType"    # I

    .line 68
    iput p1, p0, Landroidx/media2/exoplayer/external/audio/AudioAttributes$Builder;->contentType:I

    .line 69
    return-object p0
.end method

.method public setFlags(I)Landroidx/media2/exoplayer/external/audio/AudioAttributes$Builder;
    .locals 0
    .param p1, "flags"    # I

    .line 76
    iput p1, p0, Landroidx/media2/exoplayer/external/audio/AudioAttributes$Builder;->flags:I

    .line 77
    return-object p0
.end method

.method public setUsage(I)Landroidx/media2/exoplayer/external/audio/AudioAttributes$Builder;
    .locals 0
    .param p1, "usage"    # I

    .line 84
    iput p1, p0, Landroidx/media2/exoplayer/external/audio/AudioAttributes$Builder;->usage:I

    .line 85
    return-object p0
.end method
