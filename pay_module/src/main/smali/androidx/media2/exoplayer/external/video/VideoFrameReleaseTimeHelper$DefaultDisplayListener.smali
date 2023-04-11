.class final Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;
.super Ljava/lang/Object;
.source "VideoFrameReleaseTimeHelper.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DefaultDisplayListener"
.end annotation


# instance fields
.field private final displayManager:Landroid/hardware/display/DisplayManager;

.field final synthetic this$0:Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;Landroid/hardware/display/DisplayManager;)V
    .locals 0
    .param p2, "displayManager"    # Landroid/hardware/display/DisplayManager;

    .line 240
    iput-object p1, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;->this$0:Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput-object p2, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;->displayManager:Landroid/hardware/display/DisplayManager;

    .line 242
    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 255
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1
    .param p1, "displayId"    # I

    .line 264
    if-nez p1, :cond_0

    .line 265
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;->this$0:Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->access$000(Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;)V

    goto :goto_0

    .line 264
    :cond_0
    nop

    .line 267
    :goto_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 260
    return-void
.end method

.method public register()V
    .locals 2

    .line 245
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;->displayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 246
    return-void
.end method

.method public unregister()V
    .locals 1

    .line 249
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;->displayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 250
    return-void
.end method
