.class Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;
.super Ljava/lang/Object;
.source "AppCompatViewInflater.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatViewInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeclaredOnClickListener"
.end annotation


# instance fields
.field private final mHostView:Landroid/view/View;

.field private final mMethodName:Ljava/lang/String;

.field private mResolvedContext:Landroid/content/Context;

.field private mResolvedMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .param p1, "hostView"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "methodName"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;->mHostView:Landroid/view/View;

    .line 387
    iput-object p2, p0, Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;->mMethodName:Ljava/lang/String;

    .line 388
    return-void
.end method

.method private resolveMethod(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "name"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 409
    :goto_0
    if-eqz p1, :cond_3

    .line 411
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 412
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;->mMethodName:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/view/View;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 413
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 414
    iput-object v0, p0, Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;->mResolvedMethod:Ljava/lang/reflect/Method;

    .line 415
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;->mResolvedContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    return-void

    .line 413
    :cond_0
    goto :goto_1

    .line 411
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :cond_1
    nop

    .line 421
    :goto_1
    goto :goto_2

    .line 419
    :catch_0
    move-exception v0

    .line 423
    :goto_2
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_2

    .line 424
    move-object v0, p1

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    .line 427
    :cond_2
    const/4 p1, 0x0

    goto :goto_0

    .line 431
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;->mHostView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    .line 432
    .local v0, "id":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    const-string v1, ""

    goto :goto_3

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " with id \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;->mHostView:Landroid/view/View;

    .line 433
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    nop

    .line 434
    .local v1, "idText":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;->mMethodName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "(View) in a parent or ancestor Context for android:onClick attribute defined on view "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;->mHostView:Landroid/view/View;

    .line 436
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 392
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;->mResolvedMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 393
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;->mHostView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;->mMethodName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;->resolveMethod(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 392
    :cond_0
    nop

    .line 397
    :goto_0
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;->mResolvedMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;->mResolvedContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    nop

    .line 405
    return-void

    .line 401
    :catch_0
    move-exception v0

    .line 402
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not execute method for android:onClick"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 398
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 399
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not execute non-public method for android:onClick"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
