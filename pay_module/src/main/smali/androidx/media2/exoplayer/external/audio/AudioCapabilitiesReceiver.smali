.class public final Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver;
.super Ljava/lang/Object;
.source "AudioCapabilitiesReceiver.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;,
        Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;,
        Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver$Listener;
    }
.end annotation


# instance fields
.field audioCapabilities:Landroidx/media2/exoplayer/external/audio/AudioCapabilities;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final externalSurroundSoundSettingObserver:Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;

.field private final listener:Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver$Listener;

.field private final receiver:Landroid/content/BroadcastReceiver;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private registered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver$Listener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver$Listener;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 72
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver;->context:Landroid/content/Context;

    .line 73
    invoke-static {p2}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver$Listener;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver;->listener:Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver$Listener;

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroidx/media2/exoplayer/external/util/Util;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver;->handler:Landroid/os/Handler;

    .line 75
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    new-instance v0, Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;-><init>(Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver;Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver$1;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver;->receiver:Landroid/content/BroadcastReceiver;

    .line 76
    invoke-static {}, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;->getExternalSurroundSoundGlobalSettingUri()Landroid/net/Uri;

    move-result-object v0

    .line 77
    .local v0, "externalSurroundSoundUri":Landroid/net/Uri;
    nop

    .line 78
    if-eqz v0, :cond_1

    .line 79
    new-instance v1, Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver;->handler:Landroid/os/Handler;

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v0}, Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;-><init>(Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver;Landroid/os/Handler;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_1

    .line 81
    :cond_1
    nop

    :goto_1
    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver;->externalSurroundSoundSettingObserver:Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;

    .line 82
    nop

    return-void
.end method

.method static synthetic access$100(Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver;Landroidx/media2/exoplayer/external/audio/AudioCapabilities;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver;
    .param p1, "x1"    # Landroidx/media2/exoplayer/external/audio/AudioCapabilities;

    .line 41
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver;->onNewAudioCapabilities(Landroidx/media2/exoplayer/external/audio/AudioCapabilities;)V

    return-void
.end method

.method static synthetic access$200(Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver;

    .line 41
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver;->context:Landroid/content/Context;

    return-object v0
.end method

.method private onNewAudioCapabilities(Landroidx/media2/exoplayer/external/audio/AudioCapabilities;)V
    .locals 1
    .param p1, "newAudioCapabilities"    # Landroidx/media2/exoplayer/external/audio/AudioCapabilities;

    .line 130
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver;->registered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver;->audioCapabilities:Landroidx/media2/exoplayer/external/audio/AudioCapabilities;

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver;->audioCapabilities:Landroidx/media2/exoplayer/external/audio/AudioCapabilities;

    .line 132
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver;->listener:Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver$Listener;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver$Listener;->onAudioCapabilitiesChanged(Landroidx/media2/exoplayer/external/audio/AudioCapabilities;)V

    goto :goto_0

    .line 130
    :cond_0
    nop

    .line 134
    :goto_0
    return-void
.end method


# virtual methods
.method public register()Landroidx/media2/exoplayer/external/audio/AudioCapabilities;
    .locals 6

    .line 93
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver;->registered:Z

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver;->audioCapabilities:Landroidx/media2/exoplayer/external/audio/AudioCapabilities;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;

    return-object v0

    .line 96
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver;->registered:Z

    .line 97
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver;->externalSurroundSoundSettingObserver:Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;->register()V

    goto :goto_0

    .line 97
    :cond_1
    nop

    .line 100
    :goto_0
    const/4 v0, 0x0

    .line 101
    .local v0, "stickyIntent":Landroid/content/Intent;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_2

    .line 102
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 103
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver;->context:Landroid/content/Context;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver;->receiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    iget-object v5, p0, Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver;->handler:Landroid/os/Handler;

    .line 104
    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    .line 101
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_2
    nop

    .line 107
    :goto_1
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;->getCapabilities(Landroid/content/Context;Landroid/content/Intent;)Landroidx/media2/exoplayer/external/audio/AudioCapabilities;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver;->audioCapabilities:Landroidx/media2/exoplayer/external/audio/AudioCapabilities;

    .line 108
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver;->audioCapabilities:Landroidx/media2/exoplayer/external/audio/AudioCapabilities;

    return-object v1
.end method

.method public unregister()V
    .locals 2

    .line 116
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver;->registered:Z

    if-nez v0, :cond_0

    .line 117
    return-void

    .line 119
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver;->audioCapabilities:Landroidx/media2/exoplayer/external/audio/AudioCapabilities;

    .line 120
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 121
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 120
    :cond_1
    nop

    .line 123
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver;->externalSurroundSoundSettingObserver:Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;

    if-eqz v0, :cond_2

    .line 124
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;->unregister()V

    goto :goto_1

    .line 123
    :cond_2
    nop

    .line 126
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver;->registered:Z

    .line 127
    return-void
.end method
