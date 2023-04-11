.class public final Landroidx/media2/exoplayer/external/audio/AudioFocusManager;
.super Ljava/lang/Object;
.source "AudioFocusManager.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusListener;,
        Landroidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusState;,
        Landroidx/media2/exoplayer/external/audio/AudioFocusManager$PlayerCommand;,
        Landroidx/media2/exoplayer/external/audio/AudioFocusManager$PlayerControl;
    }
.end annotation


# static fields
.field private static final AUDIO_FOCUS_STATE_HAVE_FOCUS:I = 0x1

.field private static final AUDIO_FOCUS_STATE_LOSS_TRANSIENT:I = 0x2

.field private static final AUDIO_FOCUS_STATE_LOSS_TRANSIENT_DUCK:I = 0x3

.field private static final AUDIO_FOCUS_STATE_LOST_FOCUS:I = -0x1

.field private static final AUDIO_FOCUS_STATE_NO_FOCUS:I = 0x0

.field public static final PLAYER_COMMAND_DO_NOT_PLAY:I = -0x1

.field public static final PLAYER_COMMAND_PLAY_WHEN_READY:I = 0x1

.field public static final PLAYER_COMMAND_WAIT_FOR_CALLBACK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AudioFocusManager"

.field private static final VOLUME_MULTIPLIER_DEFAULT:F = 1.0f

.field private static final VOLUME_MULTIPLIER_DUCK:F = 0.2f


# instance fields
.field private audioAttributes:Landroidx/media2/exoplayer/external/audio/AudioAttributes;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private audioFocusRequest:Landroid/media/AudioFocusRequest;

.field private audioFocusState:I

.field private final audioManager:Landroid/media/AudioManager;

.field private focusGain:I

.field private final focusListener:Landroidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusListener;

.field private final playerControl:Landroidx/media2/exoplayer/external/audio/AudioFocusManager$PlayerControl;

.field private rebuildAudioFocusRequest:Z

