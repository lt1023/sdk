.class public final Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;
.super Ljava/lang/Object;
.source "EGLSurfaceTexture.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$GlException;,
        Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$SecureMode;,
        Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$TextureImageListener;
    }
.end annotation


# static fields
.field private static final EGL_CONFIG_ATTRIBUTES:[I

.field private static final EGL_PROTECTED_CONTENT_EXT:I = 0x32c0

.field private static final EGL_SURFACE_HEIGHT:I = 0x1

.field private static final EGL_SURFACE_WIDTH:I = 0x1

.field public static final SECURE_MODE_NONE:I = 0x0

.field public static final SECURE_MODE_PROTECTED_PBUFFER:I = 0x2

.field public static final SECURE_MODE_SURFACELESS_CONTEXT:I = 0x1


# instance fields
.field private final callback:Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$TextureImageListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private context:Landroid/opengl/EGLContext;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private display:Landroid/opengl/EGLDisplay;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;

.field private surface:Landroid/opengl/EGLSurface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private texture:Landroid/graphics/SurfaceTexture;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final textureIdHolder:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->EGL_CONFIG_ATTRIBUTES:[I

    return-void

    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3025
        0x0
        0x3027
        0x3038
        0x3033
        0x4
        0x3038
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;-><init>(Landroid/os/Handler;Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$TextureImageListener;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$TextureImageListener;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "callback"    # Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$TextureImageListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->handler:Landroid/os/Handler;

    .line 122
    iput-object p2, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->callback:Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$TextureImageListener;

    .line 123
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->textureIdHolder:[I

    .line 124
    return-void
.end method

.method private static chooseEGLConfig(Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLConfig;
    .locals 11
    .param p0, "display"    # Landroid/opengl/EGLDisplay;

    .line 228
    const/4 v0, 0x1

    new-array v9, v0, [Landroid/opengl/EGLConfig;

    .line 229
    .local v9, "configs":[Landroid/opengl/EGLConfig;
    new-array v10, v0, [I

    .line 230
    .local v10, "numConfigs":[I
    sget-object v2, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->EGL_CONFIG_ATTRIBUTES:[I

    .line 231
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    move-object v4, v9

    move-object v7, v10

    invoke-static/range {v1 .. v8}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v1

    .line 240
    .local v1, "success":Z
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    aget v3, v10, v2

    if-lez v3, :cond_0

    aget-object v3, v9, v2

    if-eqz v3, :cond_0

    .line 247
    aget-object v0, v9, v2

    return-object v0

    .line 240
    :cond_0
    nop

    .line 241
    new-instance v3, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$GlException;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 244
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    aget v5, v10, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x2

    aget-object v2, v9, v2

    aput-object v2, v4, v0

    .line 242
    const-string v0, "eglChooseConfig failed: success=%b, numConfigs[0]=%d, configs[0]=%s"

    invoke-static {v0, v4}, Landroidx/media2/exoplayer/external/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v3, v0, v2}, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$GlException;-><init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$1;)V

    throw v3
.end method

.method private static createEGLContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I)Landroid/opengl/EGLContext;
    .locals 5
    .param p0, "display"    # Landroid/opengl/EGLDisplay;
    .param p1, "config"    # Landroid/opengl/EGLConfig;
    .param p2, "secureMode"    # I

    .line 253
    if-nez p2, :cond_0

    .line 254
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    goto :goto_0

    .line 256
    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    .line 265
    .local v0, "glAttributes":[I
    :goto_0
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    const/4 v2, 0x0

    .line 266
    invoke-static {p0, p1, v1, v0, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v1

    .line 268
    .local v1, "context":Landroid/opengl/EGLContext;
    if-eqz v1, :cond_1

    .line 271
    return-object v1

    .line 269
    :cond_1
    new-instance v2, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$GlException;

    const/4 v3, 0x0

    const-string v4, "eglCreateContext failed"

    invoke-direct {v2, v4, v3}, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$GlException;-><init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$1;)V

    throw v2

    :array_0
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3098
        0x2
        0x32c0
        0x1
        0x3038
    .end array-data
.end method

.method private static createEGLSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;I)Landroid/opengl/EGLSurface;
    .locals 5
    .param p0, "display"    # Landroid/opengl/EGLDisplay;
    .param p1, "config"    # Landroid/opengl/EGLConfig;
    .param p2, "context"    # Landroid/opengl/EGLContext;
    .param p3, "secureMode"    # I

    .line 277
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    .line 278
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    goto :goto_1

    .line 281
    :cond_0
    const/4 v1, 0x2

    if-ne p3, v1, :cond_1

    .line 282
    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    goto :goto_0

    .line 293
    :cond_1
    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    .line 302
    .local v1, "pbufferAttributes":[I
    :goto_0
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v2

    .line 303
    .local v2, "surface":Landroid/opengl/EGLSurface;
    if-eqz v2, :cond_3

    move-object v1, v2

    .line 308
    .end local v2    # "surface":Landroid/opengl/EGLSurface;
    .local v1, "surface":Landroid/opengl/EGLSurface;
    :goto_1
    nop

    .line 309
    invoke-static {p0, v1, v1, p2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v2

    .line 310
    .local v2, "eglMadeCurrent":Z
    if-eqz v2, :cond_2

    .line 313
    return-object v1

    .line 311
    :cond_2
    new-instance v3, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$GlException;

    const-string v4, "eglMakeCurrent failed"

    invoke-direct {v3, v4, v0}, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$GlException;-><init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$1;)V

    throw v3

    .line 304
    .local v1, "pbufferAttributes":[I
    .local v2, "surface":Landroid/opengl/EGLSurface;
    :cond_3
    new-instance v3, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$GlException;

    const-string v4, "eglCreatePbufferSurface failed"

    invoke-direct {v3, v4, v0}, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$GlException;-><init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$1;)V

    throw v3

    nop

    :array_0
    .array-data 4
        0x3057
        0x1
        0x3056
        0x1
        0x32c0
        0x1
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3057
        0x1
        0x3056
        0x1
        0x3038
    .end array-data
.end method

.method private dispatchOnFrameAvailable()V
    .locals 1

    .line 207
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->callback:Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$TextureImageListener;

    if-eqz v0, :cond_0

    .line 208
    invoke-interface {v0}, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$TextureImageListener;->onFrameAvailable()V

    goto :goto_0

    .line 207
    :cond_0
    nop

    .line 210
    :goto_0
    return-void
.end method

.method private static generateTextureIds([I)V
    .locals 2
    .param p0, "textureIdHolder"    # [I

    .line 317
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 318
    invoke-static {}, Landroidx/media2/exoplayer/external/util/GlUtil;->checkGlError()V

    .line 319
    return-void
.end method

.method private static getDefaultDisplay()Landroid/opengl/EGLDisplay;
    .locals 6

    .line 213
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    .line 214
    .local v1, "display":Landroid/opengl/EGLDisplay;
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 218
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 219
    .local v3, "version":[I
    const/4 v4, 0x1

    .line 220
    invoke-static {v1, v3, v0, v3, v4}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    .line 221
    .local v0, "eglInitialized":Z
    if-eqz v0, :cond_0

    .line 224
    return-object v1

    .line 222
    :cond_0
    new-instance v4, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$GlException;

    const-string v5, "eglInitialize failed"

    invoke-direct {v4, v5, v2}, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$GlException;-><init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$1;)V

    throw v4

    .line 215
    .end local v0    # "eglInitialized":Z
    .end local v3    # "version":[I
    :cond_1
    new-instance v0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$GlException;

    const-string v3, "eglGetDisplay failed"

    invoke-direct {v0, v3, v2}, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$GlException;-><init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$1;)V

    throw v0
.end method


# virtual methods
.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 181
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->texture:Landroid/graphics/SurfaceTexture;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public init(I)V
    .locals 4
    .param p1, "secureMode"    # I

    .line 132
    invoke-static {}, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->getDefaultDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    .line 133
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->chooseEGLConfig(Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLConfig;

    move-result-object v0

    .line 134
    .local v0, "config":Landroid/opengl/EGLConfig;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    invoke-static {v1, v0, p1}, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->createEGLContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I)Landroid/opengl/EGLContext;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->context:Landroid/opengl/EGLContext;

    .line 135
    iget-object v1, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->context:Landroid/opengl/EGLContext;

    invoke-static {v1, v0, v2, p1}, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->createEGLSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;I)Landroid/opengl/EGLSurface;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->surface:Landroid/opengl/EGLSurface;

    .line 136
    iget-object v1, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->textureIdHolder:[I

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->generateTextureIds([I)V

    .line 137
    new-instance v1, Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->textureIdHolder:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v1, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->texture:Landroid/graphics/SurfaceTexture;

    .line 138
    iget-object v1, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->texture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 139
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .line 188
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 189
    return-void
.end method

.method public release()V
    .locals 7

    .line 144
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 146
    const/16 v0, 0x13

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->texture:Landroid/graphics/SurfaceTexture;

    if-eqz v2, :cond_0

    .line 147
    iget-object v2, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->texture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->release()V

    .line 148
    const/4 v2, 0x1

    iget-object v3, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->textureIdHolder:[I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 146
    :cond_0
    nop

    .line 151
    :goto_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    if-eqz v2, :cond_1

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-virtual {v2, v3}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 152
    iget-object v2, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v2, v3, v4, v5}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    goto :goto_1

    .line 151
    :cond_1
    nop

    .line 155
    :goto_1
    iget-object v2, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->surface:Landroid/opengl/EGLSurface;

    if-eqz v2, :cond_2

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    invoke-virtual {v2, v3}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 156
    iget-object v2, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->surface:Landroid/opengl/EGLSurface;

    invoke-static {v2, v3}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    goto :goto_2

    .line 155
    :cond_2
    nop

    .line 158
    :goto_2
    iget-object v2, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->context:Landroid/opengl/EGLContext;

    if-eqz v2, :cond_3

    .line 159
    iget-object v3, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    invoke-static {v3, v2}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    goto :goto_3

    .line 158
    :cond_3
    nop

    .line 162
    :goto_3
    sget v2, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    if-lt v2, v0, :cond_4

    .line 163
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    goto :goto_4

    .line 162
    :cond_4
    nop

    .line 165
    :goto_4
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    if-eqz v0, :cond_5

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-virtual {v0, v2}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 168
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    goto :goto_5

    .line 165
    :cond_5
    nop

    .line 170
    :goto_5
    iput-object v1, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    .line 171
    iput-object v1, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->context:Landroid/opengl/EGLContext;

    .line 172
    iput-object v1, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->surface:Landroid/opengl/EGLSurface;

    .line 173
    iput-object v1, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->texture:Landroid/graphics/SurfaceTexture;

    .line 174
    nop

    .line 175
    return-void

    .line 151
    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    if-eqz v3, :cond_6

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-virtual {v3, v4}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 152
    iget-object v3, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v6, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v3, v4, v5, v6}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    goto :goto_6

    .line 151
    :cond_6
    nop

    .line 155
    :goto_6
    iget-object v3, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->surface:Landroid/opengl/EGLSurface;

    if-eqz v3, :cond_7

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    invoke-virtual {v3, v4}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 156
    iget-object v3, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->surface:Landroid/opengl/EGLSurface;

    invoke-static {v3, v4}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    goto :goto_7

    .line 155
    :cond_7
    nop

    .line 158
    :goto_7
    iget-object v3, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->context:Landroid/opengl/EGLContext;

    if-eqz v3, :cond_8

    .line 159
    iget-object v4, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    invoke-static {v4, v3}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    goto :goto_8

    .line 158
    :cond_8
    nop

    .line 162
    :goto_8
    sget v3, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    if-lt v3, v0, :cond_9

    .line 163
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    goto :goto_9

    .line 162
    :cond_9
    nop

    .line 165
    :goto_9
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    if-eqz v0, :cond_a

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-virtual {v0, v3}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 168
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    goto :goto_a

    .line 165
    :cond_a
    nop

    .line 170
    :goto_a
    iput-object v1, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    .line 171
    iput-object v1, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->context:Landroid/opengl/EGLContext;

    .line 172
    iput-object v1, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->surface:Landroid/opengl/EGLSurface;

    .line 173
    iput-object v1, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->texture:Landroid/graphics/SurfaceTexture;

    throw v2
.end method

.method public run()V
    .locals 1

    .line 196
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->dispatchOnFrameAvailable()V

    .line 197
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->texture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 199
    nop

    :try_start_0
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    nop

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    nop

    goto :goto_0

    .line 197
    :cond_0
    nop

    .line 204
    :goto_0
    nop

    return-void
.end method
