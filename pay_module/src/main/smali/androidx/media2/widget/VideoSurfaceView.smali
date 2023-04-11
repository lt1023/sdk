.class Landroidx/media2/widget/VideoSurfaceView;
.super Landroid/view/SurfaceView;
.source "VideoSurfaceView.java"

# interfaces
.implements Landroidx/media2/widget/VideoViewInterface;
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "VideoSurfaceView"


# instance fields
.field private mPlayer:Landroidx/media2/widget/PlayerWrapper;

.field private mSurface:Landroid/view/Surface;

.field mSurfaceListener:Landroidx/media2/widget/VideoViewInterface$SurfaceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    const-string v0, "VideoSurfaceView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidx/media2/widget/VideoSurfaceView;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    iput-object v0, p0, Landroidx/media2/widget/VideoSurfaceView;->mSurface:Landroid/view/Surface;

    .line 35
    iput-object v0, p0, Landroidx/media2/widget/VideoSurfaceView;->mSurfaceListener:Landroidx/media2/widget/VideoViewInterface$SurfaceListener;

    .line 40
    invoke-virtual {p0}, Landroidx/media2/widget/VideoSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 41
    return-void
.end method


# virtual methods
.method public assignSurfaceToPlayerWrapper(Landroidx/media2/widget/PlayerWrapper;)Z
    .locals 3
    .param p1, "player"    # Landroidx/media2/widget/PlayerWrapper;

    .line 49
    iput-object p1, p0, Landroidx/media2/widget/VideoSurfaceView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    .line 50
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/media2/widget/VideoSurfaceView;->hasAvailableSurface()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Landroidx/media2/widget/VideoSurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Landroidx/media2/widget/PlayerWrapper;->setSurface(Landroid/view/Surface;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Landroidx/media2/widget/VideoSurfaceView$1;

    invoke-direct {v1, p0}, Landroidx/media2/widget/VideoSurfaceView$1;-><init>(Landroidx/media2/widget/VideoSurfaceView;)V

    .line 61
    invoke-virtual {p0}, Landroidx/media2/widget/VideoSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 53
    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 63
    const/4 v0, 0x1

    return v0

    .line 50
    :cond_1
    :goto_0
    nop

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public getViewType()I
    .locals 1

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public hasAvailableSurface()Z
    .locals 1

    .line 78
    iget-object v0, p0, Landroidx/media2/widget/VideoSurfaceView;->mSurface:Landroid/view/Surface;

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

    .line 112
    iget-object v0, p0, Landroidx/media2/widget/VideoSurfaceView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media2/widget/PlayerWrapper;->getVideoSize()Landroidx/media2/common/VideoSize;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media2/common/VideoSize;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 113
    .local v0, "videoWidth":I
    :goto_0
    iget-object v2, p0, Landroidx/media2/widget/VideoSurfaceView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/media2/widget/PlayerWrapper;->getVideoSize()Landroidx/media2/common/VideoSize;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media2/common/VideoSize;->getHeight()I

    move-result v1

    nop

    .line 118
    .local v1, "videoHeight":I
    :cond_1
    if-eqz v0, :cond_c

    if-nez v1, :cond_2

    goto/16 :goto_3

    .line 125
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 126
    .local v2, "widthSpecMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 127
    .local v3, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 128
    .local v4, "heightSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 130
    .local v5, "heightSpecSize":I
    const/high16 v6, 0x40000000    # 2.0f

    if-ne v2, v6, :cond_5

    if-ne v4, v6, :cond_5

    .line 132
    move v6, v3

    .line 133
    .local v6, "width":I
    move v7, v5

    .line 136
    .local v7, "height":I
    mul-int v8, v0, v7

    mul-int v9, v6, v1

    if-ge v8, v9, :cond_3

    .line 137
    mul-int v8, v7, v0

    div-int v6, v8, v1

    goto/16 :goto_2

    .line 138
    :cond_3
    mul-int v8, v0, v7

    mul-int v9, v6, v1

    if-le v8, v9, :cond_4

    .line 139
    mul-int v8, v6, v1

    div-int v7, v8, v0

    goto :goto_2

    .line 138
    :cond_4
    goto :goto_2

    .line 130
    .end local v6    # "width":I
    .end local v7    # "height":I
    :cond_5
    nop

    .line 141
    const/high16 v7, 0x1000000

    const/high16 v8, -0x80000000

    if-ne v2, v6, :cond_7

    .line 143
    move v6, v3

    .line 144
    .restart local v6    # "width":I
    mul-int v9, v6, v1

    div-int/2addr v9, v0

    .line 145
    .local v9, "height":I
    if-ne v4, v8, :cond_6

    if-le v9, v5, :cond_6

    .line 147
    or-int/2addr v7, v5

    goto :goto_2

    .line 145
    :cond_6
    nop

    .line 173
    move v7, v9

    goto :goto_2

    .line 149
    .end local v6    # "width":I
    .end local v9    # "height":I
    :cond_7
    if-ne v4, v6, :cond_9

    .line 151
    move v6, v5

    .line 152
    .local v6, "height":I
    mul-int v9, v6, v0

    div-int/2addr v9, v1

    .line 153
    .local v9, "width":I
    if-ne v2, v8, :cond_8

    if-le v9, v3, :cond_8

    .line 155
    or-int/2addr v7, v3

    move v10, v7

    move v7, v6

    move v6, v10

    goto :goto_2

    .line 153
    :cond_8
    nop

    .line 173
    move v7, v6

    move v6, v9

    goto :goto_2

    .line 159
    .end local v6    # "height":I
    .end local v9    # "width":I
    :cond_9
    move v6, v0

    .line 160
    .local v6, "width":I
    move v7, v1

    .line 161
    .restart local v7    # "height":I
    if-ne v4, v8, :cond_a

    if-le v7, v5, :cond_a

    .line 163
    move v7, v5

    .line 164
    mul-int v9, v7, v0

    div-int/2addr v9, v1

    move v6, v9

    goto :goto_1

    .line 161
    :cond_a
    nop

    .line 166
    :goto_1
    if-ne v2, v8, :cond_b

    if-le v6, v3, :cond_b

    .line 168
    move v6, v3

    .line 169
    mul-int v8, v6, v1

    div-int v7, v8, v0

    goto :goto_2

    .line 166
    :cond_b
    nop

    .line 173
    :goto_2
    invoke-virtual {p0, v6, v7}, Landroidx/media2/widget/VideoSurfaceView;->setMeasuredDimension(II)V

    .line 174
    return-void

    .line 118
    .end local v2    # "widthSpecMode":I
    .end local v3    # "widthSpecSize":I
    .end local v4    # "heightSpecMode":I
    .end local v5    # "heightSpecSize":I
    .end local v6    # "width":I
    .end local v7    # "height":I
    :cond_c
    :goto_3
    nop

    .line 119
    invoke-static {v0, p1}, Landroidx/media2/widget/VideoSurfaceView;->getDefaultSize(II)I

    move-result v2

    .line 120
    .local v2, "width":I
    invoke-static {v1, p2}, Landroidx/media2/widget/VideoSurfaceView;->getDefaultSize(II)I

    move-result v3

    .line 121
    .local v3, "height":I
    invoke-virtual {p0, v2, v3}, Landroidx/media2/widget/VideoSurfaceView;->setMeasuredDimension(II)V

    .line 122
    return-void
.end method

.method public setSurfaceListener(Landroidx/media2/widget/VideoViewInterface$SurfaceListener;)V
    .locals 0
    .param p1, "l"    # Landroidx/media2/widget/VideoViewInterface$SurfaceListener;

    .line 68
    iput-object p1, p0, Landroidx/media2/widget/VideoSurfaceView;->mSurfaceListener:Landroidx/media2/widget/VideoViewInterface$SurfaceListener;

    .line 69
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 96
    iget-object v0, p0, Landroidx/media2/widget/VideoSurfaceView;->mSurfaceListener:Landroidx/media2/widget/VideoViewInterface$SurfaceListener;

    if-eqz v0, :cond_0

    .line 97
    invoke-interface {v0, p0, p3, p4}, Landroidx/media2/widget/VideoViewInterface$SurfaceListener;->onSurfaceChanged(Landroid/view/View;II)V

    goto :goto_0

    .line 96
    :cond_0
    nop

    .line 99
    :goto_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 87
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/widget/VideoSurfaceView;->mSurface:Landroid/view/Surface;

    .line 88
    iget-object v0, p0, Landroidx/media2/widget/VideoSurfaceView;->mSurfaceListener:Landroidx/media2/widget/VideoViewInterface$SurfaceListener;

    if-eqz v0, :cond_0

    .line 89
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    .line 90
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Landroidx/media2/widget/VideoSurfaceView;->mSurfaceListener:Landroidx/media2/widget/VideoViewInterface$SurfaceListener;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-interface {v1, p0, v2, v3}, Landroidx/media2/widget/VideoViewInterface$SurfaceListener;->onSurfaceCreated(Landroid/view/View;II)V

    goto :goto_0

    .line 88
    .end local v0    # "rect":Landroid/graphics/Rect;
    :cond_0
    nop

    .line 92
    :goto_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/widget/VideoSurfaceView;->mSurface:Landroid/view/Surface;

    .line 105
    iget-object v0, p0, Landroidx/media2/widget/VideoSurfaceView;->mSurfaceListener:Landroidx/media2/widget/VideoViewInterface$SurfaceListener;

    if-eqz v0, :cond_0

    .line 106
    invoke-interface {v0, p0}, Landroidx/media2/widget/VideoViewInterface$SurfaceListener;->onSurfaceDestroyed(Landroid/view/View;)V

    goto :goto_0

    .line 105
    :cond_0
    nop

    .line 108
    :goto_0
    return-void
.end method
