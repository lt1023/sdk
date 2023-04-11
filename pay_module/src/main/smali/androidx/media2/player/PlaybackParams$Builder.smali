.class public final Landroidx/media2/player/PlaybackParams$Builder;
.super Ljava/lang/Object;
.source "PlaybackParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/PlaybackParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAudioFallbackMode:Ljava/lang/Integer;

.field private mPitch:Ljava/lang/Float;

.field private mPlaybackParams:Landroid/media/PlaybackParams;

.field private mSpeed:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 188
    new-instance v0, Landroid/media/PlaybackParams;

    invoke-direct {v0}, Landroid/media/PlaybackParams;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/PlaybackParams$Builder;->mPlaybackParams:Landroid/media/PlaybackParams;

    goto :goto_0

    .line 187
    :cond_0
    nop

    .line 190
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/media/PlaybackParams;)V
    .locals 0
    .param p1, "playbackParams"    # Landroid/media/PlaybackParams;
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-object p1, p0, Landroidx/media2/player/PlaybackParams$Builder;->mPlaybackParams:Landroid/media/PlaybackParams;

    .line 197
    return-void
.end method

.method public constructor <init>(Landroidx/media2/player/PlaybackParams;)V
    .locals 2
    .param p1, "playbackParams"    # Landroidx/media2/player/PlaybackParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    if-eqz p1, :cond_1

    .line 208
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 209
    invoke-virtual {p1}, Landroidx/media2/player/PlaybackParams;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/player/PlaybackParams$Builder;->mPlaybackParams:Landroid/media/PlaybackParams;

    goto :goto_0

    .line 211
    :cond_0
    invoke-virtual {p1}, Landroidx/media2/player/PlaybackParams;->getAudioFallbackMode()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/player/PlaybackParams$Builder;->mAudioFallbackMode:Ljava/lang/Integer;

    .line 212
    invoke-virtual {p1}, Landroidx/media2/player/PlaybackParams;->getPitch()Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/player/PlaybackParams$Builder;->mPitch:Ljava/lang/Float;

    .line 213
    invoke-virtual {p1}, Landroidx/media2/player/PlaybackParams;->getSpeed()Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/player/PlaybackParams$Builder;->mSpeed:Ljava/lang/Float;

    .line 215
    :goto_0
    return-void

    .line 206
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "playbakcParams shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Landroidx/media2/player/PlaybackParams;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 281
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 282
    new-instance v0, Landroidx/media2/player/PlaybackParams;

    iget-object v1, p0, Landroidx/media2/player/PlaybackParams$Builder;->mPlaybackParams:Landroid/media/PlaybackParams;

    invoke-direct {v0, v1}, Landroidx/media2/player/PlaybackParams;-><init>(Landroid/media/PlaybackParams;)V

    return-object v0

    .line 284
    :cond_0
    new-instance v0, Landroidx/media2/player/PlaybackParams;

    iget-object v1, p0, Landroidx/media2/player/PlaybackParams$Builder;->mAudioFallbackMode:Ljava/lang/Integer;

    iget-object v2, p0, Landroidx/media2/player/PlaybackParams$Builder;->mPitch:Ljava/lang/Float;

    iget-object v3, p0, Landroidx/media2/player/PlaybackParams$Builder;->mSpeed:Ljava/lang/Float;

    invoke-direct {v0, v1, v2, v3}, Landroidx/media2/player/PlaybackParams;-><init>(Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;)V

    return-object v0
.end method

.method public setAudioFallbackMode(I)Landroidx/media2/player/PlaybackParams$Builder;
    .locals 2
    .param p1, "audioFallbackMode"    # I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 223
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 224
    iget-object v0, p0, Landroidx/media2/player/PlaybackParams$Builder;->mPlaybackParams:Landroid/media/PlaybackParams;

    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setAudioFallbackMode(I)Landroid/media/PlaybackParams;

    goto :goto_0

    .line 226
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/player/PlaybackParams$Builder;->mAudioFallbackMode:Ljava/lang/Integer;

    .line 228
    :goto_0
    return-object p0
.end method

.method public setPitch(F)Landroidx/media2/player/PlaybackParams$Builder;
    .locals 2
    .param p1, "pitch"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
            to = 3.4028234663852886E38
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 239
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_2

    .line 242
    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    .line 245
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 246
    iget-object v0, p0, Landroidx/media2/player/PlaybackParams$Builder;->mPlaybackParams:Landroid/media/PlaybackParams;

    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    goto :goto_0

    .line 248
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/player/PlaybackParams$Builder;->mPitch:Ljava/lang/Float;

    .line 250
    :goto_0
    return-object p0

    .line 243
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pitch must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "0 pitch is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSpeed(F)Landroidx/media2/player/PlaybackParams$Builder;
    .locals 2
    .param p1, "speed"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
            to = 3.4028234663852886E38
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 261
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_2

    .line 264
    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    .line 267
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 268
    iget-object v0, p0, Landroidx/media2/player/PlaybackParams$Builder;->mPlaybackParams:Landroid/media/PlaybackParams;

    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    goto :goto_0

    .line 270
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/player/PlaybackParams$Builder;->mSpeed:Ljava/lang/Float;

    .line 272
    :goto_0
    return-object p0

    .line 265
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative speed is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "0 speed is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
