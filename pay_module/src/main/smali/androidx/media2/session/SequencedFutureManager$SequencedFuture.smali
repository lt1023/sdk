.class final Landroidx/media2/session/SequencedFutureManager$SequencedFuture;
.super Landroidx/media2/session/futures/AbstractResolvableFuture;
.source "SequencedFutureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/SequencedFutureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SequencedFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/media2/session/futures/AbstractResolvableFuture<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mResultWhenClosed:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mSequenceNumber:I


# direct methods
.method private constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "seq"    # I
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 144
    .local p0, "this":Landroidx/media2/session/SequencedFutureManager$SequencedFuture;, "Landroidx/media2/session/SequencedFutureManager$SequencedFuture<TT;>;"
    .local p2, "resultWhenClosed":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Landroidx/media2/session/futures/AbstractResolvableFuture;-><init>()V

    .line 145
    iput p1, p0, Landroidx/media2/session/SequencedFutureManager$SequencedFuture;->mSequenceNumber:I

    .line 146
    iput-object p2, p0, Landroidx/media2/session/SequencedFutureManager$SequencedFuture;->mResultWhenClosed:Ljava/lang/Object;

    .line 147
    return-void
.end method

.method static create(ILjava/lang/Object;)Landroidx/media2/session/SequencedFutureManager$SequencedFuture;
    .locals 1
    .param p0, "seq"    # I
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;)",
            "Landroidx/media2/session/SequencedFutureManager$SequencedFuture<",
            "TT;>;"
        }
    .end annotation

    .line 128
    .local p1, "resultWhenClosed":Ljava/lang/Object;, "TT;"
    new-instance v0, Landroidx/media2/session/SequencedFutureManager$SequencedFuture;

    invoke-direct {v0, p0, p1}, Landroidx/media2/session/SequencedFutureManager$SequencedFuture;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getResultWhenClosed()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 141
    .local p0, "this":Landroidx/media2/session/SequencedFutureManager$SequencedFuture;, "Landroidx/media2/session/SequencedFutureManager$SequencedFuture<TT;>;"
    iget-object v0, p0, Landroidx/media2/session/SequencedFutureManager$SequencedFuture;->mResultWhenClosed:Ljava/lang/Object;

    return-object v0
.end method

.method public getSequenceNumber()I
    .locals 1

    .line 137
    .local p0, "this":Landroidx/media2/session/SequencedFutureManager$SequencedFuture;, "Landroidx/media2/session/SequencedFutureManager$SequencedFuture<TT;>;"
    iget v0, p0, Landroidx/media2/session/SequencedFutureManager$SequencedFuture;->mSequenceNumber:I

    return v0
.end method

.method public set(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 133
    .local p0, "this":Landroidx/media2/session/SequencedFutureManager$SequencedFuture;, "Landroidx/media2/session/SequencedFutureManager$SequencedFuture<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-super {p0, p1}, Landroidx/media2/session/futures/AbstractResolvableFuture;->set(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
