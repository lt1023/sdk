.class public final Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;
.super Ljava/lang/Object;
.source "MediaCodecUtil.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;,
        Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompatV16;,
        Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;,
        Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompat;,
        Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$ScoreProvider;,
        Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException;
    }
.end annotation


# static fields
.field private static final AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

.field private static final AVC_PROFILE_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

.field private static final CODEC_ID_AVC1:Ljava/lang/String; = "avc1"

.field private static final CODEC_ID_AVC2:Ljava/lang/String; = "avc2"

.field private static final CODEC_ID_DVH1:Ljava/lang/String; = "dvh1"

.field private static final CODEC_ID_DVHE:Ljava/lang/String; = "dvhe"

.field private static final CODEC_ID_HEV1:Ljava/lang/String; = "hev1"

.field private static final CODEC_ID_HVC1:Ljava/lang/String; = "hvc1"

.field private static final CODEC_ID_MP4A:Ljava/lang/String; = "mp4a"

.field private static final CODEC_ID_VP09:Ljava/lang/String; = "vp09"

.field private static final DOLBY_VISION_STRING_TO_LEVEL:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final DOLBY_VISION_STRING_TO_PROFILE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE:Landroid/util/SparseIntArray;

.field private static final PROFILE_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "MediaCodecUtil"

.field private static final VP9_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

.field private static final VP9_PROFILE_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