.field private volumeMultiplier:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/audio/AudioFocusManager$PlayerControl;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "playerControl"    # Landroidx/media2/exoplayer/external/audio/AudioFocusManager$PlayerControl;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->volumeMultiplier:F

    .line 130
    nop

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->audioManager:Landroid/media/AudioManager;

    .line 132
    iput-object p2, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->playerControl:Landroidx/media2/exoplayer/external/audio/AudioFocusManager$PlayerControl;

    .line 133
    new-instance v0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusListener;-><init>(Landroidx/media2/exoplayer/external/audio/AudioFocusManager;Landroidx/media2/exoplayer/external/audio/AudioFocusManager$1;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->focusListener:Landroidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusListener;

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->audioFocusState:I

    .line 135
    return-void
.end method

.method private abandonAudioFocus()V
    .locals 1

    .line 250
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->abandonAudioFocus(Z)V

    .line 251
    return-void
.end method

.method private abandonAudioFocus(Z)V
    .locals 2
    .param p1, "forceAbandon"    # Z

    .line 254
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->focusGain:I

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->audioFocusState:I

    if-nez v0, :cond_0

    .line 255
    return-void

    .line 254
    :cond_0
    nop

    .line 258
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->focusGain:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->audioFocusState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_2

    .line 261
    :cond_2
    :goto_0
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_3

    .line 262
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->abandonAudioFocusV26()V

    goto :goto_1

    .line 264
    :cond_3
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->abandonAudioFocusDefault()V

    .line 266
    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->audioFocusState:I

    .line 268
    :goto_2
    return-void
.end method

.method private abandonAudioFocusDefault()V
    .locals 2

    .line 299
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->focusListener:Landroidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 300
    return-void
.end method

.method private abandonAudioFocusV26()V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .line 304
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_0

    .line 305
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    goto :goto_0

    .line 304
    :cond_0
    nop

    .line 307
    :goto_0
    return-void
.end method

.method static synthetic access$100(Landroidx/media2/exoplayer/external/audio/AudioFocusManager;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/audio/AudioFocusManager;

    .line 46
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->audioFocusState:I

    return v0
.end method

.method static synthetic access$102(Landroidx/media2/exoplayer/external/audio/AudioFocusManager;I)I
    .locals 0
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/audio/AudioFocusManager;
    .param p1, "x1"    # I

    .line 46
    iput p1, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->audioFocusState:I

    return p1
.end method

.method static synthetic access$200(Landroidx/media2/exoplayer/external/audio/AudioFocusManager;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/audio/AudioFocusManager;

    .line 46
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->willPauseWhenDucked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroidx/media2/exoplayer/external/audio/AudioFocusManager;)Landroidx/media2/exoplayer/external/audio/AudioFocusManager$PlayerControl;
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/audio/AudioFocusManager;

    .line 46
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->playerControl:Landroidx/media2/exoplayer/external/audio/AudioFocusManager$PlayerControl;

    return-object v0
.end method

.method static synthetic access$400(Landroidx/media2/exoplayer/external/audio/AudioFocusManager;Z)V
    .locals 0
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/audio/AudioFocusManager;
    .param p1, "x1"    # Z

    .line 46
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->abandonAudioFocus(Z)V

    return-void
.end method

.method static synthetic access$500(Landroidx/media2/exoplayer/external/audio/AudioFocusManager;)F
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/audio/AudioFocusManager;

    .line 46
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->volumeMultiplier:F

    return v0
.end method

.method static synthetic access$502(Landroidx/media2/exoplayer/external/audio/AudioFocusManager;F)F
    .locals 0
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/audio/AudioFocusManager;
    .param p1, "x1"    # F

    .line 46
    iput p1, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->volumeMultiplier:F

    return p1
.end method

.method private static convertAudioAttributesToFocusGain(Landroidx/media2/exoplayer/external/audio/AudioAttributes;)I
    .locals 5
    .param p0, "audioAttributes"    # Landroidx/media2/exoplayer/external/audio/AudioAttributes;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 323
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 326
    return v0

    .line 329
    :cond_0
    iget v1, p0, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->usage:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    .line 387
    :pswitch_0
    const-string v1, "AudioFocusManager"

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->usage:I

    const/16 v3, 0x25

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unidentified audio usage: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    return v0

    .line 373
    :pswitch_1
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 374
    const/4 v0, 0x4

    return v0

    .line 376
    :cond_1
    return v3

    .line 381
    :pswitch_2
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->contentType:I

    if-ne v0, v4, :cond_2

    .line 383
    return v3

    .line 385
    :cond_2
    return v2

    .line 367
    :pswitch_3
    return v2

    .line 334
    :pswitch_4
    return v0

    .line 355
    :pswitch_5
    return v3

    .line 340
    :pswitch_6
    return v4

    .line 345
    :pswitch_7
    const-string v0, "AudioFocusManager"

    const-string v1, "Specify a proper usage in the audio attributes for audio focus handling. Using AUDIOFOCUS_GAIN by default."

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleIdle(Z)I
    .locals 1
    .param p1, "playWhenReady"    # Z

    .line 214
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method private requestAudioFocus()I
    .locals 4

    .line 221
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->focusGain:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 222
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->audioFocusState:I

    if-eqz v0, :cond_0

    .line 223
    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->abandonAudioFocus(Z)V

    goto :goto_0

    .line 222
    :cond_0
    nop

    .line 225
    :goto_0
    return v1

    .line 228
    :cond_1
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->audioFocusState:I

    const/4 v2, 0x0

    if-nez v0, :cond_4

    .line 229
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_2

    .line 230
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->requestAudioFocusV26()I

    move-result v0

    goto :goto_1

    .line 232
    :cond_2
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->requestAudioFocusDefault()I

    move-result v0

    .line 234
    .local v0, "focusRequestResult":I
    :goto_1
    nop

    .line 235
    if-ne v0, v1, :cond_3

    .line 236
    const/4 v3, 0x1

    goto :goto_2

    .line 237
    :cond_3
    const/4 v3, 0x0

    :goto_2
    iput v3, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->audioFocusState:I

    goto :goto_3

    .line 228
    .end local v0    # "focusRequestResult":I
    :cond_4
    nop

    .line 240
    :goto_3
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->audioFocusState:I

    if-nez v0, :cond_5

    .line 241
    const/4 v0, -0x1

    return v0

    .line 244
    :cond_5
    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    .line 245
    const/4 v1, 0x0

    goto :goto_4

    .line 246
    :cond_6
    nop

    .line 244
    :goto_4
    return v1
.end method

.method private requestAudioFocusDefault()I
    .locals 4

    .line 271
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->focusListener:Landroidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusListener;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->audioAttributes:Landroidx/media2/exoplayer/external/audio/AudioAttributes;

    .line 273
    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/audio/AudioAttributes;

    iget v2, v2, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->usage:I

    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/Util;->getStreamTypeForAudioUsage(I)I

    move-result v2

    iget v3, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->focusGain:I

    .line 271
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    return v0
.end method

.method private requestAudioFocusV26()I
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .line 279
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->rebuildAudioFocusRequest:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_2

    .line 281
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    if-nez v0, :cond_2

    .line 282
    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->focusGain:I

    invoke-direct {v0, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    goto :goto_1

    .line 283
    :cond_2
    new-instance v1, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v1, v0}, Landroid/media/AudioFocusRequest$Builder;-><init>(Landroid/media/AudioFocusRequest;)V

    move-object v0, v1

    :goto_1
    nop

    .line 285
    .local v0, "builder":Landroid/media/AudioFocusRequest$Builder;
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->willPauseWhenDucked()Z

    move-result v1

    .line 286
    .local v1, "willPauseWhenDucked":Z
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->audioAttributes:Landroidx/media2/exoplayer/external/audio/AudioAttributes;

    .line 288
    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/audio/AudioAttributes;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->getAudioAttributesV21()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v2

    .line 289
    invoke-virtual {v2, v1}, Landroid/media/AudioFocusRequest$Builder;->setWillPauseWhenDucked(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v2

    iget-object v3, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->focusListener:Landroidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusListener;

    .line 290
    invoke-virtual {v2, v3}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v2

    .line 291
    invoke-virtual {v2}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v2

    iput-object v2, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    .line 293
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->rebuildAudioFocusRequest:Z

    .line 295
    .end local v0    # "builder":Landroid/media/AudioFocusRequest$Builder;
    .end local v1    # "willPauseWhenDucked":Z
    :goto_2
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v0

    return v0
.end method

.method private willPauseWhenDucked()Z
    .locals 2

    .line 310
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->audioAttributes:Landroidx/media2/exoplayer/external/audio/AudioAttributes;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, v0, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->contentType:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method getFocusListener()Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 209
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->focusListener:Landroidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusListener;

    return-object v0
.end method

.method public getVolumeMultiplier()F
    .locals 1

    .line 139
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->volumeMultiplier:F

    return v0
.end method

.method public handlePrepare(Z)I
    .locals 1
    .param p1, "playWhenReady"    # Z

    .line 180
    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->requestAudioFocus()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public handleSetPlayWhenReady(ZI)I
    .locals 1
    .param p1, "playWhenReady"    # Z
    .param p2, "playerState"    # I

    .line 192
    if-nez p1, :cond_0

    .line 193
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->abandonAudioFocus()V

    .line 194
    const/4 v0, -0x1

    return v0

    .line 197
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->handleIdle(Z)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->requestAudioFocus()I

    move-result v0

    :goto_0
    return v0
.end method

.method public handleStop()V
    .locals 1

    .line 202
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->abandonAudioFocus(Z)V

    .line 203
    return-void
.end method

.method public setAudioAttributes(Landroidx/media2/exoplayer/external/audio/AudioAttributes;ZI)I
    .locals 3
    .param p1, "audioAttributes"    # Landroidx/media2/exoplayer/external/audio/AudioAttributes;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "playWhenReady"    # Z
    .param p3, "playerState"    # I

    .line 154
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->audioAttributes:Landroidx/media2/exoplayer/external/audio/AudioAttributes;

    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    .line 155
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->audioAttributes:Landroidx/media2/exoplayer/external/audio/AudioAttributes;

    .line 156
    invoke-static {p1}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->convertAudioAttributesToFocusGain(Landroidx/media2/exoplayer/external/audio/AudioAttributes;)I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->focusGain:I

    .line 158
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->focusGain:I

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v2, "Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME."

    invoke-static {v0, v2}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 161
    if-eqz p2, :cond_3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_2

    const/4 v0, 0x3

    if-ne p3, v0, :cond_3

    .line 163
    :cond_2
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->requestAudioFocus()I

    move-result v0

    return v0

    .line 161
    :cond_3
    goto :goto_2

    .line 154
    :cond_4
    nop

    .line 167
    :goto_2
    if-ne p3, v1, :cond_5

    .line 168
    invoke-direct {p0, p2}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->handleIdle(Z)I

    move-result v0

    goto :goto_3

    .line 169
    :cond_5
    invoke-virtual {p0, p2}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->handlePrepare(Z)I

    move-result v0

    .line 167
    :goto_3
    return v0
.end method
