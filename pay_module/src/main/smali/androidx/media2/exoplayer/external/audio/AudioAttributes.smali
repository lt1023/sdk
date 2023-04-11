.class public final Landroidx/media2/exoplayer/external/audio/AudioAttributes;
.super Ljava/lang/Object;
.source "AudioAttributes.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/audio/AudioAttributes$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT:Landroidx/media2/exoplayer/external/audio/AudioAttributes;


# instance fields
.field private audioAttributesV21:Landroid/media/AudioAttributes;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final contentType:I

.field public final flags:I

.field public final usage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Landroidx/media2/exoplayer/external/audio/AudioAttributes$Builder;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/audio/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/audio/AudioAttributes$Builder;->build()Landroidx/media2/exoplayer/external/audio/AudioAttributes;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->DEFAULT:Landroidx/media2/exoplayer/external/audio/AudioAttributes;

    return-void
.end method

.method private constructor <init>(III)V
    .locals 0
    .param p1, "contentType"    # I
    .param p2, "flags"    # I
    .param p3, "usage"    # I

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput p1, p0, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->contentType:I

    .line 106
    iput p2, p0, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->flags:I

    .line 107
    iput p3, p0, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->usage:I

    .line 108
    return-void
.end method

.method synthetic constructor <init>(IIILandroidx/media2/exoplayer/external/audio/AudioAttributes$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Landroidx/media2/exoplayer/external/audio/AudioAttributes$1;

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/audio/AudioAttributes;-><init>(III)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 124
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 125
    return v0

    .line 127
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 130
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/media2/exoplayer/external/audio/AudioAttributes;

    .line 131
    .local v2, "other":Landroidx/media2/exoplayer/external/audio/AudioAttributes;
    iget v3, p0, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->contentType:I

    iget v4, v2, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->contentType:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->flags:I

    iget v4, v2, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->flags:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->usage:I

    iget v4, v2, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->usage:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 127
    .end local v2    # "other":Landroidx/media2/exoplayer/external/audio/AudioAttributes;
    :cond_3
    :goto_1
    nop

    .line 128
    return v1
.end method

.method public getAudioAttributesV21()Landroid/media/AudioAttributes;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 112
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->audioAttributesV21:Landroid/media/AudioAttributes;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->contentType:I

    .line 114
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->flags:I

    .line 115
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->usage:I

    .line 116
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->audioAttributesV21:Landroid/media/AudioAttributes;

    goto :goto_0

    .line 112
    :cond_0
    nop

    .line 119
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->audioAttributesV21:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 137
    const/16 v0, 0x11

    .line 138
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->contentType:I

    add-int/2addr v1, v2

    .line 139
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->flags:I

    add-int/2addr v0, v2

    .line 140
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->usage:I

    add-int/2addr v1, v2

    .line 141
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method
