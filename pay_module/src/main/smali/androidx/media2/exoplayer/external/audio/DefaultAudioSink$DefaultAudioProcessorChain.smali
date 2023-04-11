.class public Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$DefaultAudioProcessorChain;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$AudioProcessorChain;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultAudioProcessorChain"
.end annotation


# instance fields
.field private final audioProcessors:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

.field private final silenceSkippingAudioProcessor:Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;

.field private final sonicAudioProcessor:Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;


# direct methods
.method public varargs constructor <init>([Landroidx/media2/exoplayer/external/audio/AudioProcessor;)V
    .locals 3
    .param p1, "audioProcessors"    # [Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$DefaultAudioProcessorChain;->audioProcessors:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    .line 132
    new-instance v0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$DefaultAudioProcessorChain;->silenceSkippingAudioProcessor:Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;

    .line 133
    new-instance v0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$DefaultAudioProcessorChain;->sonicAudioProcessor:Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;

    .line 134
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$DefaultAudioProcessorChain;->audioProcessors:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    array-length v1, p1

    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$DefaultAudioProcessorChain;->silenceSkippingAudioProcessor:Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;

    aput-object v2, v0, v1

    .line 135
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$DefaultAudioProcessorChain;->sonicAudioProcessor:Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;

    aput-object v2, v0, v1

    .line 136
    return-void
.end method


# virtual methods
.method public applyPlaybackParameters(Landroidx/media2/exoplayer/external/PlaybackParameters;)Landroidx/media2/exoplayer/external/PlaybackParameters;
    .locals 4
    .param p1, "playbackParameters"    # Landroidx/media2/exoplayer/external/PlaybackParameters;

    .line 145
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$DefaultAudioProcessorChain;->silenceSkippingAudioProcessor:Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;

    iget-boolean v1, p1, Landroidx/media2/exoplayer/external/PlaybackParameters;->skipSilence:Z

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->setEnabled(Z)V

    .line 146
    new-instance v0, Landroidx/media2/exoplayer/external/PlaybackParameters;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$DefaultAudioProcessorChain;->sonicAudioProcessor:Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;

    iget v2, p1, Landroidx/media2/exoplayer/external/PlaybackParameters;->speed:F

    .line 147
    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->setSpeed(F)F

    move-result v1

    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$DefaultAudioProcessorChain;->sonicAudioProcessor:Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;

    iget v3, p1, Landroidx/media2/exoplayer/external/PlaybackParameters;->pitch:F

    .line 148
    invoke-virtual {v2, v3}, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->setPitch(F)F

    move-result v2

    iget-boolean v3, p1, Landroidx/media2/exoplayer/external/PlaybackParameters;->skipSilence:Z

    invoke-direct {v0, v1, v2, v3}, Landroidx/media2/exoplayer/external/PlaybackParameters;-><init>(FFZ)V

    .line 146
    return-object v0
.end method

.method public getAudioProcessors()[Landroidx/media2/exoplayer/external/audio/AudioProcessor;
    .locals 1

    .line 140
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$DefaultAudioProcessorChain;->audioProcessors:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    return-object v0
.end method

.method public getMediaDuration(J)J
    .locals 2
    .param p1, "playoutDuration"    # J

    .line 154
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$DefaultAudioProcessorChain;->sonicAudioProcessor:Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->scaleDurationForSpeedup(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSkippedOutputFrameCount()J
    .locals 2

    .line 159
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$DefaultAudioProcessorChain;->silenceSkippingAudioProcessor:Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->getSkippedFrames()J

    move-result-wide v0

    return-wide v0
.end method
