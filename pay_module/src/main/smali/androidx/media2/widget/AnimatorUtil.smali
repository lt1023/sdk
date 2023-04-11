.class Landroidx/media2/widget/AnimatorUtil;
.super Ljava/lang/Object;
.source "AnimatorUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ofTranslationY(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;
    .locals 3
    .param p0, "startValue"    # F
    .param p1, "endValue"    # F
    .param p2, "target"    # Landroid/view/View;

    .line 26
    const-string/jumbo v0, "translationY"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-static {p2, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method static ofTranslationYTogether(FF[Landroid/view/View;)Landroid/animation/AnimatorSet;
    .locals 4
    .param p0, "startValue"    # F
    .param p1, "endValue"    # F
    .param p2, "targets"    # [Landroid/view/View;

    .line 30
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 31
    .local v0, "set":Landroid/animation/AnimatorSet;
    array-length v1, p2

    if-nez v1, :cond_0

    return-object v0

    .line 32
    :cond_0
    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-static {p0, p1, v1}, Landroidx/media2/widget/AnimatorUtil;->ofTranslationY(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 33
    .local v1, "builder":Landroid/animation/AnimatorSet$Builder;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_1

    .line 34
    aget-object v3, p2, v2

    invoke-static {p0, p1, v3}, Landroidx/media2/widget/AnimatorUtil;->ofTranslationY(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 33
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 36
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method
