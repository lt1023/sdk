.class Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;
.super Ljava/lang/Object;
.source "AudioFocusHandler.java"

# interfaces
.implements Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/AudioFocusHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioFocusHandlerImplBase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;,
        Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase$BecomingNoisyReceiver;
    }
.end annotation


# static fields
.field private static final VOLUME_DUCK_FACTOR:F = 0.2f


# instance fields
.field mAudioAttributes:Landroidx/media/AudioAttributesCompat;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mBecomingNoisyReceiver:Landroid/content/BroadcastReceiver;

.field mBecomingNoisyReceiverRegistered:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentFocusGainType:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field final mLock:Ljava/lang/Object;

.field final mPlayer:Landroidx/media2/player/MediaPlayer;

.field mResumeWhenAudioFocusGain:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/media2/player/MediaPlayer;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "player"    # Landroidx/media2/player/MediaPlayer;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase$BecomingNoisyReceiver;

    invoke-direct {v0, p0}, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase$BecomingNoisyReceiver;-><init>(Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;)V

    iput-object v0, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mBecomingNoisyReceiver:Landroid/content/BroadcastReceiver;

    .line 116
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mIntentFilter:Landroid/content/IntentFilter;

    .line 118
    new-instance v0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;

    invoke-direct {v0, p0}, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;-><init>(Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;)V

    iput-object v0, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 119
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mLock:Ljava/lang/Object;

    .line 134
    iput-object p1, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mContext:Landroid/content/Context;

    .line 135
    iput-object p2, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mPlayer:Landroidx/media2/player/MediaPlayer;

    .line 139
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mAudioManager:Landroid/media/AudioManager;

    .line 140
    return-void
.end method

.method private abandonAudioFocusLocked()V
    .locals 3
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .line 235
    iget v0, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mCurrentFocusGainType:I

    if-nez v0, :cond_0

    .line 236
    return-void

    .line 239
    :cond_0
    const-string v0, "AudioFocusHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "abandoningAudioFocusLocked, currently="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mCurrentFocusGainType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v0, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 242
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mCurrentFocusGainType:I

    .line 243
    iput-boolean v0, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mResumeWhenAudioFocusGain:Z

    .line 244
    return-void
.end method

.method private static convertAudioAttributesToFocusGain(Landroidx/media/AudioAttributesCompat;)I
    .locals 5
    .param p0, "audioAttributesCompat"    # Landroidx/media/AudioAttributesCompat;

    .line 278
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 281
    return v0

    .line 285
    :cond_0
    invoke-virtual {p0}, Landroidx/media/AudioAttributesCompat;->getUsage()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    .line 338
    :pswitch_0
    const-string v1, "AudioFocusHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unidentified AudioAttribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    return v0

    .line 327
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 331
    :pswitch_2
    invoke-virtual {p0}, Landroidx/media/AudioAttributesCompat;->getContentType()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 334
    return v3

    .line 336
    :cond_1
    return v2

    .line 321
    :pswitch_3
    return v2

    .line 290
    :pswitch_4
    return v0

    .line 309
    :pswitch_5
    return v3

    .line 296
    :pswitch_6
    return v4

    .line 301
    :pswitch_7
    const-string v0, "AudioFocusHandler"

    const-string v1, "Specify a proper usage in the audio attributes for audio focus handling. Using AUDIOFOCUS_GAIN by default."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return v4

    nop

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

.method private registerBecomingNoisyReceiverLocked()V
    .locals 3
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .line 248
    iget-boolean v0, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mBecomingNoisyReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 249
    return-void

    .line 252
    :cond_0
    const-string v0, "AudioFocusHandler"

    const-string v1, "registering becoming noisy receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v0, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mBecomingNoisyReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mBecomingNoisyReceiverRegistered:Z

    .line 258
    return-void
.end method