.field private static final decoderInfosCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static maxH264DecodableFrameSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 67
    const-string v0, "^\\D?(\\d+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->PROFILE_PATTERN:Ljava/util/regex/Pattern;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->decoderInfosCache:Ljava/util/HashMap;

    .line 95
    const/4 v0, -0x1

    sput v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize:I

    .line 919
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->AVC_PROFILE_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    .line 920
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->AVC_PROFILE_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    const/16 v2, 0x42

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 921
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->AVC_PROFILE_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    const/16 v3, 0x4d

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 922
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->AVC_PROFILE_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/4 v3, 0x4

    const/16 v4, 0x58

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 923
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->AVC_PROFILE_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v4, 0x8

    const/16 v5, 0x64

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 924
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->AVC_PROFILE_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v5, 0x10

    const/16 v6, 0x6e

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 925
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->AVC_PROFILE_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v6, 0x20

    const/16 v7, 0x7a

    invoke-virtual {v0, v7, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 926
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->AVC_PROFILE_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v7, 0x40

    const/16 v8, 0xf4

    invoke-virtual {v0, v8, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 928
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    .line 929
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v8, 0xa

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 931
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v8, 0xb

    invoke-virtual {v0, v8, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 932
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v8, 0xc

    invoke-virtual {v0, v8, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 933
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v8, 0xd

    invoke-virtual {v0, v8, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 934
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v8, 0x14

    invoke-virtual {v0, v8, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 935
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v9, 0x15

    invoke-virtual {v0, v9, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 936
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v9, 0x80

    const/16 v10, 0x16

    invoke-virtual {v0, v10, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 937
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v10, 0x100

    const/16 v11, 0x1e

    invoke-virtual {v0, v11, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 938
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v11, 0x200

    const/16 v12, 0x1f

    invoke-virtual {v0, v12, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 939
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v12, 0x400

    invoke-virtual {v0, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 940
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v12, 0x800

    const/16 v13, 0x28

    invoke-virtual {v0, v13, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 941
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v13, 0x1000

    const/16 v14, 0x29

    invoke-virtual {v0, v14, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 942
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v14, 0x2000

    const/16 v15, 0x2a

    invoke-virtual {v0, v15, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 943
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v15, 0x32

    const/16 v14, 0x4000

    invoke-virtual {v0, v15, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 944
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v14, 0x33

    const v15, 0x8000

    invoke-virtual {v0, v14, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 945
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v14, 0x34

    const/high16 v15, 0x10000

    invoke-virtual {v0, v14, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 947
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->VP9_PROFILE_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    .line 948
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->VP9_PROFILE_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/4 v14, 0x0

    invoke-virtual {v0, v14, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 949
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->VP9_PROFILE_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 950
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->VP9_PROFILE_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 951
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->VP9_PROFILE_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/4 v14, 0x3

    invoke-virtual {v0, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 952
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->VP9_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    .line 953
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->VP9_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v14, 0xa

    invoke-virtual {v0, v14, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 954
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->VP9_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v14, 0xb

    invoke-virtual {v0, v14, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 955
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->VP9_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v8, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 956
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->VP9_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v14, 0x15

    invoke-virtual {v0, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 957
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->VP9_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v14, 0x1e

    invoke-virtual {v0, v14, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 958
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->VP9_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v14, 0x1f

    invoke-virtual {v0, v14, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 959
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->VP9_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v14, 0x28

    invoke-virtual {v0, v14, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 960
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->VP9_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v14, 0x29

    invoke-virtual {v0, v14, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 961
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->VP9_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v14, 0x32

    invoke-virtual {v0, v14, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 962
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->VP9_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v14, 0x33

    invoke-virtual {v0, v14, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 963
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->VP9_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v14, 0x3c

    invoke-virtual {v0, v14, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 964
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->VP9_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v14, 0x3d

    invoke-virtual {v0, v14, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 965
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->VP9_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v14, 0x3e

    const/16 v15, 0x2000

    invoke-virtual {v0, v14, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 967
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    .line 968
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v14, "L30"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v14, "L60"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v14, "L63"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v14, "L90"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v14, "L93"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v14, "L120"

    const/16 v15, 0x400

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v14, "L123"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v13, "L150"

    const/16 v14, 0x4000

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v13, "L153"

    const/high16 v14, 0x10000

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v13, "L156"

    const/high16 v14, 0x40000

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v13, "L180"

    const/high16 v14, 0x100000

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v13, "L183"

    const/high16 v14, 0x400000

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v13, "L186"

    const/high16 v14, 0x1000000

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v13, "H30"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v13, "H60"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v13, "H63"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v13, "H90"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v13, "H93"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v13, "H120"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v12, "H123"

    const/16 v13, 0x2000

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v12, "H150"

    const v13, 0x8000

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v12, "H153"

    const/high16 v13, 0x20000

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v12, "H156"

    const/high16 v13, 0x80000

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v12, "H180"

    const/high16 v13, 0x200000

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v12, "H183"

    const/high16 v13, 0x800000

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v12, "H186"

    const/high16 v13, 0x2000000

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_PROFILE:Ljava/util/Map;

    .line 997
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_PROFILE:Ljava/util/Map;

    const-string v12, "00"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_PROFILE:Ljava/util/Map;

    const-string v12, "01"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_PROFILE:Ljava/util/Map;

    const-string v12, "02"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_PROFILE:Ljava/util/Map;

    const-string v12, "03"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_PROFILE:Ljava/util/Map;

    const-string v12, "04"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_PROFILE:Ljava/util/Map;

    const-string v12, "05"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_PROFILE:Ljava/util/Map;

    const-string v12, "06"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_PROFILE:Ljava/util/Map;

    const-string v12, "07"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_PROFILE:Ljava/util/Map;

    const-string v12, "08"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_PROFILE:Ljava/util/Map;

    const-string v12, "09"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_LEVEL:Ljava/util/Map;

    .line 1009
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_LEVEL:Ljava/util/Map;

    const-string v11, "01"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_LEVEL:Ljava/util/Map;

    const-string v11, "02"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_LEVEL:Ljava/util/Map;

    const-string v11, "03"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_LEVEL:Ljava/util/Map;

    const-string v11, "04"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_LEVEL:Ljava/util/Map;

    const-string v4, "05"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_LEVEL:Ljava/util/Map;

    const-string v4, "06"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_LEVEL:Ljava/util/Map;

    const-string v4, "07"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_LEVEL:Ljava/util/Map;

    const-string v4, "08"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_LEVEL:Ljava/util/Map;

    const-string v4, "09"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE:Landroid/util/SparseIntArray;

    .line 1020
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1021
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1022
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE:Landroid/util/SparseIntArray;

    const/4 v1, 0x3

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1023
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1024
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1025
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1026
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE:Landroid/util/SparseIntArray;

    const/16 v1, 0x11

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1027
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v8, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 1028
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE:Landroid/util/SparseIntArray;

    const/16 v1, 0x17

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1029
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE:Landroid/util/SparseIntArray;

    const/16 v1, 0x1d

    const/16 v2, 0x1d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1030
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE:Landroid/util/SparseIntArray;

    const/16 v1, 0x27

    const/16 v2, 0x27

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1031
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE:Landroid/util/SparseIntArray;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1032
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyWorkarounds(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p0, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;",
            ">;)V"
        }
    .end annotation

    .line 512
    .local p1, "decoderInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;>;"
    const-string v0, "audio/raw"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 513
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v0, v3, :cond_3

    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string v3, "R9"

    .line 514
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 515
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 516
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const-string v1, "OMX.MTK.AUDIO.DECODER.RAW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    const-string v0, "OMX.google.raw.decoder"

    const-string v1, "audio/raw"

    const/4 v2, 0x0

    .line 520
    invoke-static {v0, v1, v2}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->newInstance(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

    move-result-object v0

    .line 519
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 516
    :cond_0
    goto :goto_0

    .line 515
    :cond_1
    goto :goto_0

    .line 514
    :cond_2
    goto :goto_0

    .line 513
    :cond_3
    nop

    .line 524
    :goto_0
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$$Lambda$1;->$instance:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$ScoreProvider;

    invoke-static {p1, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->sortByScore(Ljava/util/List;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$ScoreProvider;)V

    goto :goto_2

    .line 539
    :cond_4
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v0, v3, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_8

    .line 540
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 541
    .local v0, "firstCodecName":Ljava/lang/String;
    const-string v1, "OMX.SEC.mp3.dec"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "OMX.SEC.MP3.Decoder"

    .line 542
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "OMX.brcm.audio.mp3.decoder"

    .line 543
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    goto :goto_2

    .line 542
    :cond_6
    goto :goto_1

    .line 541
    :cond_7
    nop

    .line 548
    :goto_1
    sget-object v1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$$Lambda$2;->$instance:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$ScoreProvider;

    invoke-static {p1, v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->sortByScore(Ljava/util/List;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$ScoreProvider;)V

    goto :goto_2

    .line 539
    .end local v0    # "firstCodecName":Ljava/lang/String;
    :cond_8
    nop

    .line 551
    :goto_2
    return-void
.end method

.method private static avcLevelToMaxFrameSize(I)I
    .locals 1
    .param p0, "avcLevel"    # I

    .line 701
    sparse-switch p0, :sswitch_data_0

    .line 729
    const/4 v0, -0x1

    return v0

    .line 727
    :sswitch_0
    const/high16 v0, 0x900000

    return v0

    .line 724
    :sswitch_1
    const v0, 0x564000

    return v0

    .line 722
    :sswitch_2
    const/high16 v0, 0x220000

    return v0

    .line 720
    :sswitch_3
    const/high16 v0, 0x200000

    return v0

    .line 717
    :sswitch_4
    const/high16 v0, 0x140000

    return v0

    .line 715
    :sswitch_5
    const v0, 0xe1000

    return v0

    .line 713
    :sswitch_6
    const v0, 0x65400

    return v0

    .line 710
    :sswitch_7
    const v0, 0x31800

    return v0

    .line 708
    :sswitch_8
    const v0, 0x18c00

    return v0

    .line 704
    :sswitch_9
    const/16 v0, 0x6300

    return v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_9
        0x2 -> :sswitch_9
        0x8 -> :sswitch_8
        0x10 -> :sswitch_8
        0x20 -> :sswitch_8
        0x40 -> :sswitch_7
        0x80 -> :sswitch_6
        0x100 -> :sswitch_6
        0x200 -> :sswitch_5
        0x400 -> :sswitch_4
        0x800 -> :sswitch_3
        0x1000 -> :sswitch_3
        0x2000 -> :sswitch_2
        0x4000 -> :sswitch_1
        0x8000 -> :sswitch_0
        0x10000 -> :sswitch_0
    .end sparse-switch
.end method

.method private static codecNeedsDisableAdaptationWorkaround(Ljava/lang/String;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 561
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x16

    if-gt v0, v1, :cond_4

    const-string v0, "ODROID-XU3"

    sget-object v1, Landroidx/media2/exoplayer/external/util/Util;->MODEL:Ljava/lang/String;

    .line 562
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Nexus 10"

    sget-object v1, Landroidx/media2/exoplayer/external/util/Util;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_2

    :cond_1
    :goto_0
    const-string v0, "OMX.Exynos.AVC.Decoder"

    .line 563
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "OMX.Exynos.AVC.Decoder.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    goto :goto_3

    .line 561
    :cond_4
    nop

    .line 563
    :goto_2
    const/4 v0, 0x0

    .line 561
    :goto_3
    return v0
.end method

.method private static getAacCodecProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .locals 8
    .param p0, "codec"    # Ljava/lang/String;
    .param p1, "parts"    # [Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 735
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    .line 736
    const-string v0, "MediaCodecUtil"

    const-string v2, "Ignoring malformed MP4A codec string: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_0
    invoke-static {v0, v2}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    return-object v1

    .line 741
    :cond_1
    const/4 v0, 0x1

    :try_start_0
    aget-object v0, p1, v0

    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 742
    .local v0, "objectTypeIndication":I
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/MimeTypes;->getMimeTypeFromMp4ObjectType(I)Ljava/lang/String;

    move-result-object v2

    .line 743
    .local v2, "mimeType":Ljava/lang/String;
    const-string v3, "audio/mp4a-latm"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 745
    const/4 v3, 0x2

    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 746
    .local v3, "audioObjectTypeIndication":I
    sget-object v4, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE:Landroid/util/SparseIntArray;

    const/4 v5, -0x1

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .line 747
    .local v4, "profile":I
    if-eq v4, v5, :cond_2

    .line 749
    new-instance v5, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 747
    :cond_2
    goto :goto_1

    .line 743
    .end local v3    # "audioObjectTypeIndication":I
    .end local v4    # "profile":I
    :cond_3
    nop

    .line 754
    .end local v0    # "objectTypeIndication":I
    .end local v2    # "mimeType":Ljava/lang/String;
    :goto_1
    goto :goto_3

    .line 752
    :catch_0
    move-exception v0

    .line 753
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "MediaCodecUtil"

    const-string v3, "Ignoring malformed MP4A codec string: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_4
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    :goto_2
    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_3
    return-object v1
.end method

.method private static getAvcProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .locals 9
    .param p0, "codec"    # Ljava/lang/String;
    .param p1, "parts"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 626
    array-length v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    .line 628
    const-string v0, "MediaCodecUtil"

    const-string v1, "Ignoring malformed AVC codec string: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

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
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    return-object v2

    .line 634
    :cond_1
    const/4 v0, 0x1

    :try_start_0
    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    .line 636
    aget-object v3, p1, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x10

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 637
    .local v1, "profileInteger":I
    aget-object v0, p1, v0

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    move v8, v1

    move v1, v0

    move v0, v8

    goto :goto_1

    .line 638
    .end local v1    # "profileInteger":I
    :cond_2
    array-length v3, p1

    const/4 v4, 0x3

    if-lt v3, v4, :cond_5

    .line 640
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 641
    .local v0, "profileInteger":I
    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    .local v1, "levelInteger":I
    :goto_1
    nop

    .line 652
    sget-object v3, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->AVC_PROFILE_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/4 v4, -0x1

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 653
    .local v3, "profile":I
    if-ne v3, v4, :cond_3

    .line 654
    const-string v4, "MediaCodecUtil"

    const/16 v5, 0x20

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Unknown AVC profile: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    return-object v2

    .line 657
    :cond_3
    sget-object v5, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    .line 658
    .local v5, "level":I
    if-ne v5, v4, :cond_4

    .line 659
    const-string v4, "MediaCodecUtil"

    const/16 v6, 0x1e

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Unknown AVC level: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    return-object v2

    .line 662
    :cond_4
    new-instance v2, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v2, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 644
    .end local v0    # "profileInteger":I
    .end local v1    # "levelInteger":I
    .end local v3    # "profile":I
    .end local v5    # "level":I
    :cond_5
    :try_start_1
    const-string v0, "MediaCodecUtil"

    const-string v1, "Ignoring malformed AVC codec string: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_6
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    :goto_2
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 645
    return-object v2

    .line 647
    :catch_0
    move-exception v0

    .line 648
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "MediaCodecUtil"

    const-string v3, "Ignoring malformed AVC codec string: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_7
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    :goto_3
    invoke-static {v1, v3}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    return-object v2
.end method

.method public static getCodecProfileAndLevel(Ljava/lang/String;)Landroid/util/Pair;
    .locals 6
    .param p0, "codec"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 245
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 246
    return-object v0

    .line 250
    :cond_0
    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, "parts":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v3, v1, v2

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string/jumbo v2, "vp09"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_1
    const-string v2, "mp4a"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x7

    goto :goto_1

    :sswitch_2
    const-string v2, "hvc1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_3
    const-string v2, "hev1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_4
    const-string v2, "dvhe"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_5
    const-string v2, "dvh1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_6
    const-string v2, "avc2"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_7
    const-string v5, "avc1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :goto_0
    const/4 v2, -0x1

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 266
    return-object v0

    .line 264
    :pswitch_0
    invoke-static {p0, v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->getAacCodecProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 262
    :pswitch_1
    invoke-static {p0, v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->getDolbyVisionProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 259
    :pswitch_2
    invoke-static {p0, v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->getHevcProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 256
    :pswitch_3
    invoke-static {p0, v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->getVp9ProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 254
    :pswitch_4
    invoke-static {p0, v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->getAvcProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x2ddf23 -> :sswitch_7
        0x2ddf24 -> :sswitch_6
        0x2f3cdb -> :sswitch_5
        0x2f3d0f -> :sswitch_4
        0x30d038 -> :sswitch_3
        0x310dbc -> :sswitch_2
        0x333790 -> :sswitch_1
        0x374e43 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getCodecSupportedType(Landroid/media/MediaCodecInfo;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "info"    # Landroid/media/MediaCodecInfo;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "secureDecodersExplicit"    # Z
    .param p3, "requestedMimeType"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 374
    invoke-static {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->isCodecUsableDecoder(Landroid/media/MediaCodecInfo;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 375
    const-string/jumbo v0, "video/dolby-vision"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 378
    const-string v0, "OMX.MS.HEVCDV.Decoder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    const-string/jumbo v0, "video/hevcdv"

    return-object v0

    .line 380
    :cond_0
    const-string v0, "OMX.RTK.video.decoder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "OMX.realtek.video.decoder.tunneled"

    .line 381
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    .line 380
    :cond_2
    nop

    .line 382
    :goto_0
    const-string/jumbo v0, "video/dv_hevc"

    return-object v0

    .line 375
    :cond_3
    nop

    .line 386
    :goto_1
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, "supportedTypes":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    .line 388
    .local v3, "supportedType":Ljava/lang/String;
    invoke-virtual {v3, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 389
    return-object v3

    .line 388
    :cond_4
    nop

    .line 387
    .end local v3    # "supportedType":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    goto :goto_3

    .line 374
    .end local v0    # "supportedTypes":[Ljava/lang/String;
    :cond_6
    nop

    .line 393
    :goto_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDecoderInfo(Ljava/lang/String;ZZ)Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;
    .locals 2
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "secure"    # Z
    .param p2, "tunneling"    # Z
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 147
    invoke-static {p0, p1, p2}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    .line 148
    .local v0, "decoderInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

    :goto_0
    return-object v1
.end method

.method public static declared-synchronized getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 9
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "secure"    # Z
    .param p2, "tunneling"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    const-class v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;

    monitor-enter v0

    .line 166
    :try_start_0
    new-instance v1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;

    invoke-direct {v1, p0, p1, p2}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;-><init>(Ljava/lang/String;ZZ)V

    .line 167
    .local v1, "key":Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;
    sget-object v2, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->decoderInfosCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    .local v2, "cachedDecoderInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;>;"
    if-eqz v2, :cond_0

    .line 169
    monitor-exit v0

    return-object v2

    .line 172
    :cond_0
    :try_start_1
    sget v3, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/4 v4, 0x0

    const/16 v5, 0x15

    if-lt v3, v5, :cond_1

    .line 173
    new-instance v3, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;

    invoke-direct {v3, p1, p2}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;-><init>(ZZ)V

    goto :goto_0

    .line 174
    :cond_1
    new-instance v3, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompatV16;

    invoke-direct {v3, v4}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompatV16;-><init>(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$1;)V

    :goto_0
    nop

    .line 175
    .local v3, "mediaCodecList":Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompat;
    invoke-static {v1, v3, p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->getDecoderInfosInternal(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompat;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 176
    .local v6, "decoderInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;>;"
    if-eqz p1, :cond_3

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    sget v7, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    if-gt v5, v7, :cond_3

    sget v5, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v7, 0x17

    if-gt v5, v7, :cond_3

    .line 179
    new-instance v5, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompatV16;

    invoke-direct {v5, v4}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompatV16;-><init>(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$1;)V

    move-object v3, v5

    .line 180
    invoke-static {v1, v3, p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->getDecoderInfosInternal(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompat;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    move-object v6, v4

    .line 181
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 182
    const-string v4, "MediaCodecUtil"

    const/4 v5, 0x0

    .line 183
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x3f

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "MediaCodecList API didn\'t list secure decoder for: "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ". Assuming: "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 182
    invoke-static {v4, v5}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 181
    :cond_2
    goto :goto_1

    .line 176
    :cond_3
    nop

    .line 186
    :goto_1
    invoke-static {p0, v6}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->applyWorkarounds(Ljava/lang/String;Ljava/util/List;)V

    .line 187
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 188
    .local v4, "unmodifiableDecoderInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;>;"
    sget-object v5, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->decoderInfosCache:Ljava/util/HashMap;

    invoke-virtual {v5, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    monitor-exit v0

    return-object v4

    .line 165
    .end local v1    # "key":Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;
    .end local v2    # "cachedDecoderInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;>;"
    .end local v3    # "mediaCodecList":Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompat;
    .end local v4    # "unmodifiableDecoderInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;>;"
    .end local v6    # "decoderInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;>;"
    .end local p0    # "mimeType":Ljava/lang/String;
    .end local p1    # "secure":Z
    .end local p2    # "tunneling":Z
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static getDecoderInfosInternal(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompat;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 17
    .param p0, "key"    # Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;
    .param p1, "mediaCodecList"    # Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompat;
    .param p2, "requestedMimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;",
            "Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompat;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 286
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 287
    .local v3, "decoderInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;>;"
    iget-object v0, v1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;->mimeType:Ljava/lang/String;

    move-object v4, v0

    .line 288
    .local v4, "mimeType":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompat;->getCodecCount()I

    move-result v0

    move v5, v0

    .line 289
    .local v5, "numberOfCodecs":I
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompat;->secureDecodersExplicit()Z

    move-result v0

    move v6, v0

    .line 291
    .local v6, "secureDecodersExplicit":Z
    const/4 v0, 0x0

    move v7, v0

    .local v7, "i":I
    :goto_0
    if-ge v7, v5, :cond_c

    .line 292
    invoke-interface {v2, v7}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompat;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v0

    move-object v8, v0

    .line 293
    .local v8, "codecInfo":Landroid/media/MediaCodecInfo;
    invoke-virtual {v8}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-object v9, v0

    .line 294
    .local v9, "name":Ljava/lang/String;
    nop

    .line 295
    move-object/from16 v10, p2

    :try_start_1
    invoke-static {v8, v9, v6, v10}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->getCodecSupportedType(Landroid/media/MediaCodecInfo;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v11, v0

    .line 296
    .local v11, "supportedType":Ljava/lang/String;
    if-nez v11, :cond_0

    .line 297
    move/from16 v16, v5

    goto/16 :goto_c

    .line 300
    :cond_0
    :try_start_2
    invoke-virtual {v8, v11}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    .line 301
    .local v0, "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    const-string/jumbo v12, "tunneled-playback"

    .line 302
    invoke-interface {v2, v12, v11, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompat;->isFeatureSupported(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v12

    .line 304
    .local v12, "tunnelingSupported":Z
    const-string/jumbo v13, "tunneled-playback"

    .line 305
    invoke-interface {v2, v13, v11, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompat;->isFeatureRequired(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v13

    .line 307
    .local v13, "tunnelingRequired":Z
    iget-boolean v14, v1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;->tunneling:Z

    if-nez v14, :cond_2

    if-nez v13, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    goto :goto_3

    :cond_2
    :goto_2
    iget-boolean v14, v1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;->tunneling:Z

    if-eqz v14, :cond_3

    if-nez v12, :cond_3

    goto :goto_1

    .line 308
    :goto_3
    move/from16 v16, v5

    goto/16 :goto_c

    .line 307
    :cond_3
    nop

    .line 310
    const-string v14, "secure-playback"

    .line 311
    invoke-interface {v2, v14, v11, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompat;->isFeatureSupported(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v14

    .line 313
    .local v14, "secureSupported":Z
    const-string v15, "secure-playback"

    .line 314
    invoke-interface {v2, v15, v11, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompat;->isFeatureRequired(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v15

    .line 316
    .local v15, "secureRequired":Z
    iget-boolean v2, v1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;->secure:Z

    if-nez v2, :cond_5

    if-nez v15, :cond_4

    goto :goto_5

    :cond_4
    :goto_4
    goto :goto_6

    :cond_5
    :goto_5
    iget-boolean v2, v1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;->secure:Z

    if-eqz v2, :cond_6

    if-nez v14, :cond_6

    goto :goto_4

    .line 317
    :goto_6
    move/from16 v16, v5

    goto/16 :goto_c

    .line 316
    :cond_6
    nop

    .line 319
    invoke-static {v9}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->codecNeedsDisableAdaptationWorkaround(Ljava/lang/String;)Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 320
    .local v2, "forceDisableAdaptive":Z
    if-eqz v6, :cond_8

    move/from16 v16, v5

    .end local v5    # "numberOfCodecs":I
    .local v16, "numberOfCodecs":I
    :try_start_3
    iget-boolean v5, v1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;->secure:Z

    if-eq v5, v14, :cond_7

    goto :goto_8

    :cond_7
    :goto_7
    goto :goto_9

    .line 336
    .end local v0    # "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v2    # "forceDisableAdaptive":Z
    .end local v12    # "tunnelingSupported":Z
    .end local v13    # "tunnelingRequired":Z
    .end local v14    # "secureSupported":Z
    .end local v15    # "secureRequired":Z
    :catch_0
    move-exception v0

    goto :goto_b

    .line 320
    .end local v16    # "numberOfCodecs":I
    .restart local v0    # "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .restart local v2    # "forceDisableAdaptive":Z
    .restart local v5    # "numberOfCodecs":I
    .restart local v12    # "tunnelingSupported":Z
    .restart local v13    # "tunnelingRequired":Z
    .restart local v14    # "secureSupported":Z
    .restart local v15    # "secureRequired":Z
    :cond_8
    move/from16 v16, v5

    .end local v5    # "numberOfCodecs":I
    .restart local v16    # "numberOfCodecs":I
    :goto_8
    if-nez v6, :cond_9

    iget-boolean v5, v1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;->secure:Z

    if-nez v5, :cond_9

    goto :goto_7

    .line 322
    :goto_9
    const/4 v5, 0x0

    .line 323
    invoke-static {v9, v4, v0, v2, v5}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->newInstance(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZ)Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

    move-result-object v5

    .line 322
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 320
    :cond_9
    nop

    .line 325
    if-nez v6, :cond_a

    if-eqz v14, :cond_a

    .line 326
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v1, ".secure"

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 327
    const/4 v5, 0x1

    invoke-static {v1, v4, v0, v2, v5}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->newInstance(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZ)Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

    move-result-object v1

    .line 326
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 334
    return-object v3

    .line 325
    :cond_a
    nop

    .line 346
    .end local v0    # "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v2    # "forceDisableAdaptive":Z
    .end local v12    # "tunnelingSupported":Z
    .end local v13    # "tunnelingRequired":Z
    .end local v14    # "secureSupported":Z
    .end local v15    # "secureRequired":Z
    :goto_a
    goto :goto_c

    .line 336
    .end local v16    # "numberOfCodecs":I
    .restart local v5    # "numberOfCodecs":I
    :catch_1
    move-exception v0

    move/from16 v16, v5

    .line 337
    .end local v5    # "numberOfCodecs":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v16    # "numberOfCodecs":I
    :goto_b
    :try_start_4
    sget v1, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v2, 0x17

    if-gt v1, v2, :cond_b

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 339
    const-string v1, "MediaCodecUtil"

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Skipping codec "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (failed to query capabilities)"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v8    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v9    # "name":Ljava/lang/String;
    .end local v11    # "supportedType":Ljava/lang/String;
    :goto_c
    add-int/lit8 v7, v7, 0x1

    move/from16 v5, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    goto/16 :goto_0

    .line 337
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v8    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v9    # "name":Ljava/lang/String;
    .restart local v11    # "supportedType":Ljava/lang/String;
    :cond_b
    nop

    .line 343
    const-string v1, "MediaCodecUtil"

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x19

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v2, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed to query codec "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    nop

    .end local p0    # "key":Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;
    .end local p1    # "mediaCodecList":Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompat;
    .end local p2    # "requestedMimeType":Ljava/lang/String;
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 349
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "decoderInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;>;"
    .end local v4    # "mimeType":Ljava/lang/String;
    .end local v6    # "secureDecodersExplicit":Z
    .end local v7    # "i":I
    .end local v8    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v9    # "name":Ljava/lang/String;
    .end local v11    # "supportedType":Ljava/lang/String;
    .end local v16    # "numberOfCodecs":I
    .restart local p0    # "key":Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;
    .restart local p1    # "mediaCodecList":Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompat;
    .restart local p2    # "requestedMimeType":Ljava/lang/String;
    :catch_2
    move-exception v0

    goto :goto_d

    .line 291
    .restart local v3    # "decoderInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;>;"
    .restart local v4    # "mimeType":Ljava/lang/String;
    .restart local v5    # "numberOfCodecs":I
    .restart local v6    # "secureDecodersExplicit":Z
    .restart local v7    # "i":I
    :cond_c
    move-object/from16 v10, p2

    move/from16 v16, v5

    .line 348
    .end local v5    # "numberOfCodecs":I
    .end local v7    # "i":I
    .restart local v16    # "numberOfCodecs":I
    return-object v3

    .line 349
    .end local v3    # "decoderInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;>;"
    .end local v4    # "mimeType":Ljava/lang/String;
    .end local v6    # "secureDecodersExplicit":Z
    .end local v16    # "numberOfCodecs":I
    :catch_3
    move-exception v0

    move-object/from16 v10, p2

    .line 352
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_d
    new-instance v1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException;-><init>(Ljava/lang/Throwable;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$1;)V

    throw v1

    return-void
.end method

.method public static getDecoderInfosSortedByFormatSupport(Ljava/util/List;Landroidx/media2/exoplayer/external/Format;)Ljava/util/List;
    .locals 1
    .param p1, "format"    # Landroidx/media2/exoplayer/external/Format;
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;",
            ">;",
            "Landroidx/media2/exoplayer/external/Format;",
            ")",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .line 199
    .local p0, "decoderInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p0, v0

    .line 200
    new-instance v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$$Lambda$0;

    invoke-direct {v0, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$$Lambda$0;-><init>(Landroidx/media2/exoplayer/external/Format;)V

    invoke-static {p0, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->sortByScore(Ljava/util/List;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$ScoreProvider;)V

    .line 209
    return-object p0
.end method

.method private static getDolbyVisionProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .locals 10
    .param p0, "codec"    # Ljava/lang/String;
    .param p1, "parts"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 568
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    .line 570
    const-string v0, "MediaCodecUtil"

    const-string v2, "Ignoring malformed Dolby Vision codec string: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_0
    invoke-static {v0, v2}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    return-object v1

    .line 574
    :cond_1
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->PROFILE_PATTERN:Ljava/util/regex/Pattern;

    const/4 v2, 0x1

    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 575
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_3

    .line 576
    const-string v2, "MediaCodecUtil"

    const-string v3, "Ignoring malformed Dolby Vision codec string: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    :goto_1
    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    return-object v1

    .line 579
    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 580
    .local v2, "profileString":Ljava/lang/String;
    sget-object v3, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_PROFILE:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 581
    .local v3, "profile":Ljava/lang/Integer;
    if-nez v3, :cond_5

    .line 582
    const-string v4, "MediaCodecUtil"

    const-string v5, "Unknown Dolby Vision profile string: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_4
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    :goto_2
    invoke-static {v4, v5}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    return-object v1

    .line 585
    :cond_5
    const/4 v4, 0x2

    aget-object v4, p1, v4

    .line 586
    .local v4, "levelString":Ljava/lang/String;
    sget-object v5, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_LEVEL:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 587
    .local v5, "level":Ljava/lang/Integer;
    if-nez v5, :cond_7

    .line 588
    const-string v6, "MediaCodecUtil"

    const-string v7, "Unknown Dolby Vision level string: "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_6
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v7, v8

    :goto_3
    invoke-static {v6, v7}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    return-object v1

    .line 591
    :cond_7
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method private static getHevcProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .locals 10
    .param p0, "codec"    # Ljava/lang/String;
    .param p1, "parts"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 595
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    .line 597
    const-string v0, "MediaCodecUtil"

    const-string v2, "Ignoring malformed HEVC codec string: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_0
    invoke-static {v0, v2}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    return-object v1

    .line 601
    :cond_1
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->PROFILE_PATTERN:Ljava/util/regex/Pattern;

    const/4 v2, 0x1

    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 602
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_3

    .line 603
    const-string v2, "MediaCodecUtil"

    const-string v3, "Ignoring malformed HEVC codec string: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    :goto_1
    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    return-object v1

    .line 606
    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 608
    .local v2, "profileString":Ljava/lang/String;
    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 609
    const/4 v3, 0x1

    goto :goto_2

    .line 610
    :cond_4
    const-string v3, "2"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 611
    const/4 v3, 0x2

    .line 616
    .local v3, "profile":I
    :goto_2
    const/4 v4, 0x3

    aget-object v4, p1, v4

    .line 617
    .local v4, "levelString":Ljava/lang/String;
    sget-object v5, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 618
    .local v5, "level":Ljava/lang/Integer;
    if-nez v5, :cond_6

    .line 619
    const-string v6, "MediaCodecUtil"

    const-string v7, "Unknown HEVC level string: "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_5
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v7, v8

    :goto_3
    invoke-static {v6, v7}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    return-object v1

    .line 622
    :cond_6
    new-instance v1, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v1, v6, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 613
    .end local v3    # "profile":I
    .end local v4    # "levelString":Ljava/lang/String;
    .end local v5    # "level":Ljava/lang/Integer;
    :cond_7
    const-string v3, "MediaCodecUtil"

    const-string v4, "Unknown HEVC profile string: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_8
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    :goto_4
    invoke-static {v3, v4}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    return-object v1
.end method

.method public static getPassthroughDecoderInfo()Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 128
    const-string v0, "audio/raw"

    .line 129
    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->getDecoderInfo(Ljava/lang/String;ZZ)Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

    move-result-object v0

    .line 130
    .local v0, "decoderInfo":Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->newPassthroughInstance(Ljava/lang/String;)Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private static getVp9ProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .locals 8
    .param p0, "codec"    # Ljava/lang/String;
    .param p1, "parts"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 666
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    .line 667
    const-string v0, "MediaCodecUtil"

    const-string v2, "Ignoring malformed VP9 codec string: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_0
    invoke-static {v0, v2}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    return-object v1

    .line 673
    :cond_1
    const/4 v0, 0x1

    :try_start_0
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 674
    .local v0, "profileInteger":I
    const/4 v2, 0x2

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    .local v2, "levelInteger":I
    nop

    .line 680
    sget-object v3, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->VP9_PROFILE_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/4 v4, -0x1

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 681
    .local v3, "profile":I
    if-ne v3, v4, :cond_2

    .line 682
    const-string v4, "MediaCodecUtil"

    const/16 v5, 0x20

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Unknown VP9 profile: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    return-object v1

    .line 685
    :cond_2
    sget-object v5, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->VP9_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    .line 686
    .local v5, "level":I
    if-ne v5, v4, :cond_3

    .line 687
    const-string v4, "MediaCodecUtil"

    const/16 v6, 0x1e

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Unknown VP9 level: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    return-object v1

    .line 690
    :cond_3
    new-instance v1, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v1, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 675
    .end local v0    # "profileInteger":I
    .end local v2    # "levelInteger":I
    .end local v3    # "profile":I
    .end local v5    # "level":I
    :catch_0
    move-exception v0

    .line 676
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "MediaCodecUtil"

    const-string v3, "Ignoring malformed VP9 codec string: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    :goto_1
    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    return-object v1
.end method

.method private static isCodecUsableDecoder(Landroid/media/MediaCodecInfo;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 4
    .param p0, "info"    # Landroid/media/MediaCodecInfo;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "secureDecodersExplicit"    # Z
    .param p3, "requestedMimeType"    # Ljava/lang/String;

    .line 408
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_38

    if-nez p2, :cond_0

    const-string v0, ".secure"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_f

    .line 413
    :cond_0
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_7

    const-string v0, "CIPAACDecoder"

    .line 414
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "CIPMP3Decoder"

    .line 415
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "CIPVorbisDecoder"

    .line 416
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "CIPAMRNBDecoder"

    .line 417
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "AACDecoder"

    .line 418
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "MP3Decoder"

    .line 419
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    .line 418
    :cond_2
    goto :goto_0

    .line 417
    :cond_3
    goto :goto_0

    .line 416
    :cond_4
    goto :goto_0

    .line 415
    :cond_5
    goto :goto_0

    .line 414
    :cond_6
    nop

    .line 420
    :goto_0
    return v1

    .line 413
    :cond_7
    nop

    .line 425
    :goto_1
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v0, v2, :cond_b

    const-string v0, "OMX.MTK.AUDIO.DECODER.AAC"

    .line 426
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "a70"

    sget-object v2, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    .line 427
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "Xiaomi"

    sget-object v2, Landroidx/media2/exoplayer/external/util/Util;->MANUFACTURER:Ljava/lang/String;

    .line 428
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string v2, "HM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_2

    :cond_8
    goto :goto_3

    .line 427
    :cond_9
    nop

    .line 429
    :goto_2
    return v1

    .line 426
    :cond_a
    goto :goto_3

    .line 425
    :cond_b
    nop

    .line 434
    :goto_3
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v2, 0x10

    if-ne v0, v2, :cond_19

    const-string v0, "OMX.qcom.audio.decoder.mp3"

    .line 435
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "dlxu"

    sget-object v3, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    .line 436
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "protou"

    sget-object v3, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    .line 437
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string/jumbo v0, "ville"

    sget-object v3, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    .line 438
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string/jumbo v0, "villeplus"

    sget-object v3, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    .line 439
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string/jumbo v0, "villec2"

    sget-object v3, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    .line 440
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string v3, "gee"

    .line 441
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "C6602"

    sget-object v3, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    .line 442
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "C6603"

    sget-object v3, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    .line 443
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "C6606"

    sget-object v3, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    .line 444
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "C6616"

    sget-object v3, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    .line 445
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "L36h"

    sget-object v3, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    .line 446
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "SO-02E"

    sget-object v3, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    .line 447
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_4

    :cond_c
    goto :goto_5

    .line 446
    :cond_d
    goto :goto_4

    .line 445
    :cond_e
    goto :goto_4

    .line 444
    :cond_f
    goto :goto_4

    .line 443
    :cond_10
    goto :goto_4

    .line 442
    :cond_11
    goto :goto_4

    .line 441
    :cond_12
    goto :goto_4

    .line 440
    :cond_13
    goto :goto_4

    .line 439
    :cond_14
    goto :goto_4

    .line 438
    :cond_15
    goto :goto_4

    .line 437
    :cond_16
    goto :goto_4

    .line 436
    :cond_17
    nop

    .line 448
    :goto_4
    return v1

    .line 435
    :cond_18
    goto :goto_5

    .line 434
    :cond_19
    nop

    .line 452
    :goto_5
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    if-ne v0, v2, :cond_1f

    const-string v0, "OMX.qcom.audio.decoder.aac"

    .line 453
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "C1504"

    sget-object v2, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    .line 454
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "C1505"

    sget-object v2, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    .line 455
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "C1604"

    sget-object v2, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    .line 456
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "C1605"

    sget-object v2, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    .line 457
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_6

    :cond_1a
    goto :goto_7

    .line 456
    :cond_1b
    goto :goto_6

    .line 455
    :cond_1c
    goto :goto_6

    .line 454
    :cond_1d
    nop

    .line 458
    :goto_6
    return v1

    .line 453
    :cond_1e
    goto :goto_7

    .line 452
    :cond_1f
    nop

    .line 462
    :goto_7
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v2, 0x18

    if-ge v0, v2, :cond_2b

    const-string v0, "OMX.SEC.aac.dec"

    .line 463
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "OMX.Exynos.AAC.Decoder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_8

    :cond_20
    goto/16 :goto_a

    :cond_21
    :goto_8
    const-string v0, "samsung"

    sget-object v2, Landroidx/media2/exoplayer/external/util/Util;->MANUFACTURER:Ljava/lang/String;

    .line 464
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string/jumbo v2, "zeroflte"

    .line 465
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string/jumbo v2, "zerolte"

    .line 466
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string/jumbo v2, "zenlte"

    .line 467
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "SC-05G"

    sget-object v2, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    .line 468
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "marinelteatt"

    sget-object v2, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    .line 469
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "404SC"

    sget-object v2, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    .line 470
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string v0, "SC-04G"

    sget-object v2, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    .line 471
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "SCV31"

    sget-object v2, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    .line 472
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_9

    :cond_22
    goto :goto_a

    .line 471
    :cond_23
    goto :goto_9

    .line 470
    :cond_24
    goto :goto_9

    .line 469
    :cond_25
    goto :goto_9

    .line 468
    :cond_26
    goto :goto_9

    .line 467
    :cond_27
    goto :goto_9

    .line 466
    :cond_28
    goto :goto_9

    .line 465
    :cond_29
    nop

    .line 473
    :goto_9
    return v1

    .line 464
    :cond_2a
    goto :goto_a

    .line 462
    :cond_2b
    nop

    .line 478
    :goto_a
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v2, 0x13

    if-gt v0, v2, :cond_33

    const-string v0, "OMX.SEC.vp8.dec"

    .line 479
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const-string v0, "samsung"

    sget-object v3, Landroidx/media2/exoplayer/external/util/Util;->MANUFACTURER:Ljava/lang/String;

    .line 480
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string v3, "d2"

    .line 481
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string v3, "serrano"

    .line 482
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2f

    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string v3, "jflte"

    .line 483
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string v3, "santos"

    .line 484
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string v3, "t0"

    .line 485
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_b

    :cond_2c
    goto :goto_c

    .line 484
    :cond_2d
    goto :goto_b

    .line 483
    :cond_2e
    goto :goto_b

    .line 482
    :cond_2f
    goto :goto_b

    .line 481
    :cond_30
    nop

    .line 486
    :goto_b
    return v1

    .line 480
    :cond_31
    goto :goto_c

    .line 479
    :cond_32
    goto :goto_c

    .line 478
    :cond_33
    nop

    .line 490
    :goto_c
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    if-gt v0, v2, :cond_35

    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string v2, "jflte"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    const-string v0, "OMX.qcom.video.decoder.vp8"

    .line 491
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 492
    return v1

    .line 491
    :cond_34
    goto :goto_d

    .line 490
    :cond_35
    nop

    .line 496
    :goto_d
    const-string v0, "audio/eac3-joc"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const-string v0, "OMX.MTK.AUDIO.DECODER.DSPAC3"

    .line 497
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 498
    return v1

    .line 497
    :cond_36
    goto :goto_e

    .line 496
    :cond_37
    nop

    .line 501
    :goto_e
    const/4 v0, 0x1

    return v0

    .line 408
    :cond_38
    :goto_f
    nop

    .line 409
    return v1
.end method

.method static final synthetic lambda$applyWorkarounds$1$MediaCodecUtil(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;)I
    .locals 3
    .param p0, "decoderInfo"    # Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

    .line 527
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 528
    .local v0, "name":Ljava/lang/String;
    const-string v1, "OMX.google"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "c2.android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 532
    :cond_0
    sget v1, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_1

    const-string v1, "OMX.MTK.AUDIO.DECODER.RAW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 535
    const/4 v1, -0x1

    return v1

    .line 532
    :cond_1
    nop

    .line 537
    const/4 v1, 0x0

    return v1

    .line 528
    :cond_2
    :goto_0
    nop

    .line 530
    const/4 v1, 0x1

    return v1
.end method

.method static final synthetic lambda$applyWorkarounds$2$MediaCodecUtil(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;)I
    .locals 2
    .param p0, "decoderInfo"    # Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

    .line 548
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const-string v1, "OMX.google"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static final synthetic lambda$getDecoderInfosSortedByFormatSupport$0$MediaCodecUtil(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;)I
    .locals 2
    .param p0, "format"    # Landroidx/media2/exoplayer/external/Format;
    .param p1, "decoderInfo"    # Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

    .line 204
    :try_start_0
    invoke-virtual {p1, p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->isFormatSupported(Landroidx/media2/exoplayer/external/Format;)Z

    move-result v0
    :try_end_0
    .catch Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException;
    const/4 v1, -0x1

    return v1
.end method

.method static final synthetic lambda$sortByScore$3$MediaCodecUtil(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$ScoreProvider;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p0, "scoreProvider"    # Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$ScoreProvider;
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;

    .line 760
    invoke-interface {p0, p2}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$ScoreProvider;->getScore(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p0, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$ScoreProvider;->getScore(Ljava/lang/Object;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public static maxH264DecodableFrameSize()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 218
    sget v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "result":I
    const-string/jumbo v1, "video/avc"

    .line 221
    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->getDecoderInfo(Ljava/lang/String;ZZ)Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

    move-result-object v1

    .line 222
    .local v1, "decoderInfo":Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;
    if-eqz v1, :cond_2

    .line 223
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->getProfileLevels()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v3

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    .line 224
    .local v5, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    iget v6, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-static {v6}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->avcLevelToMaxFrameSize(I)I

    move-result v6

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 223
    .end local v5    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 228
    :cond_0
    sget v2, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    const v2, 0x54600

    goto :goto_1

    :cond_1
    const v2, 0x2a300

    :goto_1
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2

    .line 222
    :cond_2
    nop

    .line 230
    :goto_2
    sput v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize:I

    goto :goto_3

    .line 218
    .end local v0    # "result":I
    .end local v1    # "decoderInfo":Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;
    :cond_3
    nop

    .line 232
    :goto_3
    sget v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize:I

    return v0
.end method

.method private static sortByScore(Ljava/util/List;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$ScoreProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$ScoreProvider<",
            "TT;>;)V"
        }
    .end annotation

    .line 760
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "scoreProvider":Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$ScoreProvider;, "Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$ScoreProvider<TT;>;"
    new-instance v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$$Lambda$3;

    invoke-direct {v0, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$$Lambda$3;-><init>(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$ScoreProvider;)V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 761
    return-void
.end method

.method public static warmDecoderInfoCache(Ljava/lang/String;ZZ)V
    .locals 3
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "secure"    # Z
    .param p2, "tunneling"    # Z

    .line 113
    :try_start_0
    invoke-static {p0, p1, p2}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;
    :try_end_0
    .catch Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException;
    const-string v1, "MediaCodecUtil"

    const-string v2, "Codec warming failed"

    invoke-static {v1, v2, v0}, Landroidx/media2/exoplayer/external/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    .end local v0    # "e":Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException;
    :goto_0
    return-void
.end method
