.class public final Landroidx/media2/exoplayer/external/audio/WavUtil;
.super Ljava/lang/Object;
.source "WavUtil.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final DATA_FOURCC:I = 0x64617461

.field public static final FMT_FOURCC:I = 0x666d7420

.field public static final RIFF_FOURCC:I = 0x52494646

.field private static final TYPE_A_LAW:I = 0x6

.field private static final TYPE_FLOAT:I = 0x3

.field private static final TYPE_MU_LAW:I = 0x7

.field private static final TYPE_PCM:I = 0x1

.field private static final TYPE_WAVE_FORMAT_EXTENSIBLE:I = 0xfffe

.field public static final WAVE_FOURCC:I = 0x57415645


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    return-void
.end method

.method public static getEncodingForType(II)I
    .locals 2
    .param p0, "type"    # I
    .param p1, "bitsPerSample"    # I

    .line 76
    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p0, v0, :cond_0

    const v0, 0xfffe

    if-eq p0, v0, :cond_2

    packed-switch p0, :pswitch_data_0

    .line 87
    return v1

    .line 85
    :pswitch_0
    const/high16 v0, 0x10000000

    return v0

    .line 83
    :pswitch_1
    const/high16 v0, 0x20000000

    return v0

    .line 81
    :cond_0
    const/16 v0, 0x20

    if-ne p1, v0, :cond_1

    const/4 v1, 0x4

    nop

    :cond_1
    return v1

    .line 79
    :cond_2
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Util;->getPcmEncoding(I)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getTypeForEncoding(I)I
    .locals 1
    .param p0, "encoding"    # I

    .line 55
    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_2

    const/high16 v0, 0x10000000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x20000000

    if-eq p0, v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    if-eq p0, v0, :cond_2

    packed-switch p0, :pswitch_data_0

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 66
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 62
    :cond_0
    const/4 v0, 0x6

    return v0

    .line 64
    :cond_1
    const/4 v0, 0x7

    return v0

    .line 60
    :cond_2
    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
