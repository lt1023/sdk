.class final Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioCapabilitiesReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HdmiAudioPlugBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver;


# direct methods
.method private constructor <init>(Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver;)V
    .locals 0

    .line 136
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;->this$0:Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver;Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver;
    .param p2, "x1"    # Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver$1;

    .line 136
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;-><init>(Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 140
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;->this$0:Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver;

    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;->getCapabilities(Landroid/content/Context;Landroid/content/Intent;)Landroidx/media2/exoplayer/external/audio/AudioCapabilities;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver;->access$100(Landroidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver;Landroidx/media2/exoplayer/external/audio/AudioCapabilities;)V

    goto :goto_0

    .line 140
    :cond_0
    nop

    .line 143
    :goto_0
    return-void
.end method
