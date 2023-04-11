.class Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"

# interfaces
.implements Landroidx/core/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewPropertyAnimatorListenerApi14"
.end annotation


# instance fields
.field mAnimEndCalled:Z

.field mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;


# direct methods
.method constructor <init>(Landroidx/core/view/ViewPropertyAnimatorCompat;)V
    .locals 0
    .param p1, "vpa"    # Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 46
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 99
    const/high16 v0, 0x7e000000

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 100
    .local v0, "listenerTag":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 101
    .local v1, "listener":Landroidx/core/view/ViewPropertyAnimatorListener;
    instance-of v2, v0, Landroidx/core/view/ViewPropertyAnimatorListener;

    if-eqz v2, :cond_0

    .line 102
    move-object v1, v0

    check-cast v1, Landroidx/core/view/ViewPropertyAnimatorListener;

    goto :goto_0

    .line 101
    :cond_0
    nop

    .line 104
    :goto_0
    if-eqz v1, :cond_1

    .line 105
    invoke-interface {v1, p1}, Landroidx/core/view/ViewPropertyAnimatorListener;->onAnimationCancel(Landroid/view/View;)V

    goto :goto_1

    .line 104
    :cond_1
    nop

    .line 107
    :goto_1
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 73
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;

    iget v0, v0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    .line 74
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;

    iget v0, v0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 75
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;

    iput v2, v0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    goto :goto_0

    .line 73
    :cond_0
    nop

    .line 77
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v0, v2, :cond_2

    iget-boolean v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mAnimEndCalled:Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_5

    .line 80
    :cond_2
    :goto_1
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;

    iget-object v0, v0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 81
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;

    iget-object v0, v0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;

    .line 82
    .local v0, "endAction":Ljava/lang/Runnable;
    iget-object v2, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;

    iput-object v1, v2, Landroidx/core/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;

    .line 83
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    .line 80
    .end local v0    # "endAction":Ljava/lang/Runnable;
    :cond_3
    nop

    .line 85
    :goto_2
    const/high16 v0, 0x7e000000

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 86
    .local v0, "listenerTag":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 87
    .local v1, "listener":Landroidx/core/view/ViewPropertyAnimatorListener;
    instance-of v2, v0, Landroidx/core/view/ViewPropertyAnimatorListener;

    if-eqz v2, :cond_4

    .line 88
    move-object v1, v0

    check-cast v1, Landroidx/core/view/ViewPropertyAnimatorListener;

    goto :goto_3

    .line 87
    :cond_4
    nop

    .line 90
    :goto_3
    if-eqz v1, :cond_5

    .line 91
    invoke-interface {v1, p1}, Landroidx/core/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    goto :goto_4

    .line 90
    :cond_5
    nop

    .line 93
    :goto_4
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mAnimEndCalled:Z

    .line 95
    .end local v0    # "listenerTag":Ljava/lang/Object;
    .end local v1    # "listener":Landroidx/core/view/ViewPropertyAnimatorListener;
    :goto_5
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mAnimEndCalled:Z

    .line 53
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;

    iget v0, v0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    .line 54
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    .line 53
    :cond_0
    nop

    .line 56
    :goto_0
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;

    iget-object v0, v0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;

    iget-object v0, v0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;

    .line 58
    .local v0, "startAction":Ljava/lang/Runnable;
    iget-object v2, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;

    iput-object v1, v2, Landroidx/core/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;

    .line 59
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 56
    .end local v0    # "startAction":Ljava/lang/Runnable;
    :cond_1
    nop

    .line 61
    :goto_1
    const/high16 v0, 0x7e000000

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 62
    .local v0, "listenerTag":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 63
    .local v1, "listener":Landroidx/core/view/ViewPropertyAnimatorListener;
    instance-of v2, v0, Landroidx/core/view/ViewPropertyAnimatorListener;

    if-eqz v2, :cond_2

    .line 64
    move-object v1, v0

    check-cast v1, Landroidx/core/view/ViewPropertyAnimatorListener;

    goto :goto_2

    .line 63
    :cond_2
    nop

    .line 66
    :goto_2
    if-eqz v1, :cond_3

    .line 67
    invoke-interface {v1, p1}, Landroidx/core/view/ViewPropertyAnimatorListener;->onAnimationStart(Landroid/view/View;)V

    goto :goto_3

    .line 66
    :cond_3
    nop

    .line 69
    :goto_3
    return-void
.end method
