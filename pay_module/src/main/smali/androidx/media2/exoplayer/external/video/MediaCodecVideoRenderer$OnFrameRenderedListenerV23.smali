.class final Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;
.super Ljava/lang/Object;
.source "MediaCodecVideoRenderer.java"

# interfaces
.implements Landroid/media/MediaCodec$OnFrameRenderedListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnFrameRenderedListenerV23"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;


# direct methods
.method private constructor <init>(Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;Landroid/media/MediaCodec;)V
    .locals 0
    .param p2, "codec"    # Landroid/media/MediaCodec;

    .line 1623
    iput-object p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->this$0:Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1624
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p2, p0, p1}, Landroid/media/MediaCodec;->setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V

    .line 1625
    return-void
.end method

.method synthetic constructor <init>(Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;Landroid/media/MediaCodec;Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;
    .param p2, "x1"    # Landroid/media/MediaCodec;
    .param p3, "x2"    # Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$1;

    .line 1621
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;-><init>(Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;Landroid/media/MediaCodec;)V

    return-void
.end method


# virtual methods
.method public onFrameRendered(Landroid/media/MediaCodec;JJ)V
    .locals 1
    .param p1, "codec"    # Landroid/media/MediaCodec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "presentationTimeUs"    # J
    .param p4, "nanoTime"    # J

    .line 1629
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->this$0:Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->tunnelingOnFrameRenderedListener:Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    if-eq p0, v0, :cond_0

    .line 1631
    return-void

    .line 1633
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->this$0:Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;

    invoke-virtual {v0, p2, p3}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->onProcessedTunneledBuffer(J)V

    .line 1634
    return-void
.end method
