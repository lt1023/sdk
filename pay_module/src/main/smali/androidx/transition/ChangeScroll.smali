.class public Landroidx/transition/ChangeScroll;
.super Landroidx/transition/Transition;
.source "ChangeScroll.java"


# static fields
.field private static final PROPERTIES:[Ljava/lang/String;

.field private static final PROPNAME_SCROLL_X:Ljava/lang/String; = "android:changeScroll:x"

.field private static final PROPNAME_SCROLL_Y:Ljava/lang/String; = "android:changeScroll:y"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    const-string v0, "android:changeScroll:x"

    const-string v1, "android:changeScroll:y"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/transition/ChangeScroll;->PROPERTIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 47
    invoke-direct {p0, p1, p2}, Landroidx/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method private captureValues(Landroidx/transition/TransitionValues;)V
    .locals 3
    .param p1, "transitionValues"    # Landroidx/transition/TransitionValues;

    .line 67
    iget-object v0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeScroll:x"

    iget-object v2, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeScroll:y"

    iget-object v2, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 57
    invoke-direct {p0, p1}, Landroidx/transition/ChangeScroll;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 58
    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 52
    invoke-direct {p0, p1}, Landroidx/transition/ChangeScroll;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 53
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 12
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "startValues"    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "endValues"    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 75
    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_2

    .line 78
    :cond_0
    iget-object v0, p3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 79
    .local v0, "view":Landroid/view/View;
    iget-object v1, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeScroll:x"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 80
    .local v1, "startX":I
    iget-object v2, p3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeScroll:x"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 81
    .local v2, "endX":I
    iget-object v3, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:changeScroll:y"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 82
    .local v3, "startY":I
    iget-object v4, p3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:changeScroll:y"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 83
    .local v4, "endY":I
    const/4 v5, 0x0

    .line 84
    .local v5, "scrollXAnimator":Landroid/animation/Animator;
    const/4 v6, 0x0

    .line 85
    .local v6, "scrollYAnimator":Landroid/animation/Animator;
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    if-eq v1, v2, :cond_1

    .line 86
    invoke-virtual {v0, v1}, Landroid/view/View;->setScrollX(I)V

    .line 87
    const-string v10, "scrollX"

    new-array v11, v9, [I

    aput v1, v11, v8

    aput v2, v11, v7

    invoke-static {v0, v10, v11}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    goto :goto_0

    .line 85
    :cond_1
    nop

    .line 89
    :goto_0
    if-eq v3, v4, :cond_2

    .line 90
    invoke-virtual {v0, v3}, Landroid/view/View;->setScrollY(I)V

    .line 91
    const-string v10, "scrollY"

    new-array v9, v9, [I

    aput v3, v9, v8

    aput v4, v9, v7

    invoke-static {v0, v10, v9}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    goto :goto_1

    .line 89
    :cond_2
    nop

    .line 93
    :goto_1
    invoke-static {v5, v6}, Landroidx/transition/TransitionUtils;->mergeAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v7

    return-object v7

    .line 75
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "startX":I
    .end local v2    # "endX":I
    .end local v3    # "startY":I
    .end local v4    # "endY":I
    .end local v5    # "scrollXAnimator":Landroid/animation/Animator;
    .end local v6    # "scrollYAnimator":Landroid/animation/Animator;
    :cond_3
    :goto_2
    nop

    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 63
    sget-object v0, Landroidx/transition/ChangeScroll;->PROPERTIES:[Ljava/lang/String;

    return-object v0
.end method