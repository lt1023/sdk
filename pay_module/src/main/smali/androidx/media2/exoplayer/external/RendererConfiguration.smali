.class public final Landroidx/media2/exoplayer/external/RendererConfiguration;
.super Ljava/lang/Object;
.source "RendererConfiguration.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final DEFAULT:Landroidx/media2/exoplayer/external/RendererConfiguration;


# instance fields
.field public final tunnelingAudioSessionId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Landroidx/media2/exoplayer/external/RendererConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/RendererConfiguration;-><init>(I)V

    sput-object v0, Landroidx/media2/exoplayer/external/RendererConfiguration;->DEFAULT:Landroidx/media2/exoplayer/external/RendererConfiguration;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "tunnelingAudioSessionId"    # I

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Landroidx/media2/exoplayer/external/RendererConfiguration;->tunnelingAudioSessionId:I

    .line 49
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 53
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 54
    return v0

    .line 56
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 59
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/media2/exoplayer/external/RendererConfiguration;

    .line 60
    .local v2, "other":Landroidx/media2/exoplayer/external/RendererConfiguration;
    iget v3, p0, Landroidx/media2/exoplayer/external/RendererConfiguration;->tunnelingAudioSessionId:I

    iget v4, v2, Landroidx/media2/exoplayer/external/RendererConfiguration;->tunnelingAudioSessionId:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 56
    .end local v2    # "other":Landroidx/media2/exoplayer/external/RendererConfiguration;
    :cond_3
    :goto_1
    nop

    .line 57
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 65
    iget v0, p0, Landroidx/media2/exoplayer/external/RendererConfiguration;->tunnelingAudioSessionId:I

    return v0
.end method
