.class public final Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$GlException;
.super Ljava/lang/RuntimeException;
.source "EGLSurfaceTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlException"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 88
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$1;

    .line 86
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$GlException;-><init>(Ljava/lang/String;)V

    return-void
.end method
