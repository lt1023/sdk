.class Landroidx/media2/widget/VideoTextureView$1;
.super Ljava/lang/Object;
.source "VideoTextureView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/widget/VideoTextureView;->assignSurfaceToPlayerWrapper(Landroidx/media2/widget/PlayerWrapper;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/widget/VideoTextureView;


# direct methods
.method constructor <init>(Landroidx/media2/widget/VideoTextureView;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/widget/VideoTextureView;

    .line 56
    iput-object p1, p0, Landroidx/media2/widget/VideoTextureView$1;->this$0:Landroidx/media2/widget/VideoTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 59
    iget-object v0, p0, Landroidx/media2/widget/VideoTextureView$1;->this$0:Landroidx/media2/widget/VideoTextureView;

    iget-object v0, v0, Landroidx/media2/widget/VideoTextureView;->mSurfaceListener:Landroidx/media2/widget/VideoViewInterface$SurfaceListener;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Landroidx/media2/widget/VideoTextureView$1;->this$0:Landroidx/media2/widget/VideoTextureView;

    iget-object v0, v0, Landroidx/media2/widget/VideoTextureView;->mSurfaceListener:Landroidx/media2/widget/VideoViewInterface$SurfaceListener;

    iget-object v1, p0, Landroidx/media2/widget/VideoTextureView$1;->this$0:Landroidx/media2/widget/VideoTextureView;

    invoke-interface {v0, v1}, Landroidx/media2/widget/VideoViewInterface$SurfaceListener;->onSurfaceTakeOverDone(Landroidx/media2/widget/VideoViewInterface;)V

    goto :goto_0

    .line 59
    :cond_0
    nop

    .line 62
    :goto_0
    return-void
.end method
