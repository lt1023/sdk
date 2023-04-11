.class public final Landroidx/media2/exoplayer/external/video/DummySurface;
.super Landroid/view/Surface;
.source "DummySurface.java"


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
        Landroidx/media2/exoplayer/external/video/DummySurface$DummySurfaceThread;
    }
.end annotation


# static fields
.field private static final EXTENSION_PROTECTED_CONTENT:Ljava/lang/String; = "EGL_EXT_protected_content"

.field private static final EXTENSION_SURFACELESS_CONTEXT:Ljava/lang/String; = "EGL_KHR_surfaceless_context"

.field private static final TAG:Ljava/lang/String; = "DummySurface"

.field private static secureMode:I

.field private static secureModeInitialized:Z


# instance fields
.field public final secure:Z

.field private final thread:Landroidx/media2/exoplayer/external/video/DummySurface$DummySurfaceThread;

.field private threadReleased:Z


# direct methods
.method private constructor <init>(Landroidx/media2/exoplayer/external/video/DummySurface$DummySurfaceThread;Landroid/graphics/SurfaceTexture;Z)V
    .locals 0
    .param p1, "thread"    # Landroidx/media2/exoplayer/external/video/DummySurface$DummySurfaceThread;
    .param p2, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p3, "secure"    # Z

    .line 104
    invoke-direct {p0, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 105
    iput-object p1, p0, Landroidx/media2/exoplayer/external/video/DummySurface;->thread:Landroidx/media2/exoplayer/external/video/DummySurface$DummySurfaceThread;

    .line 106
    iput-boolean p3, p0, Landroidx/media2/exoplayer/external/video/DummySurface;->secure:Z

    .line 107
    return-void
.end method

.method synthetic constructor <init>(Landroidx/media2/exoplayer/external/video/DummySurface$DummySurfaceThread;Landroid/graphics/SurfaceTexture;ZLandroidx/media2/exoplayer/external/video/DummySurface$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media2/exoplayer/external/video/DummySurface$DummySurfaceThread;
    .param p2, "x1"    # Landroid/graphics/SurfaceTexture;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Landroidx/media2/exoplayer/external/video/DummySurface$1;

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/video/DummySurface;-><init>(Landroidx/media2/exoplayer/external/video/DummySurface$DummySurfaceThread;Landroid/graphics/SurfaceTexture;Z)V

    return-void
.end method

.method private static assertApiLevel17OrHigher()V
    .locals 2

    .line 125
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 128
    return-void

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported prior to API level 17"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getSecureModeV24(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 132
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    const-string v0, "samsung"

    sget-object v3, Landroidx/media2/exoplayer/external/util/Util;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "XT1650"

    sget-object v3, Landroidx/media2/exoplayer/external/util/Util;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    :cond_0
    return v2

    .line 132
    :cond_1
    nop

    .line 139
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    if-ge v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.vr.high_performance"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 142
    return v2

    .line 139
    :cond_2
    nop

    .line 144
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    .line 145
    .local v0, "display":Landroid/opengl/EGLDisplay;
    const/16 v1, 0x3055

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "eglExtensions":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 147
    return v2

    .line 149
    :cond_3
    const-string v3, "EGL_EXT_protected_content"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 150
    return v2

    .line 155
    :cond_4
    const-string v2, "EGL_KHR_surfaceless_context"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 156
    const/4 v2, 0x1

    goto :goto_0

    .line 157
    :cond_5
    const/4 v2, 0x2

    .line 155
    :goto_0
    return v2
.end method

.method public static declared-synchronized isSecureSupported(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Landroidx/media2/exoplayer/external/video/DummySurface;

    monitor-enter v0

    .line 77
    :try_start_0
    sget-boolean v1, Landroidx/media2/exoplayer/external/video/DummySurface;->secureModeInitialized:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 78
    sget v1, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v4, 0x18

    if-ge v1, v4, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroidx/media2/exoplayer/external/video/DummySurface;->getSecureModeV24(Landroid/content/Context;)I

    move-result v1

    :goto_0
    sput v1, Landroidx/media2/exoplayer/external/video/DummySurface;->secureMode:I

    .line 79
    sput-boolean v2, Landroidx/media2/exoplayer/external/video/DummySurface;->secureModeInitialized:Z

    goto :goto_1

    .line 77
    :cond_1
    nop

    .line 81
    :goto_1
    sget v1, Landroidx/media2/exoplayer/external/video/DummySurface;->secureMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    monitor-exit v0

    return v2

    .line 76
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static newInstanceV17(Landroid/content/Context;Z)Landroidx/media2/exoplayer/external/video/DummySurface;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "secure"    # Z

    .line 97
    invoke-static {}, Landroidx/media2/exoplayer/external/video/DummySurface;->assertApiLevel17OrHigher()V

    .line 98
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-static {p0}, Landroidx/media2/exoplayer/external/video/DummySurface;->isSecureSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 99
    new-instance v1, Landroidx/media2/exoplayer/external/video/DummySurface$DummySurfaceThread;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/video/DummySurface$DummySurfaceThread;-><init>()V

    .line 100
    .local v1, "thread":Landroidx/media2/exoplayer/external/video/DummySurface$DummySurfaceThread;
    if-eqz p1, :cond_2

    sget v0, Landroidx/media2/exoplayer/external/video/DummySurface;->secureMode:I

    nop

    :cond_2
    invoke-virtual {v1, v0}, Landroidx/media2/exoplayer/external/video/DummySurface$DummySurfaceThread;->init(I)Landroidx/media2/exoplayer/external/video/DummySurface;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public release()V
    .locals 2

    .line 111
    invoke-super {p0}, Landroid/view/Surface;->release()V

    .line 116
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/DummySurface;->thread:Landroidx/media2/exoplayer/external/video/DummySurface$DummySurfaceThread;

    monitor-enter v0

    .line 117
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/video/DummySurface;->threadReleased:Z

    if-nez v1, :cond_0

    .line 118
    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/DummySurface;->thread:Landroidx/media2/exoplayer/external/video/DummySurface$DummySurfaceThread;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/video/DummySurface$DummySurfaceThread;->release()V

    .line 119
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/video/DummySurface;->threadReleased:Z

    goto :goto_0

    .line 117
    :cond_0
    nop

    .line 121
    :goto_0
    monitor-exit v0

    .line 122
    return-void

    .line 121
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
