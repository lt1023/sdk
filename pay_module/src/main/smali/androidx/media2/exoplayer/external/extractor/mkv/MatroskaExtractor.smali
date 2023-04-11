.class public Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;
.super Ljava/lang/Object;
.source "MatroskaExtractor.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/Extractor;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;,
        Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;,
        Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;,
        Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Flags;
    }
.end annotation


# static fields
.field private static final BLOCK_STATE_DATA:I = 0x2

.field private static final BLOCK_STATE_HEADER:I = 0x1

.field private static final BLOCK_STATE_START:I = 0x0

.field private static final CODEC_ID_AAC:Ljava/lang/String; = "A_AAC"

.field private static final CODEC_ID_AC3:Ljava/lang/String; = "A_AC3"

.field private static final CODEC_ID_ACM:Ljava/lang/String; = "A_MS/ACM"

.field private static final CODEC_ID_ASS:Ljava/lang/String; = "S_TEXT/ASS"

.field private static final CODEC_ID_AV1:Ljava/lang/String; = "V_AV1"

.field private static final CODEC_ID_DTS:Ljava/lang/String; = "A_DTS"

.field private static final CODEC_ID_DTS_EXPRESS:Ljava/lang/String; = "A_DTS/EXPRESS"

.field private static final CODEC_ID_DTS_LOSSLESS:Ljava/lang/String; = "A_DTS/LOSSLESS"

.field private static final CODEC_ID_DVBSUB:Ljava/lang/String; = "S_DVBSUB"

.field private static final CODEC_ID_E_AC3:Ljava/lang/String; = "A_EAC3"

.field private static final CODEC_ID_FLAC:Ljava/lang/String; = "A_FLAC"

.field private static final CODEC_ID_FOURCC:Ljava/lang/String; = "V_MS/VFW/FOURCC"

.field private static final CODEC_ID_H264:Ljava/lang/String; = "V_MPEG4/ISO/AVC"

.field private static final CODEC_ID_H265:Ljava/lang/String; = "V_MPEGH/ISO/HEVC"

.field private static final CODEC_ID_MP2:Ljava/lang/String; = "A_MPEG/L2"

.field private static final CODEC_ID_MP3:Ljava/lang/String; = "A_MPEG/L3"

.field private static final CODEC_ID_MPEG2:Ljava/lang/String; = "V_MPEG2"

.field private static final CODEC_ID_MPEG4_AP:Ljava/lang/String; = "V_MPEG4/ISO/AP"

.field private static final CODEC_ID_MPEG4_ASP:Ljava/lang/String; = "V_MPEG4/ISO/ASP"

.field private static final CODEC_ID_MPEG4_SP:Ljava/lang/String; = "V_MPEG4/ISO/SP"

.field private static final CODEC_ID_OPUS:Ljava/lang/String; = "A_OPUS"

.field private static final CODEC_ID_PCM_INT_LIT:Ljava/lang/String; = "A_PCM/INT/LIT"

.field private static final CODEC_ID_PGS:Ljava/lang/String; = "S_HDMV/PGS"

.field private static final CODEC_ID_SUBRIP:Ljava/lang/String; = "S_TEXT/UTF8"

.field private static final CODEC_ID_THEORA:Ljava/lang/String; = "V_THEORA"

.field private static final CODEC_ID_TRUEHD:Ljava/lang/String; = "A_TRUEHD"

.field private static final CODEC_ID_VOBSUB:Ljava/lang/String; = "S_VOBSUB"

.field private static final CODEC_ID_VORBIS:Ljava/lang/String; = "A_VORBIS"

.field private static final CODEC_ID_VP8:Ljava/lang/String; = "V_VP8"

.field private static final CODEC_ID_VP9:Ljava/lang/String; = "V_VP9"

.field private static final DOC_TYPE_MATROSKA:Ljava/lang/String; = "matroska"

.field private static final DOC_TYPE_WEBM:Ljava/lang/String; = "webm"

.field private static final ENCRYPTION_IV_SIZE:I = 0x8

.field public static final FACTORY:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

.field public static final FLAG_DISABLE_SEEK_FOR_CUES:I = 0x1

.field private static final FOURCC_COMPRESSION_DIVX:I = 0x58564944

.field private static final FOURCC_COMPRESSION_H263:I = 0x33363248

.field private static final FOURCC_COMPRESSION_VC1:I = 0x31435657

.field private static final ID_AUDIO:I = 0xe1

.field private static final ID_AUDIO_BIT_DEPTH:I = 0x6264

.field private static final ID_BLOCK:I = 0xa1

.field private static final ID_BLOCK_DURATION:I = 0x9b

.field private static final ID_BLOCK_GROUP:I = 0xa0

.field private static final ID_CHANNELS:I = 0x9f

.field private static final ID_CLUSTER:I = 0x1f43b675

.field private static final ID_CODEC_DELAY:I = 0x56aa

.field private static final ID_CODEC_ID:I = 0x86

.field private static final ID_CODEC_PRIVATE:I = 0x63a2

.field private static final ID_COLOUR:I = 0x55b0

.field private static final ID_COLOUR_PRIMARIES:I = 0x55bb

.field private static final ID_COLOUR_RANGE:I = 0x55b9

.field private static final ID_COLOUR_TRANSFER:I = 0x55ba

.field private static final ID_CONTENT_COMPRESSION:I = 0x5034

.field private static final ID_CONTENT_COMPRESSION_ALGORITHM:I = 0x4254

.field private static final ID_CONTENT_COMPRESSION_SETTINGS:I = 0x4255

.field private static final ID_CONTENT_ENCODING:I = 0x6240

.field private static final ID_CONTENT_ENCODINGS:I = 0x6d80

.field private static final ID_CONTENT_ENCODING_ORDER:I = 0x5031

.field private static final ID_CONTENT_ENCODING_SCOPE:I = 0x5032

.field private static final ID_CONTENT_ENCRYPTION:I = 0x5035

.field private static final ID_CONTENT_ENCRYPTION_AES_SETTINGS:I = 0x47e7

.field private static final ID_CONTENT_ENCRYPTION_AES_SETTINGS_CIPHER_MODE:I = 0x47e8

.field private static final ID_CONTENT_ENCRYPTION_ALGORITHM:I = 0x47e1

.field private static final ID_CONTENT_ENCRYPTION_KEY_ID:I = 0x47e2

.field private static final ID_CUES:I = 0x1c53bb6b

.field private static final ID_CUE_CLUSTER_POSITION:I = 0xf1

.field private static final ID_CUE_POINT:I = 0xbb

.field private static final ID_CUE_TIME:I = 0xb3

.field private static final ID_CUE_TRACK_POSITIONS:I = 0xb7

.field private static final ID_DEFAULT_DURATION:I = 0x23e383

.field private static final ID_DISPLAY_HEIGHT:I = 0x54ba

.field private static final ID_DISPLAY_UNIT:I = 0x54b2

.field private static final ID_DISPLAY_WIDTH:I = 0x54b0

.field private static final ID_DOC_TYPE:I = 0x4282

.field private static final ID_DOC_TYPE_READ_VERSION:I = 0x4285

.field private static final ID_DURATION:I = 0x4489

.field private static final ID_EBML:I = 0x1a45dfa3

.field private static final ID_EBML_READ_VERSION:I = 0x42f7

.field private static final ID_FLAG_DEFAULT:I = 0x88

.field private static final ID_FLAG_FORCED:I = 0x55aa

.field private static final ID_INFO:I = 0x1549a966

.field private static final ID_LANGUAGE:I = 0x22b59c

.field private static final ID_LUMNINANCE_MAX:I = 0x55d9

.field private static final ID_LUMNINANCE_MIN:I = 0x55da

.field private static final ID_MASTERING_METADATA:I = 0x55d0

.field private static final ID_MAX_CLL:I = 0x55bc

.field private static final ID_MAX_FALL:I = 0x55bd

.field private static final ID_NAME:I = 0x536e

.field private static final ID_PIXEL_HEIGHT:I = 0xba

.field private static final ID_PIXEL_WIDTH:I = 0xb0

.field private static final ID_PRIMARY_B_CHROMATICITY_X:I = 0x55d5

.field private static final ID_PRIMARY_B_CHROMATICITY_Y:I = 0x55d6

.field private static final ID_PRIMARY_G_CHROMATICITY_X:I = 0x55d3

.field private static final ID_PRIMARY_G_CHROMATICITY_Y:I = 0x55d4

.field private static final ID_PRIMARY_R_CHROMATICITY_X:I = 0x55d1

.field private static final ID_PRIMARY_R_CHROMATICITY_Y:I = 0x55d2

.field private static final ID_PROJECTION:I = 0x7670

.field private static final ID_PROJECTION_POSE_PITCH:I = 0x7674

.field private static final ID_PROJECTION_POSE_ROLL:I = 0x7675

.field private static final ID_PROJECTION_POSE_YAW:I = 0x7673

.field private static final ID_PROJECTION_PRIVATE:I = 0x7672

.field private static final ID_PROJECTION_TYPE:I = 0x7671

.field private static final ID_REFERENCE_BLOCK:I = 0xfb

.field private static final ID_SAMPLING_FREQUENCY:I = 0xb5

.field private static final ID_SEEK:I = 0x4dbb

.field private static final ID_SEEK_HEAD:I = 0x114d9b74

.field private static final ID_SEEK_ID:I = 0x53ab

.field private static final ID_SEEK_POSITION:I = 0x53ac

.field private static final ID_SEEK_PRE_ROLL:I = 0x56bb

.field private static final ID_SEGMENT:I = 0x18538067

.field private static final ID_SEGMENT_INFO:I = 0x1549a966

.field private static final ID_SIMPLE_BLOCK:I = 0xa3

.field private static final ID_STEREO_MODE:I = 0x53b8

.field private static final ID_TIMECODE_SCALE:I = 0x2ad7b1

.field private static final ID_TIME_CODE:I = 0xe7

.field private static final ID_TRACKS:I = 0x1654ae6b

.field private static final ID_TRACK_ENTRY:I = 0xae

.field private static final ID_TRACK_NUMBER:I = 0xd7

.field private static final ID_TRACK_TYPE:I = 0x83

.field private static final ID_VIDEO:I = 0xe0

.field private static final ID_WHITE_POINT_CHROMATICITY_X:I = 0x55d7

.field private static final ID_WHITE_POINT_CHROMATICITY_Y:I = 0x55d8

.field private static final LACING_EBML:I = 0x3

.field private static final LACING_FIXED_SIZE:I = 0x2

.field private static final LACING_NONE:I = 0x0

.field private static final LACING_XIPH:I = 0x1

.field private static final OPUS_MAX_INPUT_SIZE:I = 0x1680

