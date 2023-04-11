.class public final Landroidx/media2/common/futures/ResolvableFuture;
.super Landroidx/media2/common/futures/AbstractResolvableFuture;
.source "ResolvableFuture.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/media2/common/futures/AbstractResolvableFuture<",
        "TV;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 63
    .local p0, "this":Landroidx/media2/common/futures/ResolvableFuture;, "Landroidx/media2/common/futures/ResolvableFuture<TV;>;"
    invoke-direct {p0}, Landroidx/media2/common/futures/AbstractResolvableFuture;-><init>()V

    .line 64
    return-void
.end method

.method public static create()Landroidx/media2/common/futures/ResolvableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/media2/common/futures/ResolvableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 45
    new-instance v0, Landroidx/media2/common/futures/ResolvableFuture;

    invoke-direct {v0}, Landroidx/media2/common/futures/ResolvableFuture;-><init>()V

    return-object v0
.end method


# virtual methods
.method public set(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 50
    .local p0, "this":Landroidx/media2/common/futures/ResolvableFuture;, "Landroidx/media2/common/futures/ResolvableFuture<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-super {p0, p1}, Landroidx/media2/common/futures/AbstractResolvableFuture;->set(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setException(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 55
    .local p0, "this":Landroidx/media2/common/futures/ResolvableFuture;, "Landroidx/media2/common/futures/ResolvableFuture<TV;>;"
    invoke-super {p0, p1}, Landroidx/media2/common/futures/AbstractResolvableFuture;->setException(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 60
    .local p0, "this":Landroidx/media2/common/futures/ResolvableFuture;, "Landroidx/media2/common/futures/ResolvableFuture<TV;>;"
    .local p1, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    invoke-super {p0, p1}, Landroidx/media2/common/futures/AbstractResolvableFuture;->setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    move-result v0

    return v0
.end method
