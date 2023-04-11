.class Landroidx/transition/ViewGroupUtilsApi18;
.super Ljava/lang/Object;
.source "ViewGroupUtilsApi18.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x12
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewUtilsApi18"

.field private static sSuppressLayoutMethod:Ljava/lang/reflect/Method;

.field private static sSuppressLayoutMethodFetched:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method private static fetchSuppressLayoutMethod()V
    .locals 6

    .line 50
    sget-boolean v0, Landroidx/transition/ViewGroupUtilsApi18;->sSuppressLayoutMethodFetched:Z

    if-nez v0, :cond_0

    .line 52
    const/4 v0, 0x1

    :try_start_0
    const-class v1, Landroid/view/ViewGroup;

    const-string v2, "suppressLayout"

    new-array v3, v0, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/transition/ViewGroupUtilsApi18;->sSuppressLayoutMethod:Ljava/lang/reflect/Method;

    .line 54
    sget-object v1, Landroidx/transition/ViewGroupUtilsApi18;->sSuppressLayoutMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    goto :goto_0

    .line 55
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string v2, "ViewUtilsApi18"

    const-string v3, "Failed to retrieve suppressLayout method"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    sput-boolean v0, Landroidx/transition/ViewGroupUtilsApi18;->sSuppressLayoutMethodFetched:Z

    goto :goto_1

    .line 50
    :cond_0
    nop

    .line 60
    :goto_1
    return-void
.end method

.method static suppressLayout(Landroid/view/ViewGroup;Z)V
    .locals 4
    .param p0, "group"    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "suppress"    # Z

    .line 37
    invoke-static {}, Landroidx/transition/ViewGroupUtilsApi18;->fetchSuppressLayoutMethod()V

    .line 38
    sget-object v0, Landroidx/transition/ViewGroupUtilsApi18;->sSuppressLayoutMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 40
    nop

    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    nop

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    nop

    aput-object v3, v1, v2

    nop

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    nop

    .line 44
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    nop

    const-string v1, "ViewUtilsApi18"

    const-string v2, "Error invoking suppressLayout method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 41
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    nop

    .line 42
    .local v0, "e":Ljava/lang/IllegalAccessException;
    nop

    const-string v1, "ViewUtilsApi18"

    const-string v2, "Failed to invoke suppressLayout method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :goto_0
    nop

    goto :goto_1

    .line 38
    :cond_0
    nop

    .line 47
    :goto_1
    nop

    return-void
.end method
