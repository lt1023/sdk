.class final Landroidx/media2/common/futures/AbstractResolvableFuture$Failure;
.super Ljava/lang/Object;
.source "AbstractResolvableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/common/futures/AbstractResolvableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Failure"
.end annotation


# static fields
.field static final FALLBACK_INSTANCE:Landroidx/media2/common/futures/AbstractResolvableFuture$Failure;


# instance fields
.field final exception:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 222
    new-instance v0, Landroidx/media2/common/futures/AbstractResolvableFuture$Failure;

    new-instance v1, Landroidx/media2/common/futures/AbstractResolvableFuture$Failure$1;

    const-string v2, "Failure occurred while trying to finish a future."

    invoke-direct {v1, v2}, Landroidx/media2/common/futures/AbstractResolvableFuture$Failure$1;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroidx/media2/common/futures/AbstractResolvableFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    sput-object v0, Landroidx/media2/common/futures/AbstractResolvableFuture$Failure;->FALLBACK_INSTANCE:Landroidx/media2/common/futures/AbstractResolvableFuture$Failure;

    return-void
.end method

.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Throwable;

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    invoke-static {p1}, Landroidx/media2/common/futures/AbstractResolvableFuture;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    iput-object v0, p0, Landroidx/media2/common/futures/AbstractResolvableFuture$Failure;->exception:Ljava/lang/Throwable;

    .line 234
    return-void
.end method
