.class public final Landroidx/media2/exoplayer/external/ExoPlaybackException;
.super Ljava/lang/Exception;
.source "ExoPlaybackException.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/ExoPlaybackException$Type;
    }
.end annotation


# static fields
.field public static final TYPE_OUT_OF_MEMORY:I = 0x4

.field public static final TYPE_REMOTE:I = 0x3

.field public static final TYPE_RENDERER:I = 0x1

.field public static final TYPE_SOURCE:I = 0x0

.field public static final TYPE_UNEXPECTED:I = 0x2


# instance fields
.field private final cause:Ljava/lang/Throwable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final rendererIndex:I

.field public final type:I


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 143
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 144
    iput p1, p0, Landroidx/media2/exoplayer/external/ExoPlaybackException;->type:I

    .line 145
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/ExoPlaybackException;->rendererIndex:I

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlaybackException;->cause:Ljava/lang/Throwable;

    .line 147
    return-void
.end method

.method private constructor <init>(ILjava/lang/Throwable;I)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "rendererIndex"    # I

    .line 136
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 137
    iput p1, p0, Landroidx/media2/exoplayer/external/ExoPlaybackException;->type:I

    .line 138
    iput-object p2, p0, Landroidx/media2/exoplayer/external/ExoPlaybackException;->cause:Ljava/lang/Throwable;

    .line 139
    iput p3, p0, Landroidx/media2/exoplayer/external/ExoPlaybackException;->rendererIndex:I

    .line 140
    return-void
.end method

.method public static createForOutOfMemoryError(Ljava/lang/OutOfMemoryError;)Landroidx/media2/exoplayer/external/ExoPlaybackException;
    .locals 3
    .param p0, "cause"    # Ljava/lang/OutOfMemoryError;

    .line 132
    new-instance v0, Landroidx/media2/exoplayer/external/ExoPlaybackException;

    const/4 v1, 0x4

    const/4 v2, -0x1

    invoke-direct {v0, v1, p0, v2}, Landroidx/media2/exoplayer/external/ExoPlaybackException;-><init>(ILjava/lang/Throwable;I)V

    return-object v0
.end method

.method public static createForRemote(Ljava/lang/String;)Landroidx/media2/exoplayer/external/ExoPlaybackException;
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .line 122
    new-instance v0, Landroidx/media2/exoplayer/external/ExoPlaybackException;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroidx/media2/exoplayer/external/ExoPlaybackException;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static createForRenderer(Ljava/lang/Exception;I)Landroidx/media2/exoplayer/external/ExoPlaybackException;
    .locals 2
    .param p0, "cause"    # Ljava/lang/Exception;
    .param p1, "rendererIndex"    # I

    .line 102
    new-instance v0, Landroidx/media2/exoplayer/external/ExoPlaybackException;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Landroidx/media2/exoplayer/external/ExoPlaybackException;-><init>(ILjava/lang/Throwable;I)V

    return-object v0
.end method

.method public static createForSource(Ljava/io/IOException;)Landroidx/media2/exoplayer/external/ExoPlaybackException;
    .locals 3
    .param p0, "cause"    # Ljava/io/IOException;

    .line 91
    new-instance v0, Landroidx/media2/exoplayer/external/ExoPlaybackException;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v1, p0, v2}, Landroidx/media2/exoplayer/external/ExoPlaybackException;-><init>(ILjava/lang/Throwable;I)V

    return-object v0
.end method

.method public static createForUnexpected(Ljava/lang/RuntimeException;)Landroidx/media2/exoplayer/external/ExoPlaybackException;
    .locals 3
    .param p0, "cause"    # Ljava/lang/RuntimeException;

    .line 112
    new-instance v0, Landroidx/media2/exoplayer/external/ExoPlaybackException;

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, p0, v2}, Landroidx/media2/exoplayer/external/ExoPlaybackException;-><init>(ILjava/lang/Throwable;I)V

    return-object v0
.end method


# virtual methods
.method public getOutOfMemoryError()Ljava/lang/OutOfMemoryError;
    .locals 2

    .line 185
    iget v0, p0, Landroidx/media2/exoplayer/external/ExoPlaybackException;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 186
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlaybackException;->cause:Ljava/lang/Throwable;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/OutOfMemoryError;

    return-object v0
.end method

.method public getRendererException()Ljava/lang/Exception;
    .locals 2

    .line 165
    iget v0, p0, Landroidx/media2/exoplayer/external/ExoPlaybackException;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 166
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlaybackException;->cause:Ljava/lang/Throwable;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    return-object v0
.end method

.method public getSourceException()Ljava/io/IOException;
    .locals 1

    .line 155
    iget v0, p0, Landroidx/media2/exoplayer/external/ExoPlaybackException;->type:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 156
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlaybackException;->cause:Ljava/lang/Throwable;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    return-object v0
.end method

.method public getUnexpectedException()Ljava/lang/RuntimeException;
    .locals 2

    .line 175
    iget v0, p0, Landroidx/media2/exoplayer/external/ExoPlaybackException;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 176
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlaybackException;->cause:Ljava/lang/Throwable;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/RuntimeException;

    return-object v0
.end method
