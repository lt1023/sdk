.class Landroidx/transition/ViewGroupUtilsApi14;
.super Ljava/lang/Object;
.source "ViewGroupUtilsApi14.java"


# static fields
.field private static final LAYOUT_TRANSITION_CHANGING:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ViewGroupUtilsApi14"

.field private static sCancelMethod:Ljava/lang/reflect/Method;

.field private static sCancelMethodFetched:Z

.field private static sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

.field private static sLayoutSuppressedField:Ljava/lang/reflect/Field;

.field private static sLayoutSuppressedFieldFetched:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    return-void
.end method

.method private static cancelLayoutTransition(Landroid/animation/LayoutTransition;)V
    .locals 5
    .param p0, "t"    # Landroid/animation/LayoutTransition;

    .line 109
    sget-boolean v0, Landroidx/transition/ViewGroupUtilsApi14;->sCancelMethodFetched:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x1

    :try_start_0
    const-class v2, Landroid/animation/LayoutTransition;

    const-string v3, "cancel"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroidx/transition/ViewGroupUtilsApi14;->sCancelMethod:Ljava/lang/reflect/Method;

    .line 112
    sget-object v2, Landroidx/transition/ViewGroupUtilsApi14;->sCancelMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    goto :goto_0

    .line 113
    :catch_0
    move-exception v2

    .line 114
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string v3, "ViewGroupUtilsApi14"

    const-string v4, "Failed to access cancel method by reflection"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    sput-boolean v0, Landroidx/transition/ViewGroupUtilsApi14;->sCancelMethodFetched:Z

    goto :goto_1

    .line 109
    :cond_0
    nop

    .line 118
    :goto_1
    sget-object v0, Landroidx/transition/ViewGroupUtilsApi14;->sCancelMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 120
    nop

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    nop

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 123
    :catch_1
    move-exception v0

    nop

    .line 124
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    nop

    const-string v1, "ViewGroupUtilsApi14"

    const-string v2, "Failed to invoke cancel method by reflection"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 121
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v0

    nop

    .line 122
    .local v0, "e":Ljava/lang/IllegalAccessException;
    nop

    const-string v1, "ViewGroupUtilsApi14"

    const-string v2, "Failed to access cancel method by reflection"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :goto_2
    nop

    goto :goto_3

    .line 118
    :cond_1
    nop

    .line 127
    :goto_3
    nop

    return-void
.end method

.method static suppressLayout(Landroid/view/ViewGroup;Z)V
    .locals 6
    .param p0, "group"    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "suppress"    # Z

    .line 45
    sget-object v0, Landroidx/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Landroidx/transition/ViewGroupUtilsApi14$1;

    invoke-direct {v0}, Landroidx/transition/ViewGroupUtilsApi14$1;-><init>()V

    sput-object v0, Landroidx/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    .line 52
    sget-object v0, Landroidx/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 53
    sget-object v0, Landroidx/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v1, v3}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 54
    sget-object v0, Landroidx/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v2, v3}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 55
    sget-object v0, Landroidx/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v3}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 56
    sget-object v0, Landroidx/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v4, 0x4

    invoke-virtual {v0, v4, v3}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    goto :goto_0

    .line 45
    :cond_0
    nop

    .line 58
    :goto_0
    if-eqz p1, :cond_4

    .line 60
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 61
    .local v0, "layoutTransition":Landroid/animation/LayoutTransition;
    if-eqz v0, :cond_3

    .line 62
    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    invoke-static {v0}, Landroidx/transition/ViewGroupUtilsApi14;->cancelLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_1

    .line 62
    :cond_1
    nop

    .line 65
    :goto_1
    sget-object v1, Landroidx/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    if-eq v0, v1, :cond_2

    .line 66
    sget v1, Landroidx/transition/R$id;->transition_layout_save:I

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    goto :goto_2

    .line 65
    :cond_2
    goto :goto_2

    .line 61
    :cond_3
    nop

    .line 70
    :goto_2
    sget-object v1, Landroidx/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 71
    .end local v0    # "layoutTransition":Landroid/animation/LayoutTransition;
    goto/16 :goto_8

    .line 73
    :cond_4
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 75
    sget-boolean v0, Landroidx/transition/ViewGroupUtilsApi14;->sLayoutSuppressedFieldFetched:Z

    if-nez v0, :cond_5

    .line 77
    :try_start_0
    const-class v0, Landroid/view/ViewGroup;

    const-string v4, "mLayoutSuppressed"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/transition/ViewGroupUtilsApi14;->sLayoutSuppressedField:Ljava/lang/reflect/Field;

    .line 78
    sget-object v0, Landroidx/transition/ViewGroupUtilsApi14;->sLayoutSuppressedField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    goto :goto_3

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string v4, "ViewGroupUtilsApi14"

    const-string v5, "Failed to access mLayoutSuppressed field by reflection"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :goto_3
    sput-boolean v2, Landroidx/transition/ViewGroupUtilsApi14;->sLayoutSuppressedFieldFetched:Z

    goto :goto_4

    .line 75
    :cond_5
    nop

    .line 84
    :goto_4
    const/4 v0, 0x0

    .line 85
    .local v0, "layoutSuppressed":Z
    sget-object v2, Landroidx/transition/ViewGroupUtilsApi14;->sLayoutSuppressedField:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_7

    .line 87
    nop

    :try_start_1
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v2

    nop

    move v0, v2

    .line 88
    nop

    if-eqz v0, :cond_6

    .line 89
    nop

    sget-object v2, Landroidx/transition/ViewGroupUtilsApi14;->sLayoutSuppressedField:Ljava/lang/reflect/Field;

    nop

    invoke-virtual {v2, p0, v1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    nop

    goto :goto_5

    .line 88
    :cond_6
    nop

    .line 93
    :goto_5
    nop

    goto :goto_6

    .line 91
    :catch_1
    move-exception v1

    nop

    .line 92
    .local v1, "e":Ljava/lang/IllegalAccessException;
    nop

    const-string v2, "ViewGroupUtilsApi14"

    const-string v4, "Failed to get mLayoutSuppressed field by reflection"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 85
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :cond_7
    nop

    .line 95
    :goto_6
    nop

    if-eqz v0, :cond_8

    .line 96
    nop

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_7

    .line 95
    :cond_8
    nop

    .line 99
    :goto_7
    nop

    sget v1, Landroidx/transition/R$id;->transition_layout_save:I

    .line 100
    nop

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/LayoutTransition;

    .line 101
    .local v1, "layoutTransition":Landroid/animation/LayoutTransition;
    nop

    if-eqz v1, :cond_9

    .line 102
    nop

    sget v2, Landroidx/transition/R$id;->transition_layout_save:I

    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 103
    nop

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_8

    .line 101
    :cond_9
    nop

    .line 106
    .end local v0    # "layoutSuppressed":Z
    .end local v1    # "layoutTransition":Landroid/animation/LayoutTransition;
    :goto_8
    nop

    return-void
.end method
