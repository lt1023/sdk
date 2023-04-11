.class Landroidx/media2/widget/VideoTextureView;
.super Landroid/view/TextureView;
.source "VideoTextureView.java"

# interfaces
.implements Landroidx/media2/widget/VideoViewInterface;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "VideoTextureView"


# instance fields
.field private mPlayer:Landroidx/media2/widget/PlayerWrapper;

.field private mSurface:Landroid/view/Surface;

.field mSurfaceListener:Landroidx/media2/widget/VideoViewInterface$SurfaceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    const-string v0, "VideoTextureView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidx/media2/widget/VideoTextureView;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-virtual {p0, p0}, Landroidx/media2/widget/VideoTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 42
    return-void
.end method


# virtual methods
.method public assignSurfaceToPlayerWrapper(Landroidx/media2/widget/PlayerWrapper;)Z
    .locals 3
    .param p1, "player"    # Landroidx/media2/widget/PlayerWrapper;

    .line 50
    iput-object p1, p0, Landroidx/media2/widget/VideoTextureView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    .line 51
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/media2/widget/VideoTextureView;->hasAvailableSurface()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Landroidx/media2/widget/VideoTextureView;->mSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Landroidx/media2/widget/PlayerWrapper;->setSurface(Landroid/view/Surface;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Landroidx/media2/widget/VideoTextureView$1;

    invoke-direct {v1, p0}, Landroidx/media2/widget/VideoTextureView$1;-><init>(Landroidx/media2/widget/VideoTextureView;)V

    .line 63
    invoke-virtual {p0}, Landroidx/media2/widget/VideoTextureView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 55
    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 65
    const/4 v0, 0x1

    return v0

    .line 51
    :cond_1
    :goto_0
    nop

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public getViewType()I
    .locals 1

    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public hasAvailableSurface()Z
    .locals 1

    .line 80
    iget-object v0, p0, Landroidx/media2/widget/VideoTextureView;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 119
    iget-object v0, p0, Landroidx/media2/widget/VideoTextureView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media2/widget/PlayerWrapper;->getVideoSize()Landroidx/media2/common/VideoSize;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media2/common/VideoSize;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 120
    .local v0, "videoWidth":I
    :goto_0
    iget-object v2, p0, Landroidx/media2/widget/VideoTextureView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/media2/widget/PlayerWrapper;->getVideoSize()Landroidx/media2/common/VideoSize;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media2/common/VideoSize;->getHeight()I

    move-result v1

    nop

    .line 125
    .local v1, "videoHeight":I
    :cond_1
    if-eqz v0, :cond_c

    if-nez v1, :cond_2

    goto/16 :goto_3

    .line 132
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 133
    .local v2, "widthSpecMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 134
    .local v3, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 135
    .local v4, "heightSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 137
    .local v5, "heightSpecSize":I
    const/high16 v6, 0x40000000    # 2.0f

    if-ne v2, v6, :cond_5

    if-ne v4, v6, :cond_5

    .line 139
    move v6, v3

    .line 140
    .local v6, "width":I
    move v7, v5

    .line 143
    .local v7, "height":I
    mul-int v8, v0, v7

    mul-int v9, v6, v1

    if-ge v8, v9, :cond_3

    .line 144
    mul-int v8, v7, v0

    div-int v6, v8, v1

    goto/16 :goto_2

    .line 145
    :cond_3
    mul-int v8, v0, v7

    mul-int v9, v6, v1

    if-le v8, v9, :cond_4

    .line 146
    mul-int v8, v6, v1

    div-int v7, v8, v0

    goto :goto_2

    .line 145
    :cond_4
    goto :goto_2

    .line 137
    .end local v6    # "width":I
    .end local v7    # "height":I
    :cond_5
    nop

    .line 148
    const/high16 v7, 0x1000000

    const/high16 v8, -0x80000000

    if-ne v2, v6, :cond_7

    .line 150
    move v6, v3

    .line 151
    .restart local v6    # "width":I
    mul-int v9, v6, v1

    div-int/2addr v9, v0

    .line 152
    .local v9, "height":I
    if-ne v4, v8, :cond_6

    if-le v9, v5, :cond_6

    .line 154
    or-int/2addr v7, v5

    goto :goto_2

    .line 152
    :cond_6
    nop

    .line 180
    move v7, v9

    goto :goto_2

    .line 156
    .end local v6    # "width":I
    .end local v9    # "height":I
    :cond_7
    if-ne v4, v6, :cond_9

    .line 158
    move v6, v5

    .line 159
    .local v6, "height":I
    mul-int v9, v6, v0

    div-int/2addr v9, v1

    .line 160
    .local v9, "width":I
    if-ne v2, v8, :cond_8

    if-le v9, v3, :cond_8

    .line 162
    or-int/2addr v7, v3

    move v10, v7

    move v7, v6

    move v6, v10

    goto :goto_2

    .line 160
    :cond_8
    nop

    .line 180
    move v7, v6

    move v6, v9

    goto :goto_2

    .line 166
    .end local v6    # "height":I
    .end local v9    # "width":I
    :cond_9
    move v6, v0

    .line 167
    .local v6, "width":I
    move v7, v1

    .line 168
    .restart local v7    # "height":I
    if-ne v4, v8, :cond_a

    if-le v7, v5, :cond_a

    .line 170
    move v7, v5

    .line 171
    mul-int v9, v7, v0

    div-int/2addr v9, v1

    move v6, v9

    goto :goto_1

    .line 168
    :cond_a
    nop

    .line 173
    :goto_1
    if-ne v2, v8, :cond_b

    if-le v6, v3, :cond_b

    .line 175
    move v6, v3

    .line 176
    mul-int v8, v6, v1

    div-int v7, v8, v0

    goto :goto_2

    .line 173
    :cond_b
    nop

    .line 180
    :goto_2
    invoke-virtual {p0, v6, v7}, Landroidx/media2/widget/VideoTextureView;->setMeasuredDimension(II)V

    .line 181
    return-void

    .line 125
    .end local v2    # "widthSpecMode":I
    .end local v3    # "widthSpecSize":I
    .end local v4    # "heightSpecMode":I
    .end local v5    # "heightSpecSize":I
    .end local v6    # "width":I
    .end local v7    # "height":I
    :cond_c
    :goto_3
    nop

    .line 126
    invoke-static {v0, p1}, Landroidx/media2/widget/VideoTextureView;->getDefaultSize(II)I

    move-result v2

    .line 127
    .local v2, "width":I
    invoke-static {v1, p2}, Landroidx/media2/widget/VideoTextureView;->getDefaultSize(II)I

    move-result v3

    .line 128
    .local v3, "height":I
    invoke-virtual {p0, v2, v3}, Landroidx/media2/widget/VideoTextureView;->setMeasuredDimension(II)V

    .line 129
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 89
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Landroidx/media2/widget/VideoTextureView;->mSurface:Landroid/view/Surface;

    .line 90
    iget-object v0, p0, Landroidx/media2/widget/VideoTextureView;->mSurfaceListener:Landroidx/media2/widget/VideoViewInterface$SurfaceListener;

    if-eqz v0, :cond_0

    .line 91
    invoke-interface {v0, p0, p2, p3}, Landroidx/media2/widget/VideoViewInterface$SurfaceListener;->onSurfaceCreated(Landroid/view/View;II)V

    goto :goto_0

    .line 90
    :cond_0
    nop

    .line 93
    :goto_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .line 110
    iget-object v0, p0, Landroidx/media2/widget/VideoTextureView;->mSurfaceListener:Landroidx/media2/widget/VideoViewInterface$SurfaceListener;

    if-eqz v0, :cond_0

    .line 111
    invoke-interface {v0, p0}, Landroidx/media2/widget/VideoViewInterface$SurfaceListener;->onSurfaceDestroyed(Landroid/view/View;)V

    goto :goto_0

    .line 110
    :cond_0
    nop

    .line 113
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/widget/VideoTextureView;->mSurface:Landroid/view/Surface;

    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 97
    iget-object v0, p0, Landroidx/media2/widget/VideoTextureView;->mSurfaceListener:Landroidx/media2/widget/VideoViewInterface$SurfaceListener;

    if-eqz v0, :cond_0

    .line 98
    invoke-interface {v0, p0, p2, p3}, Landroidx/media2/widget/VideoViewInterface$SurfaceListener;->onSurfaceChanged(Landroid/view/View;II)V

    goto :goto_0

    .line 97
    :cond_0
    nop

    .line 101
    :goto_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .line 106
    return-void
.end method

.method public setSurfaceListener(Landroidx/media2/widget/VideoViewInterface$SurfaceListener;)V
    .locals 0
    .param p1, "l"    # Landroidx/media2/widget/VideoViewInterface$SurfaceListener;

    .line 70
    iput-object p1, p0, Landroidx/media2/widget/VideoTextureView;->mSurfaceListener:Landroidx/media2/widget/VideoViewInterface$SurfaceListener;

    .line 71
    return-void
.end method
