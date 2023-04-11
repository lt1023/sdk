.class public final Landroidx/media2/exoplayer/external/util/GlUtil;
.super Ljava/lang/Object;
.source "GlUtil.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GlUtil"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addShader(ILjava/lang/String;I)V
    .locals 5
    .param p0, "type"    # I
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "program"    # I

    .line 141
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 142
    .local v0, "shader":I
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 143
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 145
    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v3, v2, v3

    .line 146
    .local v2, "result":[I
    const v4, 0x8b81

    invoke-static {v0, v4, v2, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 147
    aget v3, v2, v3

    if-eq v3, v1, :cond_0

    .line 148
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xa

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", source: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/GlUtil;->throwGlError(Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :cond_0
    nop

    .line 151
    :goto_0
    invoke-static {p2, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 152
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 153
    invoke-static {}, Landroidx/media2/exoplayer/external/util/GlUtil;->checkGlError()V

    .line 154
    return-void
.end method

.method public static checkGlError()V
    .locals 6

    .line 50
    const/4 v0, 0x0

    .line 52
    .local v0, "lastError":I
    :goto_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v1

    move v2, v1

    .local v2, "error":I
    if-eqz v1, :cond_1

    .line 53
    const-string v1, "GlUtil"

    const-string v3, "glError "

    invoke-static {v0}, Landroid/opengl/GLU;->gluErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    :goto_1
    invoke-static {v1, v3}, Landroidx/media2/exoplayer/external/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    move v0, v2

    goto :goto_0

    .line 59
    :cond_1
    return-void
.end method

.method public static compileProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p0, "vertexCode"    # Ljava/lang/String;
    .param p1, "fragmentCode"    # Ljava/lang/String;

    .line 82
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    .line 83
    .local v0, "program":I
    invoke-static {}, Landroidx/media2/exoplayer/external/util/GlUtil;->checkGlError()V

    .line 86
    const v1, 0x8b31

    invoke-static {v1, p0, v0}, Landroidx/media2/exoplayer/external/util/GlUtil;->addShader(ILjava/lang/String;I)V

    .line 87
    const v1, 0x8b30

    invoke-static {v1, p1, v0}, Landroidx/media2/exoplayer/external/util/GlUtil;->addShader(ILjava/lang/String;I)V

    .line 90
    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 91
    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v3, v2, v3

    .line 92
    .local v2, "linkStatus":[I
    const v4, 0x8b82

    invoke-static {v0, v4, v2, v3}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 93
    aget v3, v2, v3

    if-eq v3, v1, :cond_1

    .line 94
    const-string v1, "Unable to link shader program: \n"

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    :goto_0
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/GlUtil;->throwGlError(Ljava/lang/String;)V

    goto :goto_1

    .line 93
    :cond_1
    nop

    .line 96
    :goto_1
    invoke-static {}, Landroidx/media2/exoplayer/external/util/GlUtil;->checkGlError()V

    .line 98
    return v0
.end method

.method public static compileProgram([Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p0, "vertexCode"    # [Ljava/lang/String;
    .param p1, "fragmentCode"    # [Ljava/lang/String;

    .line 71
    const-string v0, "\n"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/GlUtil;->compileProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static createBuffer(I)Ljava/nio/FloatBuffer;
    .locals 2
    .param p0, "capacity"    # I

    .line 116
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 117
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static createBuffer([F)Ljava/nio/FloatBuffer;
    .locals 1
    .param p0, "data"    # [F

    .line 107
    array-length v0, p0

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/GlUtil;->createBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public static createExternalTexture()I
    .locals 5

    .line 125
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 126
    .local v1, "texId":[I
    invoke-static {v1}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGenTextures(ILjava/nio/IntBuffer;)V

    .line 127
    const/4 v0, 0x0

    aget v2, v1, v0

    const v3, 0x8d65

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 128
    const/16 v2, 0x2601

    const/16 v4, 0x2801

    invoke-static {v3, v4, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 130
    const/16 v4, 0x2800

    invoke-static {v3, v4, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 132
    const v2, 0x812f

    const/16 v4, 0x2802

    invoke-static {v3, v4, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 134
    const/16 v4, 0x2803

    invoke-static {v3, v4, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 136
    invoke-static {}, Landroidx/media2/exoplayer/external/util/GlUtil;->checkGlError()V

    .line 137
    aget v0, v1, v0

    return v0
.end method

.method private static throwGlError(Ljava/lang/String;)V
    .locals 1
    .param p0, "errorMsg"    # Ljava/lang/String;

    .line 157
    const-string v0, "GlUtil"

    invoke-static {v0, p0}, Landroidx/media2/exoplayer/external/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method