.field private static final SSA_DIALOGUE_FORMAT:[B

.field private static final SSA_PREFIX:[B

.field private static final SSA_PREFIX_END_TIMECODE_OFFSET:I = 0x15

.field private static final SSA_TIMECODE_EMPTY:[B

.field private static final SSA_TIMECODE_FORMAT:Ljava/lang/String; = "%01d:%02d:%02d:%02d"

.field private static final SSA_TIMECODE_LAST_VALUE_SCALING_FACTOR:J = 0x2710L

.field private static final SUBRIP_PREFIX:[B

.field private static final SUBRIP_PREFIX_END_TIMECODE_OFFSET:I = 0x13

.field private static final SUBRIP_TIMECODE_EMPTY:[B

.field private static final SUBRIP_TIMECODE_FORMAT:Ljava/lang/String; = "%02d:%02d:%02d,%03d"

.field private static final SUBRIP_TIMECODE_LAST_VALUE_SCALING_FACTOR:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "MatroskaExtractor"

.field private static final TRACK_TYPE_AUDIO:I = 0x2

.field private static final UNSET_ENTRY_ID:I = -0x1

.field private static final VORBIS_MAX_INPUT_SIZE:I = 0x2000

.field private static final WAVE_FORMAT_EXTENSIBLE:I = 0xfffe

.field private static final WAVE_FORMAT_PCM:I = 0x1

.field private static final WAVE_FORMAT_SIZE:I = 0x12

.field private static final WAVE_SUBFORMAT_PCM:Ljava/util/UUID;


# instance fields
.field private blockDurationUs:J

.field private blockFlags:I

.field private blockLacingSampleCount:I

.field private blockLacingSampleIndex:I

.field private blockLacingSampleSizes:[I

.field private blockState:I

.field private blockTimeUs:J

.field private blockTrackNumber:I

.field private blockTrackNumberLength:I

.field private clusterTimecodeUs:J

.field private cueClusterPositions:Landroidx/media2/exoplayer/external/util/LongArray;

.field private cueTimesUs:Landroidx/media2/exoplayer/external/util/LongArray;

.field private cuesContentPosition:J

.field private currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

.field private durationTimecode:J

.field private durationUs:J

.field private final encryptionInitializationVector:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private final encryptionSubsampleData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

.field private extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

.field private final nalLength:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private final nalStartCode:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private final reader:Landroidx/media2/exoplayer/external/extractor/mkv/EbmlReader;

.field private sampleBytesRead:I

.field private sampleBytesWritten:I

.field private sampleCurrentNalBytesRemaining:I

.field private sampleEncodingHandled:Z

.field private sampleInitializationVectorRead:Z

.field private samplePartitionCount:I

.field private samplePartitionCountRead:Z

.field private sampleRead:Z

.field private sampleSeenReferenceBlock:Z

.field private sampleSignalByte:B

.field private sampleSignalByteRead:Z

.field private final sampleStrippedBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private final scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private seekEntryId:I

.field private final seekEntryIdBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private seekEntryPosition:J

.field private seekForCues:Z

.field private final seekForCuesEnabled:Z

.field private seekPositionAfterBuildingCues:J

.field private seenClusterPositionForCurrentCuePoint:Z

.field private segmentContentPosition:J

.field private segmentContentSize:J

.field private sentSeekMap:Z

.field private final subtitleSample:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private timecodeScale:J

.field private final tracks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;",
            ">;"
        }
    .end annotation
.end field

.field private final varintReader:Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;

.field private final vorbisNumPageSamples:Landroidx/media2/exoplayer/external/util/ParsableByteArray;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 73
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$$Lambda$0;->$instance:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->FACTORY:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    .line 242
    const/16 v0, 0x20

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->SUBRIP_PREFIX:[B

    .line 254
    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    sput-object v1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->SUBRIP_TIMECODE_EMPTY:[B

    .line 269
    const-string v1, "Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text"

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->SSA_DIALOGUE_FORMAT:[B

    .line 278
    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->SSA_PREFIX:[B

    .line 295
    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->SSA_TIMECODE_EMPTY:[B

    .line 317
    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x100000000001000L

    const-wide v3, -0x7fffff55ffc7648fL    # -3.607411173533E-312

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->WAVE_SUBFORMAT_PCM:Ljava/util/UUID;

    return-void

    :array_0
    .array-data 1
        0x31t
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data

    :array_1
    .array-data 1
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
    .end array-data

    :array_2
    .array-data 1
        0x44t
        0x69t
        0x61t
        0x6ct
        0x6ft
        0x67t
        0x75t
        0x65t
        0x3at
        0x20t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
    .end array-data

    :array_3
    .array-data 1
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 390
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;-><init>(I)V

    .line 391
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "flags"    # I

    .line 394
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;-><init>()V

    invoke-direct {p0, v0, p1}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;-><init>(Landroidx/media2/exoplayer/external/extractor/mkv/EbmlReader;I)V

    .line 395
    return-void
.end method

.method constructor <init>(Landroidx/media2/exoplayer/external/extractor/mkv/EbmlReader;I)V
    .locals 4
    .param p1, "reader"    # Landroidx/media2/exoplayer/external/extractor/mkv/EbmlReader;
    .param p2, "flags"    # I

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    .line 338
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    .line 339
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->durationTimecode:J

    .line 340
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->durationUs:J

    .line 354
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->cuesContentPosition:J

    .line 355
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->seekPositionAfterBuildingCues:J

    .line 356
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->clusterTimecodeUs:J

    .line 398
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->reader:Landroidx/media2/exoplayer/external/extractor/mkv/EbmlReader;

    .line 399
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->reader:Landroidx/media2/exoplayer/external/extractor/mkv/EbmlReader;

    new-instance v1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;-><init>(Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$1;)V

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/extractor/mkv/EbmlReader;->init(Landroidx/media2/exoplayer/external/extractor/mkv/EbmlProcessor;)V

    .line 400
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->seekForCuesEnabled:Z

    .line 401
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->varintReader:Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;

    .line 402
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    .line 403
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 404
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->vorbisNumPageSamples:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 405
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 406
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    sget-object v2, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->nalStartCode:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 407
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->nalLength:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 408
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 409
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->subtitleSample:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 410
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->encryptionInitializationVector:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 411
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->encryptionSubsampleData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 412
    return-void
.end method

.method static synthetic access$300()[B
    .locals 1

    .line 70
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->SSA_DIALOGUE_FORMAT:[B

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/UUID;
    .locals 1

    .line 70
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->WAVE_SUBFORMAT_PCM:Ljava/util/UUID;

    return-object v0
.end method

.method private buildSeekMap()Landroidx/media2/exoplayer/external/extractor/SeekMap;
    .locals 11

    .line 1483
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_4

    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->durationUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v0, v3

    if-eqz v5, :cond_4

    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->cueTimesUs:Landroidx/media2/exoplayer/external/util/LongArray;

    if-eqz v0, :cond_4

    .line 1484
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/LongArray;->size()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Landroidx/media2/exoplayer/external/util/LongArray;

    if-eqz v0, :cond_3

    .line 1485
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/LongArray;->size()I

    move-result v0

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->cueTimesUs:Landroidx/media2/exoplayer/external/util/LongArray;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/LongArray;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 1491
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->cueTimesUs:Landroidx/media2/exoplayer/external/util/LongArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/LongArray;->size()I

    move-result v0

    .line 1492
    .local v0, "cuePointsSize":I
    new-array v1, v0, [I

    .line 1493
    .local v1, "sizes":[I
    new-array v3, v0, [J

    .line 1494
    .local v3, "offsets":[J
    new-array v4, v0, [J

    .line 1495
    .local v4, "durationsUs":[J
    new-array v5, v0, [J

    .line 1496
    .local v5, "timesUs":[J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v0, :cond_1

    .line 1497
    iget-object v7, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->cueTimesUs:Landroidx/media2/exoplayer/external/util/LongArray;

    invoke-virtual {v7, v6}, Landroidx/media2/exoplayer/external/util/LongArray;->get(I)J

    move-result-wide v7

    aput-wide v7, v5, v6

    .line 1498
    iget-wide v7, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    iget-object v9, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Landroidx/media2/exoplayer/external/util/LongArray;

    invoke-virtual {v9, v6}, Landroidx/media2/exoplayer/external/util/LongArray;->get(I)J

    move-result-wide v9

    add-long/2addr v7, v9

    aput-wide v7, v3, v6

    .line 1496
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1500
    .end local v6    # "i":I
    :cond_1
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_1
    add-int/lit8 v7, v0, -0x1

    if-ge v6, v7, :cond_2

    .line 1501
    add-int/lit8 v7, v6, 0x1

    aget-wide v7, v3, v7

    aget-wide v9, v3, v6

    sub-long/2addr v7, v9

    long-to-int v8, v7

    aput v8, v1, v6

    .line 1502
    add-int/lit8 v7, v6, 0x1

    aget-wide v7, v5, v7

    aget-wide v9, v5, v6

    sub-long/2addr v7, v9

    aput-wide v7, v4, v6

    .line 1500
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1504
    .end local v6    # "i":I
    :cond_2
    add-int/lit8 v6, v0, -0x1

    iget-wide v7, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    iget-wide v9, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->segmentContentSize:J

    add-long/2addr v7, v9

    add-int/lit8 v9, v0, -0x1

    aget-wide v9, v3, v9

    sub-long/2addr v7, v9

    long-to-int v8, v7

    aput v8, v1, v6

    .line 1506
    add-int/lit8 v6, v0, -0x1

    iget-wide v7, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->durationUs:J

    add-int/lit8 v9, v0, -0x1

    aget-wide v9, v5, v9

    sub-long/2addr v7, v9

    aput-wide v7, v4, v6

    .line 1507
    iput-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->cueTimesUs:Landroidx/media2/exoplayer/external/util/LongArray;

    .line 1508
    iput-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Landroidx/media2/exoplayer/external/util/LongArray;

    .line 1509
    new-instance v2, Landroidx/media2/exoplayer/external/extractor/ChunkIndex;

    invoke-direct {v2, v1, v3, v4, v5}, Landroidx/media2/exoplayer/external/extractor/ChunkIndex;-><init>([I[J[J[J)V

    return-object v2

    .line 1484
    .end local v0    # "cuePointsSize":I
    .end local v1    # "sizes":[I
    .end local v3    # "offsets":[J
    .end local v4    # "durationsUs":[J
    .end local v5    # "timesUs":[J
    :cond_3
    goto :goto_2

    .line 1483
    :cond_4
    nop

    .line 1487
    :goto_2
    iput-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->cueTimesUs:Landroidx/media2/exoplayer/external/util/LongArray;

    .line 1488
    iput-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Landroidx/media2/exoplayer/external/util/LongArray;

    .line 1489
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/SeekMap$Unseekable;

    iget-wide v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->durationUs:J

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/SeekMap$Unseekable;-><init>(J)V

    return-object v0
.end method

.method private commitSampleToOutput(Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;J)V
    .locals 16
    .param p1, "track"    # Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;
    .param p2, "timeUs"    # J

    .line 1189
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-object v0, v8, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;

    if-eqz v0, :cond_0

    .line 1190
    iget-object v0, v8, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;

    move-wide/from16 v14, p2

    invoke-virtual {v0, v8, v14, v15}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->sampleMetadata(Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;J)V

    goto :goto_1

    .line 1192
    :cond_0
    move-wide/from16 v14, p2

    const-string v0, "S_TEXT/UTF8"

    iget-object v1, v8, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1193
    const-string v2, "%02d:%02d:%02d,%03d"

    const/16 v3, 0x13

    const-wide/16 v4, 0x3e8

    sget-object v6, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->SUBRIP_TIMECODE_EMPTY:[B

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->commitSubtitleSample(Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;Ljava/lang/String;IJ[B)V

    goto :goto_0

    .line 1199
    :cond_1
    const-string v0, "S_TEXT/ASS"

    iget-object v1, v8, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1200
    const-string v2, "%01d:%02d:%02d:%02d"

    const/16 v3, 0x15

    const-wide/16 v4, 0x2710

    sget-object v6, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->SSA_TIMECODE_EMPTY:[B

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->commitSubtitleSample(Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;Ljava/lang/String;IJ[B)V

    goto :goto_0

    .line 1199
    :cond_2
    nop

    .line 1207
    :goto_0
    iget-object v9, v8, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iget v12, v7, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockFlags:I

    iget v13, v7, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    const/4 v0, 0x0

    iget-object v1, v8, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;

    move-wide/from16 v10, p2

    move v14, v0

    move-object v15, v1

    invoke-interface/range {v9 .. v15}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;)V

    .line 1209
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, v7, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleRead:Z

    .line 1210
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->resetSample()V

    .line 1211
    return-void
.end method

.method private commitSubtitleSample(Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;Ljava/lang/String;IJ[B)V
    .locals 9
    .param p1, "track"    # Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;
    .param p2, "timecodeFormat"    # Ljava/lang/String;
    .param p3, "endTimecodeOffset"    # I
    .param p4, "lastTimecodeValueScalingFactor"    # J
    .param p6, "emptyTimecode"    # [B

    .line 1415
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->subtitleSample:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v1, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockDurationUs:J

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    move-object v8, p6

    invoke-static/range {v1 .. v8}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->setSampleDuration([BJLjava/lang/String;IJ[B)V

    .line 1419
    iget-object v0, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->subtitleSample:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 1420
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->subtitleSample:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    .line 1421
    return-void
.end method

.method private static ensureArrayCapacity([II)[I
    .locals 1
    .param p0, "array"    # [I
    .param p1, "length"    # I

    .line 1583
    if-nez p0, :cond_0

    .line 1584
    new-array v0, p1, [I

    return-object v0

    .line 1585
    :cond_0
    array-length v0, p0

    if-lt v0, p1, :cond_1

    .line 1586
    return-object p0

    .line 1589
    :cond_1
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [I

    return-object v0
.end method

.method private static isCodecSupported(Ljava/lang/String;)Z
    .locals 1
    .param p0, "codecId"    # Ljava/lang/String;

    .line 1546
    const-string v0, "V_VP8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "V_VP9"

    .line 1547
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "V_AV1"

    .line 1548
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "V_MPEG2"

    .line 1549
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "V_MPEG4/ISO/SP"

    .line 1550
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "V_MPEG4/ISO/ASP"

    .line 1551
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "V_MPEG4/ISO/AP"

    .line 1552
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "V_MPEG4/ISO/AVC"

    .line 1553
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "V_MPEGH/ISO/HEVC"

    .line 1554
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "V_MS/VFW/FOURCC"

    .line 1555
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "V_THEORA"

    .line 1556
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "A_OPUS"

    .line 1557
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "A_VORBIS"

    .line 1558
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "A_AAC"

    .line 1559
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "A_MPEG/L2"

    .line 1560
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "A_MPEG/L3"

    .line 1561
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "A_AC3"

    .line 1562
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "A_EAC3"

    .line 1563
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "A_TRUEHD"

    .line 1564
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "A_DTS"

    .line 1565
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "A_DTS/EXPRESS"

    .line 1566
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "A_DTS/LOSSLESS"

    .line 1567
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "A_FLAC"

    .line 1568
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "A_MS/ACM"

    .line 1569
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "A_PCM/INT/LIT"

    .line 1570
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "S_TEXT/UTF8"

    .line 1571
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "S_TEXT/ASS"

    .line 1572
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "S_VOBSUB"

    .line 1573
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "S_HDMV/PGS"

    .line 1574
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "S_DVBSUB"

    .line 1575
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 1574
    :cond_1
    goto :goto_0

    .line 1573
    :cond_2
    goto :goto_0

    .line 1572
    :cond_3
    goto :goto_0

    .line 1571
    :cond_4
    goto :goto_0

    .line 1570
    :cond_5
    goto :goto_0

    .line 1569
    :cond_6
    goto :goto_0

    .line 1568
    :cond_7
    goto :goto_0

    .line 1567
    :cond_8
    goto :goto_0

    .line 1566
    :cond_9
    goto :goto_0

    .line 1565
    :cond_a
    goto :goto_0

    .line 1564
    :cond_b
    goto :goto_0

    .line 1563
    :cond_c
    goto :goto_0

    .line 1562
    :cond_d
    goto :goto_0

    .line 1561
    :cond_e
    goto :goto_0

    .line 1560
    :cond_f
    goto :goto_0

    .line 1559
    :cond_10
    goto :goto_0

    .line 1558
    :cond_11
    goto :goto_0

    .line 1557
    :cond_12
    goto :goto_0

    .line 1556
    :cond_13
    goto :goto_0

    .line 1555
    :cond_14
    goto :goto_0

    .line 1554
    :cond_15
    goto :goto_0

    .line 1553
    :cond_16
    goto :goto_0

    .line 1552
    :cond_17
    goto :goto_0

    .line 1551
    :cond_18
    goto :goto_0

    .line 1550
    :cond_19
    goto :goto_0

    .line 1549
    :cond_1a
    goto :goto_0

    .line 1548
    :cond_1b
    goto :goto_0

    .line 1547
    :cond_1c
    goto :goto_0

    .line 1546
    :cond_1d
    nop

    .line 1575
    :goto_0
    const/4 v0, 0x1

    .line 1546
    :goto_1
    return v0
.end method

.method static final synthetic lambda$static$0$MatroskaExtractor()[Landroidx/media2/exoplayer/external/extractor/Extractor;
    .locals 3

    .line 73
    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media2/exoplayer/external/extractor/Extractor;

    new-instance v1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private maybeSeekForCues(Landroidx/media2/exoplayer/external/extractor/PositionHolder;J)Z
    .locals 7
    .param p1, "seekPosition"    # Landroidx/media2/exoplayer/external/extractor/PositionHolder;
    .param p2, "currentPosition"    # J

    .line 1522
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->seekForCues:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1523
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->seekPositionAfterBuildingCues:J

    .line 1524
    iget-wide v3, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->cuesContentPosition:J

    iput-wide v3, p1, Landroidx/media2/exoplayer/external/extractor/PositionHolder;->position:J

    .line 1525
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->seekForCues:Z

    .line 1526
    return v1

    .line 1530
    :cond_0
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    if-eqz v0, :cond_1

    iget-wide v3, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->seekPositionAfterBuildingCues:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    .line 1531
    iput-wide v3, p1, Landroidx/media2/exoplayer/external/extractor/PositionHolder;->position:J

    .line 1532
    iput-wide v5, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->seekPositionAfterBuildingCues:J

    .line 1533
    return v1

    .line 1530
    :cond_1
    nop

    .line 1535
    return v2
.end method

.method private readScratch(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;I)V
    .locals 3
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .param p2, "requiredLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1232
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v0

    if-lt v0, p2, :cond_0

    .line 1233
    return-void

    .line 1235
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->capacity()I

    move-result v0

    if-ge v0, p2, :cond_1

    .line 1236
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v1, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 1237
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v2

    .line 1236
    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset([BI)V

    goto :goto_0

    .line 1235
    :cond_1
    nop

    .line 1239
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v1

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v2

    sub-int v2, p2, v2

    invoke-interface {p1, v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BII)V

    .line 1240
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0, p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setLimit(I)V

    .line 1241
    return-void
.end method

.method private readToOutput(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/TrackOutput;I)I
    .locals 3
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .param p2, "output"    # Landroidx/media2/exoplayer/external/extractor/TrackOutput;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1464
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    .line 1465
    .local v0, "strippedBytesLeft":I
    if-lez v0, :cond_0

    .line 1466
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1467
    .local v1, "bytesRead":I
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-interface {p2, v2, v1}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    goto :goto_0

    .line 1469
    .end local v1    # "bytesRead":I
    :cond_0
    const/4 v1, 0x0

    invoke-interface {p2, p1, p3, v1}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;IZ)I

    move-result v1

    .line 1471
    .restart local v1    # "bytesRead":I
    :goto_0
    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v2, v1

    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1472
    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v2, v1

    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    .line 1473
    return v1
.end method

.method private readToTarget(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;[BII)V
    .locals 3
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .param p2, "target"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1449
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1450
    .local v0, "pendingStrippedBytes":I
    add-int v1, p3, v0

    sub-int v2, p4, v0

    invoke-interface {p1, p2, v1, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BII)V

    .line 1451
    if-lez v0, :cond_0

    .line 1452
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1, p2, p3, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    goto :goto_0

    .line 1451
    :cond_0
    nop

    .line 1454
    :goto_0
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v1, p4

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1455
    return-void
.end method

.method private resetSample()V
    .locals 1

    .line 1214
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1215
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    .line 1216
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    .line 1217
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleEncodingHandled:Z

    .line 1218
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleSignalByteRead:Z

    .line 1219
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->samplePartitionCountRead:Z

    .line 1220
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    .line 1221
    iput-byte v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleSignalByte:B

    .line 1222
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleInitializationVectorRead:Z

    .line 1223
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset()V

    .line 1224
    return-void
.end method

.method private scaleTimecodeToUs(J)J
    .locals 6
    .param p1, "unscaledTimecode"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 1539
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 1542
    const-wide/16 v4, 0x3e8

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Landroidx/media2/exoplayer/external/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    return-wide v0

    .line 1540
    :cond_0
    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    const-string v1, "Can\'t scale timecode prior to timecodeScale being set."

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static setSampleDuration([BJLjava/lang/String;IJ[B)V
    .locals 11
    .param p0, "subripSampleData"    # [B
    .param p1, "durationUs"    # J
    .param p3, "timecodeFormat"    # Ljava/lang/String;
    .param p4, "endTimecodeOffset"    # I
    .param p5, "lastTimecodeValueScalingFactor"    # J
    .param p7, "emptyTimecode"    # [B

    .line 1427
    const/4 v0, 0x0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    .line 1428
    move-object/from16 v1, p7

    move-wide v3, p1

    move-object v9, p3

    goto :goto_0

    .line 1430
    :cond_0
    const-wide v1, 0xd693a400L

    div-long v1, p1, v1

    long-to-int v2, v1

    .line 1431
    .local v2, "hours":I
    mul-int/lit16 v1, v2, 0xe10

    int-to-long v3, v1

    const-wide/32 v5, 0xf4240

    mul-long v3, v3, v5

    sub-long v3, p1, v3

    .line 1432
    .end local p1    # "durationUs":J
    .local v3, "durationUs":J
    const-wide/32 v7, 0x3938700

    div-long v7, v3, v7

    long-to-int v1, v7

    .line 1433
    .local v1, "minutes":I
    mul-int/lit8 v7, v1, 0x3c

    int-to-long v7, v7

    mul-long v7, v7, v5

    sub-long/2addr v3, v7

    .line 1434
    div-long v7, v3, v5

    long-to-int v8, v7

    .line 1435
    .local v8, "seconds":I
    int-to-long v9, v8

    mul-long v9, v9, v5

    sub-long/2addr v3, v9

    .line 1436
    div-long v5, v3, p5

    long-to-int v6, v5

    .line 1437
    .local v6, "lastValue":I
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v0

    const/4 v9, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x2

    .line 1438
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    .line 1437
    move-object v9, p3

    invoke-static {v5, p3, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroidx/media2/exoplayer/external/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 1440
    .end local v2    # "hours":I
    .end local v6    # "lastValue":I
    .end local v8    # "seconds":I
    .local v1, "timeCodeData":[B
    :goto_0
    move-object/from16 v2, p7

    array-length v5, v2

    move-object v6, p0

    move v7, p4

    invoke-static {v1, v0, p0, p4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1441
    return-void
.end method

.method private writeSampleData(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;I)V
    .locals 17
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .param p2, "track"    # Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1245
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const-string v4, "S_TEXT/UTF8"

    iget-object v5, v2, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1246
    sget-object v4, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->SUBRIP_PREFIX:[B

    invoke-direct {v0, v1, v4, v3}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->writeSubtitleSampleData(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;[BI)V

    .line 1247
    return-void

    .line 1248
    :cond_0
    const-string v4, "S_TEXT/ASS"

    iget-object v5, v2, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1249
    sget-object v4, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->SSA_PREFIX:[B

    invoke-direct {v0, v1, v4, v3}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->writeSubtitleSampleData(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;[BI)V

    .line 1250
    return-void

    .line 1253
    :cond_1
    iget-object v4, v2, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 1254
    .local v4, "output":Landroidx/media2/exoplayer/external/extractor/TrackOutput;
    iget-boolean v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleEncodingHandled:Z

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v5, :cond_12

    .line 1255
    iget-boolean v5, v2, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->hasContentEncryption:Z

    if-eqz v5, :cond_10

    .line 1258
    iget v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockFlags:I

    const v10, -0x40000001    # -1.9999999f

    and-int/2addr v5, v10

    iput v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockFlags:I

    .line 1259
    iget-boolean v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleSignalByteRead:Z

    const/16 v10, 0x80

    if-nez v5, :cond_3

    .line 1260
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v5, v9, v8}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BII)V

    .line 1261
    iget v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v5, v8

    iput v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1262
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    aget-byte v5, v5, v9

    and-int/2addr v5, v10

    if-eq v5, v10, :cond_2

    .line 1265
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    aget-byte v5, v5, v9

    iput-byte v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleSignalByte:B

    .line 1266
    iput-boolean v8, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleSignalByteRead:Z

    goto :goto_0

    .line 1263
    :cond_2
    new-instance v5, Landroidx/media2/exoplayer/external/ParserException;

    const-string v6, "Extension bit is set in signal byte"

    invoke-direct {v5, v6}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1259
    :cond_3
    nop

    .line 1268
    :goto_0
    iget-byte v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleSignalByte:B

    and-int/2addr v5, v8

    if-ne v5, v8, :cond_4

    const/4 v5, 0x1

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    .line 1269
    .local v5, "isEncrypted":Z
    :goto_1
    if-eqz v5, :cond_f

    .line 1270
    iget-byte v11, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleSignalByte:B

    and-int/2addr v11, v7

    if-ne v11, v7, :cond_5

    const/4 v11, 0x1

    goto :goto_2

    :cond_5
    const/4 v11, 0x0

    .line 1271
    .local v11, "hasSubsampleEncryption":Z
    :goto_2
    iget v12, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockFlags:I

    const/high16 v13, 0x40000000    # 2.0f

    or-int/2addr v12, v13

    iput v12, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockFlags:I

    .line 1272
    iget-boolean v12, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleInitializationVectorRead:Z

    if-nez v12, :cond_7

    .line 1273
    iget-object v12, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->encryptionInitializationVector:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v12, v12, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/16 v13, 0x8

    invoke-interface {v1, v12, v9, v13}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BII)V

    .line 1274
    iget v12, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v12, v13

    iput v12, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1275
    iput-boolean v8, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleInitializationVectorRead:Z

    .line 1277
    iget-object v12, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v12, v12, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    if-eqz v11, :cond_6

    goto :goto_3

    :cond_6
    const/4 v10, 0x0

    :goto_3
    or-int/2addr v10, v13

    int-to-byte v10, v10

    aput-byte v10, v12, v9

    .line 1278
    iget-object v10, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v10, v9}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1279
    iget-object v10, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-interface {v4, v10, v8}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 1280
    iget v10, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v10, v8

    iput v10, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    .line 1282
    iget-object v10, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->encryptionInitializationVector:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v10, v9}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1283
    iget-object v10, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->encryptionInitializationVector:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-interface {v4, v10, v13}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 1284
    iget v10, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v10, v13

    iput v10, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    goto :goto_4

    .line 1272
    :cond_7
    nop

    .line 1286
    :goto_4
    if-eqz v11, :cond_e

    .line 1287
    iget-boolean v10, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->samplePartitionCountRead:Z

    if-nez v10, :cond_8

    .line 1288
    iget-object v10, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v10, v10, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v10, v9, v8}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BII)V

    .line 1289
    iget v10, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v10, v8

    iput v10, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1290
    iget-object v10, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v10, v9}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1291
    iget-object v10, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v10}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    iput v10, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    .line 1292
    iput-boolean v8, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->samplePartitionCountRead:Z

    goto :goto_5

    .line 1287
    :cond_8
    nop

    .line 1294
    :goto_5
    iget v10, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    mul-int/lit8 v10, v10, 0x4

    .line 1295
    .local v10, "samplePartitionDataSize":I
    iget-object v12, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v12, v10}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset(I)V

    .line 1296
    iget-object v12, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v12, v12, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v12, v9, v10}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BII)V

    .line 1297
    iget v12, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v12, v10

    iput v12, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1298
    iget v12, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    div-int/2addr v12, v7

    add-int/2addr v12, v8

    int-to-short v12, v12

    .line 1299
    .local v12, "subsampleCount":S
    mul-int/lit8 v13, v12, 0x6

    add-int/2addr v13, v7

    .line 1300
    .local v13, "subsampleDataSize":I
    iget-object v14, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    if-eqz v14, :cond_a

    .line 1301
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v14

    if-ge v14, v13, :cond_9

    goto :goto_6

    :cond_9
    goto :goto_7

    .line 1300
    :cond_a
    nop

    .line 1302
    :goto_6
    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v14

    iput-object v14, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    .line 1304
    :goto_7
    iget-object v14, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v14, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1305
    iget-object v14, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v14, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1312
    const/4 v14, 0x0

    .line 1313
    .local v14, "partitionOffset":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_8
    iget v6, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    if-ge v15, v6, :cond_c

    .line 1314
    move v6, v14

    .line 1315
    .local v6, "previousPartitionOffset":I
    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v9}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v14

    .line 1316
    rem-int/lit8 v9, v15, 0x2

    if-nez v9, :cond_b

    .line 1317
    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    sub-int v8, v14, v6

    int-to-short v8, v8

    invoke-virtual {v9, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_9

    .line 1320
    :cond_b
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    sub-int v9, v14, v6

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1313
    .end local v6    # "previousPartitionOffset":I
    :goto_9
    add-int/lit8 v15, v15, 0x1

    const/4 v6, 0x4

    const/4 v8, 0x1

    const/4 v9, 0x0

    goto :goto_8

    .line 1323
    .end local v15    # "i":I
    :cond_c
    iget v8, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    sub-int v8, v3, v8

    sub-int/2addr v8, v14

    .line 1324
    .local v8, "finalPartitionSize":I
    rem-int/2addr v6, v7

    const/4 v9, 0x1

    if-ne v6, v9, :cond_d

    .line 1325
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_a

    .line 1327
    :cond_d
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    int-to-short v9, v8

    invoke-virtual {v6, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1328
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1330
    :goto_a
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->encryptionSubsampleData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    invoke-virtual {v6, v9, v13}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset([BI)V

    .line 1331
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->encryptionSubsampleData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-interface {v4, v6, v13}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 1332
    iget v6, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v6, v13

    iput v6, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    goto :goto_b

    .line 1286
    .end local v8    # "finalPartitionSize":I
    .end local v10    # "samplePartitionDataSize":I
    .end local v12    # "subsampleCount":S
    .end local v13    # "subsampleDataSize":I
    .end local v14    # "partitionOffset":I
    :cond_e
    goto :goto_b

    .line 1269
    .end local v11    # "hasSubsampleEncryption":Z
    :cond_f
    goto :goto_b

    .line 1335
    .end local v5    # "isEncrypted":Z
    :cond_10
    iget-object v5, v2, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    if-eqz v5, :cond_11

    .line 1337
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v6, v2, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    iget-object v8, v2, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    array-length v8, v8

    invoke-virtual {v5, v6, v8}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset([BI)V

    goto :goto_c

    .line 1335
    :cond_11
    :goto_b
    nop

    .line 1339
    :goto_c
    const/4 v5, 0x1

    iput-boolean v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleEncodingHandled:Z

    goto :goto_d

    .line 1254
    :cond_12
    nop

    .line 1341
    :goto_d
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v5

    add-int/2addr v3, v5

    .line 1343
    .end local p3    # "size":I
    .local v3, "size":I
    const-string v5, "V_MPEG4/ISO/AVC"

    iget-object v6, v2, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    const-string v5, "V_MPEGH/ISO/HEVC"

    iget-object v6, v2, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    goto :goto_10

    .line 1375
    :cond_13
    iget-object v5, v2, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;

    if-eqz v5, :cond_15

    .line 1376
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v5

    if-nez v5, :cond_14

    const/16 v16, 0x1

    goto :goto_e

    :cond_14
    const/16 v16, 0x0

    :goto_e
    invoke-static/range {v16 .. v16}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 1377
    iget-object v5, v2, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;

    iget v6, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockFlags:I

    invoke-virtual {v5, v1, v6, v3}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->startSample(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;II)V

    goto :goto_f

    .line 1375
    :cond_15
    nop

    .line 1379
    :goto_f
    iget v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    if-ge v5, v3, :cond_16

    .line 1380
    sub-int v5, v3, v5

    invoke-direct {v0, v1, v4, v5}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->readToOutput(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/TrackOutput;I)I

    goto :goto_f

    .line 1379
    :cond_16
    goto :goto_12

    .line 1343
    :cond_17
    :goto_10
    nop

    .line 1348
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->nalLength:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    .line 1349
    .local v5, "nalLengthData":[B
    const/4 v6, 0x0

    aput-byte v6, v5, v6

    .line 1350
    const/4 v8, 0x1

    aput-byte v6, v5, v8

    .line 1351
    aput-byte v6, v5, v7

    .line 1352
    iget v6, v2, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    .line 1353
    .local v6, "nalUnitLengthFieldLength":I
    iget v7, v2, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    const/4 v8, 0x4

    rsub-int/lit8 v7, v7, 0x4

    .line 1357
    .local v7, "nalUnitLengthFieldLengthDiff":I
    :goto_11
    iget v8, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    if-ge v8, v3, :cond_19

    .line 1358
    iget v8, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    if-nez v8, :cond_18

    .line 1360
    invoke-direct {v0, v1, v5, v7, v6}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->readToTarget(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;[BII)V

    .line 1362
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->nalLength:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1363
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->nalLength:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v8}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v8

    iput v8, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    .line 1365
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->nalStartCode:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v8, v9}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1366
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->nalStartCode:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/4 v9, 0x4

    invoke-interface {v4, v8, v9}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 1367
    iget v8, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v8, v9

    iput v8, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    goto :goto_11

    .line 1370
    :cond_18
    nop

    .line 1371
    invoke-direct {v0, v1, v4, v8}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->readToOutput(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/TrackOutput;I)I

    move-result v9

    sub-int/2addr v8, v9

    iput v8, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    goto :goto_11

    .line 1357
    :cond_19
    nop

    .line 1374
    .end local v5    # "nalLengthData":[B
    .end local v6    # "nalUnitLengthFieldLength":I
    .end local v7    # "nalUnitLengthFieldLengthDiff":I
    nop

    .line 1384
    :goto_12
    const-string v5, "A_VORBIS"

    iget-object v6, v2, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 1391
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->vorbisNumPageSamples:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1392
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->vorbisNumPageSamples:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/4 v6, 0x4

    invoke-interface {v4, v5, v6}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 1393
    iget v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v5, v6

    iput v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    goto :goto_13

    .line 1384
    :cond_1a
    nop

    .line 1395
    :goto_13
    return-void
.end method

.method private writeSubtitleSampleData(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;[BI)V
    .locals 4
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .param p2, "samplePrefix"    # [B
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1399
    array-length v0, p2

    add-int/2addr v0, p3

    .line 1400
    .local v0, "sizeWithPrefix":I
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->subtitleSample:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->capacity()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 1403
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->subtitleSample:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    add-int v2, v0, p3

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    iput-object v2, v1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    goto :goto_0

    .line 1405
    :cond_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->subtitleSample:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    array-length v2, p2

    const/4 v3, 0x0

    invoke-static {p2, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1407
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->subtitleSample:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    array-length v2, p2

    invoke-interface {p1, v1, v2, p3}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BII)V

    .line 1408
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->subtitleSample:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset(I)V

    .line 1411
    return-void
.end method


# virtual methods
.method protected binaryElement(IILandroidx/media2/exoplayer/external/extractor/ExtractorInput;)V
    .locals 22
    .param p1, "id"    # I
    .param p2, "contentSize"    # I
    .param p3, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1024
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const/16 v4, 0xa1

    const/4 v5, 0x4

    const/16 v6, 0xa3

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v1, v4, :cond_5

    if-eq v1, v6, :cond_5

    const/16 v4, 0x4255

    if-eq v1, v4, :cond_4

    const/16 v4, 0x47e2

    if-eq v1, v4, :cond_3

    const/16 v4, 0x53ab

    if-eq v1, v4, :cond_2

    const/16 v4, 0x63a2

    if-eq v1, v4, :cond_1

    const/16 v4, 0x7672

    if-ne v1, v4, :cond_0

    .line 1036
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    new-array v5, v2, [B

    iput-object v5, v4, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->projectionData:[B

    .line 1037
    iget-object v4, v4, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->projectionData:[B

    invoke-interface {v3, v4, v7, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BII)V

    .line 1038
    goto/16 :goto_10

    .line 1184
    :cond_0
    new-instance v4, Landroidx/media2/exoplayer/external/ParserException;

    const/16 v5, 0x1a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Unexpected id: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1032
    :cond_1
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    new-array v5, v2, [B

    iput-object v5, v4, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    .line 1033
    iget-object v4, v4, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-interface {v3, v4, v7, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BII)V

    .line 1034
    goto/16 :goto_10

    .line 1026
    :cond_2
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-static {v4, v7}, Ljava/util/Arrays;->fill([BB)V

    .line 1027
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    sub-int/2addr v5, v2

    invoke-interface {v3, v4, v5, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BII)V

    .line 1028
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v4, v7}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1029
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    long-to-int v5, v4

    iput v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->seekEntryId:I

    .line 1030
    goto/16 :goto_10

    .line 1045
    :cond_3
    new-array v4, v2, [B

    .line 1046
    .local v4, "encryptionKey":[B
    invoke-interface {v3, v4, v7, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BII)V

    .line 1047
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    new-instance v6, Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;

    invoke-direct {v6, v8, v4, v7, v7}, Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;-><init>(I[BII)V

    iput-object v6, v5, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;

    .line 1049
    goto/16 :goto_10

    .line 1041
    .end local v4    # "encryptionKey":[B
    :cond_4
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    new-array v5, v2, [B

    iput-object v5, v4, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    .line 1042
    iget-object v4, v4, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    invoke-interface {v3, v4, v7, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BII)V

    .line 1043
    goto/16 :goto_10

    .line 1057
    :cond_5
    iget v4, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockState:I

    const/16 v9, 0x8

    if-nez v4, :cond_6

    .line 1058
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->varintReader:Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;

    invoke-virtual {v4, v3, v7, v8, v9}, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;->readUnsignedVarint(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;ZZI)J

    move-result-wide v10

    long-to-int v4, v10

    iput v4, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockTrackNumber:I

    .line 1059
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->varintReader:Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;->getLastLength()I

    move-result v4

    iput v4, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    .line 1060
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v10, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockDurationUs:J

    .line 1061
    iput v8, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockState:I

    .line 1062
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset()V

    goto :goto_0

    .line 1057
    :cond_6
    nop

    .line 1065
    :goto_0
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    iget v10, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockTrackNumber:I

    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    .line 1068
    .local v4, "track":Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;
    if-nez v4, :cond_7

    .line 1069
    iget v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int v5, v2, v5

    invoke-interface {v3, v5}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    .line 1070
    iput v7, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockState:I

    .line 1071
    return-void

    .line 1074
    :cond_7
    iget v10, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockState:I

    if-ne v10, v8, :cond_1c

    .line 1076
    const/4 v10, 0x3

    invoke-direct {v0, v3, v10}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->readScratch(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;I)V

    .line 1077
    iget-object v11, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v11, v11, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v12, 0x2

    aget-byte v11, v11, v12

    and-int/lit8 v11, v11, 0x6

    shr-int/2addr v11, v8

    .line 1078
    .local v11, "lacing":I
    const/16 v13, 0xff

    if-nez v11, :cond_8

    .line 1079
    iput v8, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockLacingSampleCount:I

    .line 1080
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    invoke-static {v5, v8}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->ensureArrayCapacity([II)[I

    move-result-object v5

    iput-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    .line 1081
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    iget v14, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int v14, v2, v14

    sub-int/2addr v14, v10

    aput v14, v5, v7

    goto/16 :goto_8

    .line 1083
    :cond_8
    if-ne v1, v6, :cond_1b

    .line 1088
    invoke-direct {v0, v3, v5}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->readScratch(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;I)V

    .line 1089
    iget-object v14, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v14, v14, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    aget-byte v14, v14, v10

    and-int/2addr v14, v13

    add-int/2addr v14, v8

    iput v14, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockLacingSampleCount:I

    .line 1090
    iget-object v14, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    iget v15, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockLacingSampleCount:I

    .line 1091
    invoke-static {v14, v15}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->ensureArrayCapacity([II)[I

    move-result-object v14

    iput-object v14, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    .line 1092
    if-ne v11, v12, :cond_9

    .line 1093
    iget v10, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int v10, v2, v10

    sub-int/2addr v10, v5

    iget v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockLacingSampleCount:I

    div-int/2addr v10, v5

    .line 1095
    .local v10, "blockLacingSampleSize":I
    iget-object v14, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    invoke-static {v14, v7, v5, v10}, Ljava/util/Arrays;->fill([IIII)V

    .line 1096
    .end local v10    # "blockLacingSampleSize":I
    goto/16 :goto_8

    :cond_9
    if-ne v11, v8, :cond_c

    .line 1097
    const/4 v5, 0x0

    .line 1098
    .local v5, "totalSamplesSize":I
    const/4 v10, 0x4

    .line 1099
    .local v10, "headerSize":I
    const/4 v14, 0x0

    .local v14, "sampleIndex":I
    :goto_1
    iget v15, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockLacingSampleCount:I

    add-int/lit8 v6, v15, -0x1

    if-ge v14, v6, :cond_b

    .line 1100
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    aput v7, v6, v14

    .line 1103
    :goto_2
    add-int/2addr v10, v8

    invoke-direct {v0, v3, v10}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->readScratch(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;I)V

    .line 1104
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v6, v6, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    add-int/lit8 v15, v10, -0x1

    aget-byte v6, v6, v15

    and-int/2addr v6, v13

    .line 1105
    .local v6, "byteValue":I
    iget-object v15, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    aget v16, v15, v14

    add-int v16, v16, v6

    aput v16, v15, v14

    .line 1106
    if-eq v6, v13, :cond_a

    .line 1107
    aget v15, v15, v14

    add-int/2addr v5, v15

    .line 1099
    .end local v6    # "byteValue":I
    add-int/lit8 v14, v14, 0x1

    const/16 v6, 0xa3

    goto :goto_1

    .line 1106
    .restart local v6    # "byteValue":I
    :cond_a
    goto :goto_2

    .line 1099
    .end local v6    # "byteValue":I
    :cond_b
    nop

    .line 1109
    .end local v14    # "sampleIndex":I
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    sub-int/2addr v15, v8

    iget v14, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int v14, v2, v14

    sub-int/2addr v14, v10

    sub-int/2addr v14, v5

    aput v14, v6, v15

    .line 1111
    .end local v5    # "totalSamplesSize":I
    .end local v10    # "headerSize":I
    goto/16 :goto_8

    :cond_c
    if-ne v11, v10, :cond_1a

    .line 1112
    const/4 v5, 0x0

    .line 1113
    .restart local v5    # "totalSamplesSize":I
    const/4 v6, 0x4

    .line 1114
    .local v6, "headerSize":I
    const/4 v10, 0x0

    .local v10, "sampleIndex":I
    :goto_3
    iget v14, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockLacingSampleCount:I

    add-int/lit8 v15, v14, -0x1

    if-ge v10, v15, :cond_14

    .line 1115
    iget-object v14, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    aput v7, v14, v10

    .line 1116
    add-int/lit8 v6, v6, 0x1

    invoke-direct {v0, v3, v6}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->readScratch(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;I)V

    .line 1117
    iget-object v14, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v14, v14, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    add-int/lit8 v15, v6, -0x1

    aget-byte v14, v14, v15

    if-eqz v14, :cond_13

    .line 1120
    const-wide/16 v14, 0x0

    .line 1121
    .local v14, "readValue":J
    const/16 v16, 0x0

    move/from16 v12, v16

    .local v12, "i":I
    :goto_4
    if-ge v12, v9, :cond_10

    .line 1122
    rsub-int/lit8 v16, v12, 0x7

    shl-int v16, v8, v16

    .line 1123
    .local v16, "lengthMask":I
    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v7, v7, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    add-int/lit8 v17, v6, -0x1

    aget-byte v7, v7, v17

    and-int v7, v7, v16

    if-eqz v7, :cond_f

    .line 1124
    add-int/lit8 v7, v6, -0x1

    .line 1125
    .local v7, "readPosition":I
    add-int/2addr v6, v12

    .line 1126
    invoke-direct {v0, v3, v6}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->readScratch(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;I)V

    .line 1127
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v8, v8, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    add-int/lit8 v18, v7, 0x1

    .end local v7    # "readPosition":I
    .local v18, "readPosition":I
    aget-byte v7, v8, v7

    and-int/2addr v7, v13

    xor-int/lit8 v8, v16, -0x1

    and-int/2addr v7, v8

    int-to-long v7, v7

    move-wide v14, v7

    move/from16 v7, v18

    .line 1128
    .end local v18    # "readPosition":I
    .restart local v7    # "readPosition":I
    :goto_5
    if-ge v7, v6, :cond_d

    .line 1129
    shl-long/2addr v14, v9

    .line 1130
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v8, v8, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    add-int/lit8 v18, v7, 0x1

    .end local v7    # "readPosition":I
    .restart local v18    # "readPosition":I
    aget-byte v7, v8, v7

    and-int/2addr v7, v13

    int-to-long v7, v7

    or-long/2addr v14, v7

    move/from16 v7, v18

    goto :goto_5

    .line 1133
    .end local v18    # "readPosition":I
    .restart local v7    # "readPosition":I
    :cond_d
    if-lez v10, :cond_e

    .line 1134
    mul-int/lit8 v8, v12, 0x7

    add-int/lit8 v8, v8, 0x6

    const-wide/16 v18, 0x1

    shl-long v20, v18, v8

    sub-long v20, v20, v18

    sub-long v14, v14, v20

    goto :goto_6

    .line 1133
    :cond_e
    goto :goto_6

    .line 1123
    .end local v7    # "readPosition":I
    :cond_f
    nop

    .line 1121
    .end local v16    # "lengthMask":I
    add-int/lit8 v12, v12, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto :goto_4

    .line 1139
    .end local v12    # "i":I
    :cond_10
    :goto_6
    const-wide/32 v7, -0x80000000

    cmp-long v12, v14, v7

    if-ltz v12, :cond_12

    const-wide/32 v7, 0x7fffffff

    cmp-long v12, v14, v7

    if-gtz v12, :cond_12

    .line 1142
    long-to-int v7, v14

    .line 1143
    .local v7, "intReadValue":I
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    if-nez v10, :cond_11

    .line 1144
    move v12, v7

    goto :goto_7

    :cond_11
    add-int/lit8 v12, v10, -0x1

    aget v12, v8, v12

    add-int/2addr v12, v7

    :goto_7
    aput v12, v8, v10

    .line 1145
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    aget v8, v8, v10

    add-int/2addr v5, v8

    .line 1114
    .end local v7    # "intReadValue":I
    .end local v14    # "readValue":J
    add-int/lit8 v10, v10, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v12, 0x2

    goto/16 :goto_3

    .line 1139
    .restart local v14    # "readValue":J
    :cond_12
    nop

    .line 1140
    new-instance v7, Landroidx/media2/exoplayer/external/ParserException;

    const-string v8, "EBML lacing sample size out of range."

    invoke-direct {v7, v8}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1118
    .end local v14    # "readValue":J
    :cond_13
    new-instance v7, Landroidx/media2/exoplayer/external/ParserException;

    const-string v8, "No valid varint length mask found"

    invoke-direct {v7, v8}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1114
    :cond_14
    nop

    .line 1147
    .end local v10    # "sampleIndex":I
    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    const/4 v8, 0x1

    sub-int/2addr v14, v8

    iget v8, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int v8, v2, v8

    sub-int/2addr v8, v6

    sub-int/2addr v8, v5

    aput v8, v7, v14

    .line 1149
    .end local v5    # "totalSamplesSize":I
    .end local v6    # "headerSize":I
    nop

    .line 1155
    :goto_8
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v6, 0x0

    aget-byte v5, v5, v6

    shl-int/2addr v5, v9

    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v6, v6, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v7, 0x1

    aget-byte v6, v6, v7

    and-int/2addr v6, v13

    or-int/2addr v5, v6

    .line 1156
    .local v5, "timecode":I
    iget-wide v6, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->clusterTimecodeUs:J

    int-to-long v12, v5

    invoke-direct {v0, v12, v13}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v12

    add-long/2addr v6, v12

    iput-wide v6, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockTimeUs:J

    .line 1157
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v6, v6, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    and-int/2addr v6, v9

    if-ne v6, v9, :cond_15

    const/4 v6, 0x1

    goto :goto_9

    :cond_15
    const/4 v6, 0x0

    .line 1158
    .local v6, "isInvisible":Z
    :goto_9
    iget v8, v4, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->type:I

    if-eq v8, v7, :cond_17

    const/16 v8, 0xa3

    if-ne v1, v8, :cond_16

    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v8, v8, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    aget-byte v8, v8, v7

    const/16 v7, 0x80

    and-int/2addr v8, v7

    if-ne v8, v7, :cond_16

    goto :goto_a

    :cond_16
    const/4 v7, 0x0

    goto :goto_b

    :cond_17
    :goto_a
    const/4 v7, 0x1

    .line 1160
    .local v7, "isKeyframe":Z
    :goto_b
    if-eqz v7, :cond_18

    const/4 v8, 0x1

    goto :goto_c

    :cond_18
    const/4 v8, 0x0

    .line 1161
    :goto_c
    if-eqz v6, :cond_19

    const/high16 v9, -0x80000000

    goto :goto_d

    :cond_19
    const/4 v9, 0x0

    :goto_d
    or-int/2addr v8, v9

    iput v8, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockFlags:I

    .line 1162
    const/4 v8, 0x2

    iput v8, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockState:I

    .line 1163
    const/4 v8, 0x0

    iput v8, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockLacingSampleIndex:I

    goto :goto_e

    .line 1151
    .end local v5    # "timecode":I
    .end local v6    # "isInvisible":Z
    .end local v7    # "isKeyframe":Z
    :cond_1a
    new-instance v5, Landroidx/media2/exoplayer/external/ParserException;

    const/16 v6, 0x24

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Unexpected lacing value: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1084
    :cond_1b
    new-instance v5, Landroidx/media2/exoplayer/external/ParserException;

    const-string v6, "Lacing only supported in SimpleBlocks."

    invoke-direct {v5, v6}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1074
    .end local v11    # "lacing":I
    :cond_1c
    nop

    .line 1166
    :goto_e
    const/16 v5, 0xa3

    if-ne v1, v5, :cond_1e

    .line 1168
    :goto_f
    iget v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockLacingSampleIndex:I

    iget v6, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockLacingSampleCount:I

    if-ge v5, v6, :cond_1d

    .line 1169
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    aget v5, v6, v5

    invoke-direct {v0, v3, v4, v5}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->writeSampleData(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;I)V

    .line 1170
    iget-wide v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockTimeUs:J

    iget v7, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockLacingSampleIndex:I

    iget v8, v4, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->defaultSampleDurationNs:I

    mul-int v7, v7, v8

    div-int/lit16 v7, v7, 0x3e8

    int-to-long v7, v7

    add-long/2addr v5, v7

    .line 1172
    .local v5, "sampleTimeUs":J
    invoke-direct {v0, v4, v5, v6}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->commitSampleToOutput(Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;J)V

    .line 1173
    iget v7, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockLacingSampleIndex:I

    const/4 v8, 0x1

    add-int/2addr v7, v8

    iput v7, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockLacingSampleIndex:I

    .line 1174
    .end local v5    # "sampleTimeUs":J
    goto :goto_f

    .line 1175
    :cond_1d
    const/4 v5, 0x0

    iput v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockState:I

    goto :goto_10

    .line 1179
    :cond_1e
    const/4 v5, 0x0

    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    aget v5, v6, v5

    invoke-direct {v0, v3, v4, v5}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->writeSampleData(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;I)V

    .line 1182
    nop

    .line 1186
    .end local v4    # "track":Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;
    :goto_10
    return-void
.end method

.method protected endMasterElement(I)V
    .locals 8
    .param p1, "id"    # I
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 643
    const/16 v0, 0xa0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_12

    const/16 v0, 0xae

    if-eq p1, v0, :cond_10

    const/16 v0, 0x4dbb

    const v3, 0x1c53bb6b

    if-eq p1, v0, :cond_d

    const/16 v0, 0x6240

    if-eq p1, v0, :cond_a

    const/16 v0, 0x6d80

    if-eq p1, v0, :cond_7

    const v0, 0x1549a966

    if-eq p1, v0, :cond_4

    const v0, 0x1654ae6b

    if-eq p1, v0, :cond_2

    if-eq p1, v3, :cond_0

    goto/16 :goto_4

    .line 662
    :cond_0
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    if-nez v0, :cond_1

    .line 663
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->buildSeekMap()Landroidx/media2/exoplayer/external/extractor/SeekMap;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->seekMap(Landroidx/media2/exoplayer/external/extractor/SeekMap;)V

    .line 664
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    goto/16 :goto_4

    .line 662
    :cond_1
    goto/16 :goto_4

    .line 703
    :cond_2
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 706
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->endTracks()V

    .line 707
    goto/16 :goto_4

    .line 704
    :cond_3
    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    const-string v1, "No valid tracks were found"

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 645
    :cond_4
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_5

    .line 647
    const-wide/32 v0, 0xf4240

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    goto :goto_0

    .line 645
    :cond_5
    nop

    .line 649
    :goto_0
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->durationTimecode:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_6

    .line 650
    invoke-direct {p0, v0, v1}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->durationUs:J

    goto/16 :goto_4

    .line 649
    :cond_6
    goto/16 :goto_4

    .line 691
    :cond_7
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iget-boolean v0, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->hasContentEncryption:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    if-nez v0, :cond_8

    goto :goto_1

    .line 692
    :cond_8
    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    const-string v1, "Combining encryption and compression is not supported"

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 691
    :cond_9
    :goto_1
    goto/16 :goto_4

    .line 682
    :cond_a
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iget-boolean v0, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->hasContentEncryption:Z

    if-eqz v0, :cond_c

    .line 683
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;

    if-eqz v0, :cond_b

    .line 686
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    new-instance v3, Landroidx/media2/exoplayer/external/drm/DrmInitData;

    new-array v2, v2, [Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    new-instance v4, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    sget-object v5, Landroidx/media2/exoplayer/external/C;->UUID_NIL:Ljava/util/UUID;

    const-string/jumbo v6, "video/webm"

    iget-object v7, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iget-object v7, v7, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;

    iget-object v7, v7, Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;->encryptionKey:[B

    invoke-direct {v4, v5, v6, v7}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    aput-object v4, v2, v1

    invoke-direct {v3, v2}, Landroidx/media2/exoplayer/external/drm/DrmInitData;-><init>([Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)V

    iput-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    goto/16 :goto_4

    .line 684
    :cond_b
    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    const-string v1, "Encrypted Track found but ContentEncKeyID was not found"

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 682
    :cond_c
    goto :goto_4

    .line 654
    :cond_d
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->seekEntryId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    iget-wide v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->seekEntryPosition:J

    const-wide/16 v4, -0x1

    cmp-long v6, v1, v4

    if-eqz v6, :cond_f

    .line 657
    if-ne v0, v3, :cond_e

    .line 658
    iput-wide v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->cuesContentPosition:J

    goto :goto_4

    .line 657
    :cond_e
    goto :goto_4

    .line 654
    :cond_f
    nop

    .line 655
    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    const-string v1, "Mandatory element SeekID or SeekPosition not found"

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 696
    :cond_10
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->isCodecSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 697
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->number:I

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->initializeOutput(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;I)V

    .line 698
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iget v1, v1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->number:I

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 696
    :cond_11
    nop

    .line 700
    :goto_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    .line 701
    goto :goto_4

    .line 670
    :cond_12
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockState:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_13

    .line 672
    return-void

    .line 675
    :cond_13
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleSeenReferenceBlock:Z

    if-nez v0, :cond_14

    .line 676
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockFlags:I

    or-int/2addr v0, v2

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockFlags:I

    goto :goto_3

    .line 675
    :cond_14
    nop

    .line 678
    :goto_3
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockTrackNumber:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockTimeUs:J

    invoke-direct {p0, v0, v2, v3}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->commitSampleToOutput(Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;J)V

    .line 679
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockState:I

    .line 680
    nop

    .line 711
    :goto_4
    return-void
.end method

.method protected floatElement(ID)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "value"    # D
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 937
    const/16 v0, 0xb5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4489

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 981
    :pswitch_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v1, p2

    iput v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->projectionPoseRoll:F

    .line 982
    goto :goto_0

    .line 978
    :pswitch_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v1, p2

    iput v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    .line 979
    goto :goto_0

    .line 975
    :pswitch_2
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v1, p2

    iput v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->projectionPoseYaw:F

    .line 976
    goto :goto_0

    .line 972
    :pswitch_3
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v1, p2

    iput v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->minMasteringLuminance:F

    .line 973
    goto :goto_0

    .line 969
    :pswitch_4
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v1, p2

    iput v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->maxMasteringLuminance:F

    .line 970
    goto :goto_0

    .line 966
    :pswitch_5
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v1, p2

    iput v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityY:F

    .line 967
    goto :goto_0

    .line 963
    :pswitch_6
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v1, p2

    iput v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityX:F

    .line 964
    goto :goto_0

    .line 960
    :pswitch_7
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v1, p2

    iput v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityY:F

    .line 961
    goto :goto_0

    .line 957
    :pswitch_8
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v1, p2

    iput v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityX:F

    .line 958
    goto :goto_0

    .line 954
    :pswitch_9
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v1, p2

    iput v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityY:F

    .line 955
    goto :goto_0

    .line 951
    :pswitch_a
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v1, p2

    iput v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityX:F

    .line 952
    goto :goto_0

    .line 948
    :pswitch_b
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v1, p2

    iput v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityY:F

    .line 949
    goto :goto_0

    .line 945
    :pswitch_c
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v1, p2

    iput v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityX:F

    .line 946
    goto :goto_0

    .line 939
    :cond_0
    double-to-long v0, p2

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->durationTimecode:J

    .line 940
    goto :goto_0

    .line 942
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    double-to-int v1, p2

    iput v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->sampleRate:I

    .line 943
    nop

    .line 986
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x55d1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7673
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getElementType(I)I
    .locals 1
    .param p1, "id"    # I
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 470
    sparse-switch p1, :sswitch_data_0

    .line 560
    const/4 v0, 0x0

    return v0

    .line 558
    :sswitch_0
    const/4 v0, 0x5

    return v0

    .line 542
    :sswitch_1
    const/4 v0, 0x4

    return v0

    .line 493
    :sswitch_2
    const/4 v0, 0x1

    return v0

    .line 534
    :sswitch_3
    const/4 v0, 0x3

    return v0

    .line 529
    :sswitch_4
    const/4 v0, 0x2

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_4
        0x86 -> :sswitch_3
        0x88 -> :sswitch_4
        0x9b -> :sswitch_4
        0x9f -> :sswitch_4
        0xa0 -> :sswitch_2
        0xa1 -> :sswitch_1
        0xa3 -> :sswitch_1
        0xae -> :sswitch_2
        0xb0 -> :sswitch_4
        0xb3 -> :sswitch_4
        0xb5 -> :sswitch_0
        0xb7 -> :sswitch_2
        0xba -> :sswitch_4
        0xbb -> :sswitch_2
        0xd7 -> :sswitch_4
        0xe0 -> :sswitch_2
        0xe1 -> :sswitch_2
        0xe7 -> :sswitch_4
        0xf1 -> :sswitch_4
        0xfb -> :sswitch_4
        0x4254 -> :sswitch_4
        0x4255 -> :sswitch_1
        0x4282 -> :sswitch_3
        0x4285 -> :sswitch_4
        0x42f7 -> :sswitch_4
        0x4489 -> :sswitch_0
        0x47e1 -> :sswitch_4
        0x47e2 -> :sswitch_1
        0x47e7 -> :sswitch_2
        0x47e8 -> :sswitch_4
        0x4dbb -> :sswitch_2
        0x5031 -> :sswitch_4
        0x5032 -> :sswitch_4
        0x5034 -> :sswitch_2
        0x5035 -> :sswitch_2
        0x536e -> :sswitch_3
        0x53ab -> :sswitch_1
        0x53ac -> :sswitch_4
        0x53b8 -> :sswitch_4
        0x54b0 -> :sswitch_4
        0x54b2 -> :sswitch_4
        0x54ba -> :sswitch_4
        0x55aa -> :sswitch_4
        0x55b0 -> :sswitch_2
        0x55b9 -> :sswitch_4
        0x55ba -> :sswitch_4
        0x55bb -> :sswitch_4
        0x55bc -> :sswitch_4
        0x55bd -> :sswitch_4
        0x55d0 -> :sswitch_2
        0x55d1 -> :sswitch_0
        0x55d2 -> :sswitch_0
        0x55d3 -> :sswitch_0
        0x55d4 -> :sswitch_0
        0x55d5 -> :sswitch_0
        0x55d6 -> :sswitch_0
        0x55d7 -> :sswitch_0
        0x55d8 -> :sswitch_0
        0x55d9 -> :sswitch_0
        0x55da -> :sswitch_0
        0x56aa -> :sswitch_4
        0x56bb -> :sswitch_4
        0x6240 -> :sswitch_2
        0x6264 -> :sswitch_4
        0x63a2 -> :sswitch_1
        0x6d80 -> :sswitch_2
        0x7670 -> :sswitch_2
        0x7671 -> :sswitch_4
        0x7672 -> :sswitch_1
        0x7673 -> :sswitch_0
        0x7674 -> :sswitch_0
        0x7675 -> :sswitch_0
        0x22b59c -> :sswitch_3
        0x23e383 -> :sswitch_4
        0x2ad7b1 -> :sswitch_4
        0x114d9b74 -> :sswitch_2
        0x1549a966 -> :sswitch_2
        0x1654ae6b -> :sswitch_2
        0x18538067 -> :sswitch_2
        0x1a45dfa3 -> :sswitch_2
        0x1c53bb6b -> :sswitch_2
        0x1f43b675 -> :sswitch_2
    .end sparse-switch
.end method

.method public final init(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;)V
    .locals 0
    .param p1, "output"    # Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    .line 421
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    .line 422
    return-void
.end method

.method protected integerElement(IJ)V
    .locals 9
    .param p1, "id"    # I
    .param p2, "value"    # J
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 720
    const/4 v0, 0x6

    const/16 v1, 0x37

    const/16 v2, 0x32

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x3

    const-wide/16 v6, 0x1

    const/4 v8, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 739
    :sswitch_0
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    .line 740
    goto/16 :goto_0

    .line 769
    :sswitch_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    long-to-int v1, p2

    iput v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->defaultSampleDurationNs:I

    .line 770
    goto/16 :goto_0

    .line 908
    :sswitch_2
    long-to-int v0, p2

    packed-switch v0, :pswitch_data_0

    .line 922
    goto/16 :goto_0

    .line 919
    :pswitch_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iput v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    .line 920
    goto/16 :goto_0

    .line 916
    :pswitch_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iput v3, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    .line 917
    goto/16 :goto_0

    .line 913
    :pswitch_2
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iput v8, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    .line 914
    goto/16 :goto_0

    .line 910
    :pswitch_3
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iput v4, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    .line 911
    goto/16 :goto_0

    .line 781
    :sswitch_3
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    long-to-int v1, p2

    iput v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    .line 782
    goto/16 :goto_0

    .line 775
    :sswitch_4
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iput-wide p2, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->seekPreRollNs:J

    .line 776
    goto/16 :goto_0

    .line 772
    :sswitch_5
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iput-wide p2, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->codecDelayNs:J

    .line 773
    goto/16 :goto_0

    .line 905
    :sswitch_6
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    long-to-int v1, p2

    iput v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->maxFrameAverageLuminance:I

    .line 906
    goto/16 :goto_0

    .line 902
    :sswitch_7
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    long-to-int v1, p2

    iput v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->maxContentLuminance:I

    .line 903
    goto/16 :goto_0

    .line 854
    :sswitch_8
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iput-boolean v8, v1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->hasColorInfo:Z

    .line 855
    long-to-int v2, p2

    if-eq v2, v8, :cond_1

    const/16 v4, 0x9

    if-eq v2, v4, :cond_0

    packed-switch v2, :pswitch_data_1

    .line 869
    goto/16 :goto_0

    .line 863
    :pswitch_4
    iput v3, v1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->colorSpace:I

    .line 864
    goto/16 :goto_0

    .line 866
    :cond_0
    iput v0, v1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->colorSpace:I

    .line 867
    goto/16 :goto_0

    .line 857
    :cond_1
    iput v8, v1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->colorSpace:I

    .line 858
    goto/16 :goto_0

    .line 873
    :sswitch_9
    long-to-int v1, p2

    if-eq v1, v8, :cond_4

    const/16 v2, 0x10

    if-eq v1, v2, :cond_3

    const/16 v0, 0x12

    if-eq v1, v0, :cond_2

    packed-switch v1, :pswitch_data_2

    .line 886
    goto/16 :goto_0

    .line 883
    :cond_2
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    const/4 v1, 0x7

    iput v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->colorTransfer:I

    .line 884
    goto/16 :goto_0

    .line 880
    :cond_3
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iput v0, v1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->colorTransfer:I

    .line 881
    goto/16 :goto_0

    .line 877
    :cond_4
    :pswitch_5
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iput v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->colorTransfer:I

    .line 878
    goto/16 :goto_0

    .line 890
    :sswitch_a
    long-to-int v0, p2

    packed-switch v0, :pswitch_data_3

    .line 898
    goto/16 :goto_0

    .line 895
    :pswitch_6
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iput v8, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->colorRange:I

    .line 896
    goto/16 :goto_0

    .line 892
    :pswitch_7
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iput v3, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->colorRange:I

    .line 893
    goto/16 :goto_0

    .line 763
    :sswitch_b
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    cmp-long v1, p2, v6

    if-nez v1, :cond_5

    const/4 v4, 0x1

    nop

    :cond_5
    iput-boolean v4, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->flagForced:Z

    .line 764
    goto/16 :goto_0

    .line 751
    :sswitch_c
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    long-to-int v1, p2

    iput v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    .line 752
    goto/16 :goto_0

    .line 754
    :sswitch_d
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    long-to-int v1, p2

    iput v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->displayUnit:I

    .line 755
    goto/16 :goto_0

    .line 748
    :sswitch_e
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    long-to-int v1, p2

    iput v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    .line 749
    goto/16 :goto_0

    .line 835
    :sswitch_f
    long-to-int v0, p2

    .line 836
    .local v0, "layout":I
    if-eq v0, v5, :cond_7

    const/16 v1, 0xf

    if-eq v0, v1, :cond_6

    packed-switch v0, :pswitch_data_4

    .line 850
    goto/16 :goto_0

    .line 841
    :pswitch_8
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iput v3, v1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    .line 842
    goto/16 :goto_0

    .line 838
    :pswitch_9
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iput v4, v1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    .line 839
    goto/16 :goto_0

    .line 847
    :cond_6
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iput v5, v1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    .line 848
    goto/16 :goto_0

    .line 844
    :cond_7
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iput v8, v1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    .line 845
    goto/16 :goto_0

    .line 736
    .end local v0    # "layout":I
    :sswitch_10
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->seekEntryPosition:J

    .line 737
    goto/16 :goto_0

    .line 794
    :sswitch_11
    cmp-long v0, p2, v6

    if-nez v0, :cond_8

    goto/16 :goto_0

    .line 795
    :cond_8
    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ContentEncodingScope "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " not supported"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 788
    :sswitch_12
    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-nez v0, :cond_9

    goto/16 :goto_0

    .line 789
    :cond_9
    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ContentEncodingOrder "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " not supported"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 812
    :sswitch_13
    cmp-long v0, p2, v6

    if-nez v0, :cond_a

    goto/16 :goto_0

    .line 813
    :cond_a
    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    const/16 v1, 0x38

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "AESSettingsCipherMode "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " not supported"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 806
    :sswitch_14
    const-wide/16 v0, 0x5

    cmp-long v2, p2, v0

    if-nez v2, :cond_b

    goto/16 :goto_0

    .line 807
    :cond_b
    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    const/16 v1, 0x31

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ContentEncAlgo "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " not supported"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 723
    :sswitch_15
    cmp-long v0, p2, v6

    if-nez v0, :cond_c

    goto/16 :goto_0

    .line 724
    :cond_c
    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "EBMLReadVersion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 729
    :sswitch_16
    cmp-long v0, p2, v6

    if-ltz v0, :cond_d

    const-wide/16 v0, 0x2

    cmp-long v2, p2, v0

    if-gtz v2, :cond_d

    goto/16 :goto_0

    .line 730
    :cond_d
    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    const/16 v1, 0x35

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "DocTypeReadVersion "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " not supported"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 800
    :sswitch_17
    const-wide/16 v0, 0x3

    cmp-long v3, p2, v0

    if-nez v3, :cond_e

    goto/16 :goto_0

    .line 801
    :cond_e
    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "ContentCompAlgo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 784
    :sswitch_18
    iput-boolean v8, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleSeenReferenceBlock:Z

    .line 785
    goto :goto_0

    .line 820
    :sswitch_19
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->seenClusterPositionForCurrentCuePoint:Z

    if-nez v0, :cond_f

    .line 824
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Landroidx/media2/exoplayer/external/util/LongArray;

    invoke-virtual {v0, p2, p3}, Landroidx/media2/exoplayer/external/util/LongArray;->add(J)V

    .line 825
    iput-boolean v8, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->seenClusterPositionForCurrentCuePoint:Z

    goto :goto_0

    .line 820
    :cond_f
    goto :goto_0

    .line 829
    :sswitch_1a
    invoke-direct {p0, p2, p3}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->clusterTimecodeUs:J

    .line 830
    goto :goto_0

    .line 757
    :sswitch_1b
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    long-to-int v1, p2

    iput v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->number:I

    .line 758
    goto :goto_0

    .line 745
    :sswitch_1c
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    long-to-int v1, p2

    iput v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->height:I

    .line 746
    goto :goto_0

    .line 817
    :sswitch_1d
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->cueTimesUs:Landroidx/media2/exoplayer/external/util/LongArray;

    invoke-direct {p0, p2, p3}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/util/LongArray;->add(J)V

    .line 818
    goto :goto_0

    .line 742
    :sswitch_1e
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    long-to-int v1, p2

    iput v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->width:I

    .line 743
    goto :goto_0

    .line 778
    :sswitch_1f
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    long-to-int v1, p2

    iput v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->channelCount:I

    .line 779
    goto :goto_0

    .line 832
    :sswitch_20
    invoke-direct {p0, p2, p3}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockDurationUs:J

    .line 833
    goto :goto_0

    .line 760
    :sswitch_21
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    cmp-long v1, p2, v6

    if-nez v1, :cond_10

    const/4 v4, 0x1

    nop

    :cond_10
    iput-boolean v4, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->flagDefault:Z

    .line 761
    goto :goto_0

    .line 766
    :sswitch_22
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    long-to-int v1, p2

    iput v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->type:I

    .line 767
    nop

    .line 928
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_22
        0x88 -> :sswitch_21
        0x9b -> :sswitch_20
        0x9f -> :sswitch_1f
        0xb0 -> :sswitch_1e
        0xb3 -> :sswitch_1d
        0xba -> :sswitch_1c
        0xd7 -> :sswitch_1b
        0xe7 -> :sswitch_1a
        0xf1 -> :sswitch_19
        0xfb -> :sswitch_18
        0x4254 -> :sswitch_17
        0x4285 -> :sswitch_16
        0x42f7 -> :sswitch_15
        0x47e1 -> :sswitch_14
        0x47e8 -> :sswitch_13
        0x5031 -> :sswitch_12
        0x5032 -> :sswitch_11
        0x53ac -> :sswitch_10
        0x53b8 -> :sswitch_f
        0x54b0 -> :sswitch_e
        0x54b2 -> :sswitch_d
        0x54ba -> :sswitch_c
        0x55aa -> :sswitch_b
        0x55b9 -> :sswitch_a
        0x55ba -> :sswitch_9
        0x55bb -> :sswitch_8
        0x55bc -> :sswitch_7
        0x55bd -> :sswitch_6
        0x56aa -> :sswitch_5
        0x56bb -> :sswitch_4
        0x6264 -> :sswitch_3
        0x7671 -> :sswitch_2
        0x23e383 -> :sswitch_1
        0x2ad7b1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x6
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method protected isLevel1Element(I)Z
    .locals 1
    .param p1, "id"    # I
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 571
    const v0, 0x1549a966

    if-eq p1, v0, :cond_1

    const v0, 0x1f43b675

    if-eq p1, v0, :cond_1

    const v0, 0x1c53bb6b

    if-eq p1, v0, :cond_1

    const v0, 0x1654ae6b

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final read(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;)I
    .locals 4
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Landroidx/media2/exoplayer/external/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 445
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleRead:Z

    .line 446
    const/4 v1, 0x1

    .line 447
    .local v1, "continueReading":Z
    :goto_0
    if-eqz v1, :cond_1

    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleRead:Z

    if-nez v2, :cond_1

    .line 448
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->reader:Landroidx/media2/exoplayer/external/extractor/mkv/EbmlReader;

    invoke-interface {v2, p1}, Landroidx/media2/exoplayer/external/extractor/mkv/EbmlReader;->read(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z

    move-result v1

    .line 449
    if-eqz v1, :cond_0

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    invoke-direct {p0, p2, v2, v3}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->maybeSeekForCues(Landroidx/media2/exoplayer/external/extractor/PositionHolder;J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 450
    const/4 v0, 0x1

    return v0

    .line 449
    :cond_0
    goto :goto_0

    .line 447
    :cond_1
    nop

    .line 453
    if-nez v1, :cond_3

    .line 454
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 455
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->outputPendingSampleMetadata()V

    .line 454
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 457
    .end local v0    # "i":I
    :cond_2
    const/4 v0, -0x1

    return v0

    .line 459
    :cond_3
    return v0
.end method

.method public final release()V
    .locals 0

    .line 440
    return-void
.end method

.method public seek(JJ)V
    .locals 2
    .param p1, "position"    # J
    .param p3, "timeUs"    # J
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 427
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->clusterTimecodeUs:J

    .line 428
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockState:I

    .line 429
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->reader:Landroidx/media2/exoplayer/external/extractor/mkv/EbmlReader;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/extractor/mkv/EbmlReader;->reset()V

    .line 430
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->varintReader:Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;->reset()V

    .line 431
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->resetSample()V

    .line 432
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 433
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->reset()V

    .line 432
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 435
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public final sniff(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z
    .locals 1
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 416
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/mkv/Sniffer;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/extractor/mkv/Sniffer;-><init>()V

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/extractor/mkv/Sniffer;->sniff(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z

    move-result v0

    return v0
.end method

.method protected startMasterElement(IJJ)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "contentPosition"    # J
    .param p4, "contentSize"    # J
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 582
    const/16 v0, 0xa0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_d

    const/16 v0, 0xae

    if-eq p1, v0, :cond_c

    const/16 v0, 0xbb

    if-eq p1, v0, :cond_b

    const/16 v0, 0x4dbb

    const-wide/16 v1, -0x1

    if-eq p1, v0, :cond_a

    const/16 v0, 0x5035

    const/4 v3, 0x1

    if-eq p1, v0, :cond_9

    const/16 v0, 0x55d0

    if-eq p1, v0, :cond_8

    const/16 v0, 0x6240

    if-eq p1, v0, :cond_7

    const v0, 0x18538067

    if-eq p1, v0, :cond_4

    const v0, 0x1c53bb6b

    if-eq p1, v0, :cond_3

    const v0, 0x1f43b675

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    .line 603
    :cond_0
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    if-nez v0, :cond_2

    .line 605
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->seekForCuesEnabled:Z

    if-eqz v0, :cond_1

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->cuesContentPosition:J

    cmp-long v0, v4, v1

    if-eqz v0, :cond_1

    .line 607
    iput-boolean v3, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->seekForCues:Z

    goto :goto_1

    .line 605
    :cond_1
    nop

    .line 611
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    new-instance v1, Landroidx/media2/exoplayer/external/extractor/SeekMap$Unseekable;

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->durationUs:J

    invoke-direct {v1, v4, v5}, Landroidx/media2/exoplayer/external/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->seekMap(Landroidx/media2/exoplayer/external/extractor/SeekMap;)V

    .line 612
    iput-boolean v3, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    goto :goto_1

    .line 603
    :cond_2
    goto :goto_1

    .line 596
    :cond_3
    new-instance v0, Landroidx/media2/exoplayer/external/util/LongArray;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/util/LongArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->cueTimesUs:Landroidx/media2/exoplayer/external/util/LongArray;

    .line 597
    new-instance v0, Landroidx/media2/exoplayer/external/util/LongArray;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/util/LongArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Landroidx/media2/exoplayer/external/util/LongArray;

    .line 598
    goto :goto_1

    .line 584
    :cond_4
    iget-wide v3, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_6

    cmp-long v0, v3, p2

    if-nez v0, :cond_5

    goto :goto_0

    .line 586
    :cond_5
    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    const-string v1, "Multiple Segment elements not supported"

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 584
    :cond_6
    :goto_0
    nop

    .line 588
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    .line 589
    iput-wide p4, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->segmentContentSize:J

    .line 590
    goto :goto_1

    .line 621
    :cond_7
    goto :goto_1

    .line 629
    :cond_8
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iput-boolean v3, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->hasColorInfo:Z

    .line 630
    goto :goto_1

    .line 623
    :cond_9
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iput-boolean v3, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->hasContentEncryption:Z

    .line 624
    goto :goto_1

    .line 592
    :cond_a
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->seekEntryId:I

    .line 593
    iput-wide v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->seekEntryPosition:J

    .line 594
    goto :goto_1

    .line 600
    :cond_b
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->seenClusterPositionForCurrentCuePoint:Z

    .line 601
    goto :goto_1

    .line 626
    :cond_c
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;-><init>(Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$1;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    .line 627
    goto :goto_1

    .line 617
    :cond_d
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleSeenReferenceBlock:Z

    .line 618
    nop

    .line 634
    :goto_1
    return-void
.end method

.method protected stringElement(ILjava/lang/String;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 995
    const/16 v0, 0x86

    if-eq p1, v0, :cond_5

    const/16 v0, 0x4282

    if-eq p1, v0, :cond_2

    const/16 v0, 0x536e

    if-eq p1, v0, :cond_1

    const v0, 0x22b59c

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 1009
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    invoke-static {v0, p2}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->access$202(Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;Ljava/lang/String;)Ljava/lang/String;

    .line 1010
    goto :goto_1

    .line 1003
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iput-object p2, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    .line 1004
    goto :goto_1

    .line 998
    :cond_2
    const-string/jumbo v0, "webm"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "matroska"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 999
    :cond_3
    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "DocType "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not supported"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 998
    :cond_4
    :goto_0
    goto :goto_1

    .line 1006
    :cond_5
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iput-object p2, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    .line 1007
    nop

    .line 1014
    :goto_1
    return-void
.end method
