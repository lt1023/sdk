.class public abstract Landroidx/media2/exoplayer/external/NoSampleRenderer;
.super Ljava/lang/Object;
.source "NoSampleRenderer.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/Renderer;
.implements Landroidx/media2/exoplayer/external/RendererCapabilities;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private configuration:Landroidx/media2/exoplayer/external/RendererConfiguration;

.field private index:I

.field private state:I

.field private stream:Landroidx/media2/exoplayer/external/source/SampleStream;

.field private streamIsFinal:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final disable()V
    .locals 3

    .line 165
    iget v0, p0, Landroidx/media2/exoplayer/external/NoSampleRenderer;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 166
    iput v2, p0, Landroidx/media2/exoplayer/external/NoSampleRenderer;->state:I

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/NoSampleRenderer;->stream:Landroidx/media2/exoplayer/external/source/SampleStream;

    .line 168
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/NoSampleRenderer;->streamIsFinal:Z

    .line 169
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/NoSampleRenderer;->onDisabled()V

    .line 170
    return-void
.end method

.method public final enable(Landroidx/media2/exoplayer/external/RendererConfiguration;[Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/source/SampleStream;JZJ)V
    .locals 2
    .param p1, "configuration"    # Landroidx/media2/exoplayer/external/RendererConfiguration;
    .param p2, "formats"    # [Landroidx/media2/exoplayer/external/Format;
    .param p3, "stream"    # Landroidx/media2/exoplayer/external/source/SampleStream;
    .param p4, "positionUs"    # J
    .param p6, "joining"    # Z
    .param p7, "offsetUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 86
    iget v0, p0, Landroidx/media2/exoplayer/external/NoSampleRenderer;->state:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 87
    iput-object p1, p0, Landroidx/media2/exoplayer/external/NoSampleRenderer;->configuration:Landroidx/media2/exoplayer/external/RendererConfiguration;

    .line 88
    iput v1, p0, Landroidx/media2/exoplayer/external/NoSampleRenderer;->state:I

    .line 89
    invoke-virtual {p0, p6}, Landroidx/media2/exoplayer/external/NoSampleRenderer;->onEnabled(Z)V

    .line 90
    invoke-virtual {p0, p2, p3, p7, p8}, Landroidx/media2/exoplayer/external/NoSampleRenderer;->replaceStream([Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/source/SampleStream;J)V

    .line 91
    invoke-virtual {p0, p4, p5, p6}, Landroidx/media2/exoplayer/external/NoSampleRenderer;->onPositionReset(JZ)V

    .line 92
    return-void
.end method

.method public final getCapabilities()Landroidx/media2/exoplayer/external/RendererCapabilities;
    .locals 0

    .line 49
    return-object p0
.end method

.method protected final getConfiguration()Landroidx/media2/exoplayer/external/RendererConfiguration;
    .locals 1

    .line 295
    iget-object v0, p0, Landroidx/media2/exoplayer/external/NoSampleRenderer;->configuration:Landroidx/media2/exoplayer/external/RendererConfiguration;

    return-object v0
.end method

.method protected final getIndex()I
    .locals 1

    .line 302
    iget v0, p0, Landroidx/media2/exoplayer/external/NoSampleRenderer;->index:I

    return v0
.end method

.method public getMediaClock()Landroidx/media2/exoplayer/external/util/MediaClock;
    .locals 1

    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public getReadingPositionUs()J
    .locals 2

    .line 133
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public final getState()I
    .locals 1

    .line 64
    iget v0, p0, Landroidx/media2/exoplayer/external/NoSampleRenderer;->state:I

    return v0
.end method

.method public final getStream()Landroidx/media2/exoplayer/external/source/SampleStream;
    .locals 1

    .line 123
    iget-object v0, p0, Landroidx/media2/exoplayer/external/NoSampleRenderer;->stream:Landroidx/media2/exoplayer/external/source/SampleStream;

    return-object v0
.end method

.method public final getTrackType()I
    .locals 1

    .line 44
    const/4 v0, 0x6

    return v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 0
    .param p1, "what"    # I
    .param p2, "object"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 205
    return-void
.end method

.method public final hasReadStreamToEnd()Z
    .locals 1

    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method public final isCurrentStreamFinal()Z
    .locals 1

    .line 143
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/NoSampleRenderer;->streamIsFinal:Z

    return v0
.end method

.method public isEnded()Z
    .locals 1

    .line 185
    const/4 v0, 0x1

    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 180
    const/4 v0, 0x1

    return v0
.end method

.method public final maybeThrowStreamError()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    return-void
.end method

.method protected onDisabled()V
    .locals 0

    .line 278
    return-void
.end method

.method protected onEnabled(Z)V
    .locals 0
    .param p1, "joining"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 219
    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 0
    .param p1, "positionUs"    # J
    .param p3, "joining"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 247
    return-void
.end method

.method protected onRendererOffsetChanged(J)V
    .locals 0
    .param p1, "offsetUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 232
    return-void
.end method

.method protected onReset()V
    .locals 0

    .line 287
    return-void
.end method

.method protected onStarted()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 258
    return-void
.end method

.method protected onStopped()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 269
    return-void
.end method

.method public final replaceStream([Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/source/SampleStream;J)V
    .locals 1
    .param p1, "formats"    # [Landroidx/media2/exoplayer/external/Format;
    .param p2, "stream"    # Landroidx/media2/exoplayer/external/source/SampleStream;
    .param p3, "offsetUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 116
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/NoSampleRenderer;->streamIsFinal:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 117
    iput-object p2, p0, Landroidx/media2/exoplayer/external/NoSampleRenderer;->stream:Landroidx/media2/exoplayer/external/source/SampleStream;

    .line 118
    invoke-virtual {p0, p3, p4}, Landroidx/media2/exoplayer/external/NoSampleRenderer;->onRendererOffsetChanged(J)V

    .line 119
    return-void
.end method

.method public final reset()V
    .locals 1

    .line 174
    iget v0, p0, Landroidx/media2/exoplayer/external/NoSampleRenderer;->state:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 175
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/NoSampleRenderer;->onReset()V

    .line 176
    return-void
.end method

.method public final resetPosition(J)V
    .locals 1
    .param p1, "positionUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/NoSampleRenderer;->streamIsFinal:Z

    .line 153
    invoke-virtual {p0, p1, p2, v0}, Landroidx/media2/exoplayer/external/NoSampleRenderer;->onPositionReset(JZ)V

    .line 154
    return-void
.end method

.method public final setCurrentStreamFinal()V
    .locals 1

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/NoSampleRenderer;->streamIsFinal:Z

    .line 139
    return-void
.end method

.method public final setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .line 54
    iput p1, p0, Landroidx/media2/exoplayer/external/NoSampleRenderer;->index:I

    .line 55
    return-void
.end method

.method public setOperatingRate(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    invoke-static {p0, p1}, Landroidx/media2/exoplayer/external/Renderer$$CC;->setOperatingRate$$dflt$$(Landroidx/media2/exoplayer/external/Renderer;F)V

    return-void
.end method

.method public final start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 96
    iget v0, p0, Landroidx/media2/exoplayer/external/NoSampleRenderer;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 97
    const/4 v0, 0x2

    iput v0, p0, Landroidx/media2/exoplayer/external/NoSampleRenderer;->state:I

    .line 98
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/NoSampleRenderer;->onStarted()V

    .line 99
    return-void
.end method

.method public final stop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 158
    iget v0, p0, Landroidx/media2/exoplayer/external/NoSampleRenderer;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 159
    iput v1, p0, Landroidx/media2/exoplayer/external/NoSampleRenderer;->state:I

    .line 160
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/NoSampleRenderer;->onStopped()V

    .line 161
    return-void
.end method

.method public supportsFormat(Landroidx/media2/exoplayer/external/Format;)I
    .locals 1
    .param p1, "format"    # Landroidx/media2/exoplayer/external/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public supportsMixedMimeTypeAdaptation()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 197
    const/4 v0, 0x0

    return v0
.end method
