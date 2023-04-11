.class public final Landroidx/media2/exoplayer/external/util/ReusableBufferedOutputStream;
.super Ljava/io/BufferedOutputStream;
.source "ReusableBufferedOutputStream.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private closed:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 37
    invoke-direct {p0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "size"    # I

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 42
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/util/ReusableBufferedOutputStream;->closed:Z

    .line 48
    const/4 v0, 0x0

    .line 50
    .local v0, "thrown":Ljava/lang/Throwable;
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ReusableBufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    goto :goto_0

    .line 51
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Ljava/lang/Throwable;
    move-object v0, v1

    .line 55
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    :try_start_1
    iget-object v1, p0, Landroidx/media2/exoplayer/external/util/ReusableBufferedOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 60
    goto :goto_1

    .line 56
    :catch_1
    move-exception v1

    .line 57
    .restart local v1    # "e":Ljava/lang/Throwable;
    if-nez v0, :cond_0

    .line 58
    move-object v0, v1

    goto :goto_1

    .line 57
    :cond_0
    nop

    .line 61
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_1
    if-eqz v0, :cond_1

    .line 62
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->sneakyThrow(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 61
    :cond_1
    nop

    .line 64
    :goto_2
    return-void
.end method

.method public reset(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 74
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/util/ReusableBufferedOutputStream;->closed:Z

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 75
    iput-object p1, p0, Landroidx/media2/exoplayer/external/util/ReusableBufferedOutputStream;->out:Ljava/io/OutputStream;

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/util/ReusableBufferedOutputStream;->count:I

    .line 77
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/util/ReusableBufferedOutputStream;->closed:Z

    .line 78
    return-void
.end method
