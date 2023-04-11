.class final Landroidx/media2/player/exoplayer/ExoPlayerWrapper$PollBufferRunnable;
.super Ljava/lang/Object;
.source "ExoPlayerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/exoplayer/ExoPlayerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PollBufferRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/player/exoplayer/ExoPlayerWrapper;


# direct methods
.method constructor <init>(Landroidx/media2/player/exoplayer/ExoPlayerWrapper;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/player/exoplayer/ExoPlayerWrapper;

    .line 797
    iput-object p1, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$PollBufferRunnable;->this$0:Landroidx/media2/player/exoplayer/ExoPlayerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 800
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$PollBufferRunnable;->this$0:Landroidx/media2/player/exoplayer/ExoPlayerWrapper;

    invoke-virtual {v0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->updateBufferingAndScheduleNextPollBuffer()V

    .line 801
    return-void
.end method
