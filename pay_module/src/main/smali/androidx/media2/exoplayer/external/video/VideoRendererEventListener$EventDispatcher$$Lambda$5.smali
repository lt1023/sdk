.class final synthetic Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;

.field private final arg$2:Landroid/view/Surface;


# direct methods
.method constructor <init>(Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher$$Lambda$5;->arg$1:Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;

    iput-object p2, p0, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher$$Lambda$5;->arg$2:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher$$Lambda$5;->arg$1:Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher$$Lambda$5;->arg$2:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;->lambda$renderedFirstFrame$5$VideoRendererEventListener$EventDispatcher(Landroid/view/Surface;)V

    return-void
.end method