.method private requestAudioFocusLocked()Z
    .locals 7
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .line 201
    iget-object v0, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mAudioAttributes:Landroidx/media/AudioAttributesCompat;

    invoke-static {v0}, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->convertAudioAttributesToFocusGain(Landroidx/media/AudioAttributesCompat;)I

    move-result v0

    .line 202
    .local v0, "focusGain":I
    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 203
    iget-object v2, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mAudioAttributes:Landroidx/media/AudioAttributesCompat;

    if-nez v2, :cond_0

    .line 206
    const-string v2, "AudioFocusHandler"

    const-string v3, "requestAudioFocusLocked() shouldn\'t be called when AudioAttributes is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 203
    :cond_0
    nop

    .line 209
    :goto_0
    return v1

    .line 213
    :cond_1
    iget-object v2, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iget-object v4, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mAudioAttributes:Landroidx/media/AudioAttributesCompat;

    .line 214
    invoke-virtual {v4}, Landroidx/media/AudioAttributesCompat;->getVolumeControlStream()I

    move-result v4

    .line 213
    invoke-virtual {v2, v3, v4, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v2

    .line 215
    .local v2, "audioFocusRequestResult":I
    const/4 v3, 0x0

    if-ne v2, v1, :cond_2

    .line 216
    iput v0, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mCurrentFocusGainType:I

    goto :goto_1

    .line 218
    :cond_2
    const-string v4, "AudioFocusHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestAudioFocus("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") failed (return="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") playback wouldn\'t start."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iput v3, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mCurrentFocusGainType:I

    .line 223
    :goto_1
    const-string v4, "AudioFocusHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestAudioFocus("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "), result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v2, v1, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iput-boolean v3, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mResumeWhenAudioFocusGain:Z

    .line 227
    iget v4, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mCurrentFocusGainType:I

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    return v1
.end method

.method private unregisterBecomingNoisyReceiverLocked()V
    .locals 2
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .line 262
    iget-boolean v0, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mBecomingNoisyReceiverRegistered:Z

    if-nez v0, :cond_0

    .line 263
    return-void

    .line 266
    :cond_0
    const-string v0, "AudioFocusHandler"

    const-string/jumbo v1, "unregistering becoming noisy receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v0, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mBecomingNoisyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 269
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mBecomingNoisyReceiverRegistered:Z

    .line 270
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 182
    iget-object v0, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_0
    invoke-direct {p0}, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->unregisterBecomingNoisyReceiverLocked()V

    .line 184
    invoke-direct {p0}, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->abandonAudioFocusLocked()V

    .line 185
    monitor-exit v0

    .line 186
    return-void

    .line 185
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPause()V
    .locals 2

    .line 166
    iget-object v0, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 167
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mResumeWhenAudioFocusGain:Z

    .line 168
    invoke-direct {p0}, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->unregisterBecomingNoisyReceiverLocked()V

    .line 169
    monitor-exit v0

    .line 170
    return-void

    .line 169
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPlay()Z
    .locals 4

    .line 144
    iget-object v0, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mPlayer:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer;->getAudioAttributes()Landroidx/media/AudioAttributesCompat;

    move-result-object v0

    .line 145
    .local v0, "attrs":Landroidx/media/AudioAttributesCompat;
    const/4 v1, 0x1

    .line 146
    .local v1, "result":Z
    iget-object v2, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 147
    :try_start_0
    iput-object v0, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mAudioAttributes:Landroidx/media/AudioAttributesCompat;

    .line 150
    if-nez v0, :cond_0

    .line 152
    invoke-direct {p0}, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->abandonAudioFocusLocked()V

    .line 153
    invoke-direct {p0}, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->unregisterBecomingNoisyReceiverLocked()V

    goto :goto_0

    .line 155
    :cond_0
    invoke-direct {p0}, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->requestAudioFocusLocked()Z

    move-result v3

    move v1, v3

    .line 156
    if-eqz v1, :cond_1

    .line 157
    invoke-direct {p0}, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->registerBecomingNoisyReceiverLocked()V

    goto :goto_0

    .line 156
    :cond_1
    nop

    .line 160
    :goto_0
    monitor-exit v2

    .line 161
    return v1

    .line 160
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public onReset()V
    .locals 2

    .line 174
    iget-object v0, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 175
    :try_start_0
    invoke-direct {p0}, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->abandonAudioFocusLocked()V

    .line 176
    invoke-direct {p0}, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->unregisterBecomingNoisyReceiverLocked()V

    .line 177
    monitor-exit v0

    .line 178
    return-void

    .line 177
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 190
    iget-object v0, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mBecomingNoisyReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 191
    return-void
.end method
