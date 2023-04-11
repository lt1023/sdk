.class public final Landroidx/media2/exoplayer/external/audio/AudioCapabilities;
.super Ljava/lang/Object;
.source "AudioCapabilities.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final DEFAULT_AUDIO_CAPABILITIES:Landroidx/media2/exoplayer/external/audio/AudioCapabilities;

.field private static final DEFAULT_MAX_CHANNEL_COUNT:I = 0x8

.field private static final EXTERNAL_SURROUND_SOUND_CAPABILITIES:Landroidx/media2/exoplayer/external/audio/AudioCapabilities;

.field private static final EXTERNAL_SURROUND_SOUND_KEY:Ljava/lang/String; = "external_surround_sound_enabled"


# instance fields
.field private final maxChannelCount:I

.field private final supportedEncodings:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 46
    new-instance v0, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v3, v1, v2

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;-><init>([II)V

    sput-object v0, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;->DEFAULT_AUDIO_CAPABILITIES:Landroidx/media2/exoplayer/external/audio/AudioCapabilities;

    .line 50
    new-instance v0, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;-><init>([II)V

    sput-object v0, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;->EXTERNAL_SURROUND_SOUND_CAPABILITIES:Landroidx/media2/exoplayer/external/audio/AudioCapabilities;

    return-void

    :array_0
    .array-data 4
        0x2
        0x5
        0x6
    .end array-data
.end method

.method public constructor <init>([II)V
    .locals 1
    .param p1, "supportedEncodings"    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "maxChannelCount"    # I

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    if-eqz p1, :cond_0

    .line 117
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;->supportedEncodings:[I

    .line 118
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;->supportedEncodings:[I

    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    goto :goto_0

    .line 120
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;->supportedEncodings:[I

    .line 122
    :goto_0
    iput p2, p0, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;->maxChannelCount:I

    .line 123
    return-void
.end method

.method private static deviceMaySetExternalSurroundSoundGlobalSetting()Z
    .locals 2

    .line 167
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    const-string v0, "Amazon"

    sget-object v1, Landroidx/media2/exoplayer/external/util/Util;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getCapabilities(Landroid/content/Context;)Landroidx/media2/exoplayer/external/audio/AudioCapabilities;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 68
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 69
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 71
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v0}, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;->getCapabilities(Landroid/content/Context;Landroid/content/Intent;)Landroidx/media2/exoplayer/external/audio/AudioCapabilities;

    move-result-object v1

    return-object v1
.end method

.method static getCapabilities(Landroid/content/Context;Landroid/content/Intent;)Landroidx/media2/exoplayer/external/audio/AudioCapabilities;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 76
    invoke-static {}, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;->deviceMaySetExternalSurroundSoundGlobalSetting()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "external_surround_sound_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 78
    sget-object v0, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;->EXTERNAL_SURROUND_SOUND_CAPABILITIES:Landroidx/media2/exoplayer/external/audio/AudioCapabilities;

    return-object v0

    .line 77
    :cond_0
    goto :goto_0

    .line 76
    :cond_1
    nop

    .line 80
    :goto_0
    if-eqz p1, :cond_3

    const-string v0, "android.media.extra.AUDIO_PLUG_STATE"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 83
    :cond_2
    new-instance v0, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;

    const-string v1, "android.media.extra.ENCODINGS"

    .line 84
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    const-string v2, "android.media.extra.MAX_CHANNEL_COUNT"

    const/16 v3, 0x8

    .line 85
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;-><init>([II)V

    .line 83
    return-object v0

    .line 80
    :cond_3
    :goto_1
    nop

    .line 81
    sget-object v0, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;->DEFAULT_AUDIO_CAPABILITIES:Landroidx/media2/exoplayer/external/audio/AudioCapabilities;

    return-object v0
.end method

.method static getExternalSurroundSoundGlobalSettingUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 95
    invoke-static {}, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;->deviceMaySetExternalSurroundSoundGlobalSetting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const-string v0, "external_surround_sound_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 97
    :cond_0
    const/4 v0, 0x0

    .line 95
    :goto_0
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 144
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 145
    return v0

    .line 147
    :cond_0
    instance-of v1, p1, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 148
    return v2

    .line 150
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;

    .line 151
    .local v1, "audioCapabilities":Landroidx/media2/exoplayer/external/audio/AudioCapabilities;
    iget-object v3, p0, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;->supportedEncodings:[I

    iget-object v4, v1, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;->supportedEncodings:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;->maxChannelCount:I

    iget v4, v1, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;->maxChannelCount:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getMaxChannelCount()I
    .locals 1

    .line 139
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;->maxChannelCount:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 157
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;->maxChannelCount:I

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;->supportedEncodings:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public supportsEncoding(I)Z
    .locals 1
    .param p1, "encoding"    # I

    .line 132
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;->supportedEncodings:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 162
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;->maxChannelCount:I

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;->supportedEncodings:[I

    .line 163
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x43

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "AudioCapabilities[maxChannelCount="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", supportedEncodings="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    return-object v0
.end method
