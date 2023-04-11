.class public Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;
.super Ljava/lang/Object;
.source "FragmentedMp4Extractor.java"

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
        Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;,
        Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;,
        Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$Flags;
    }
.end annotation


# static fields
.field private static final EMSG_FORMAT:Landroidx/media2/exoplayer/external/Format;

.field public static final FACTORY:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

.field public static final FLAG_ENABLE_EMSG_TRACK:I = 0x4

.field private static final FLAG_SIDELOADED:I = 0x8

.field public static final FLAG_WORKAROUND_EVERY_VIDEO_FRAME_IS_SYNC_FRAME:I = 0x1

.field public static final FLAG_WORKAROUND_IGNORE_EDIT_LISTS:I = 0x10

.field public static final FLAG_WORKAROUND_IGNORE_TFDT_BOX:I = 0x2

.field private static final PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

.field private static final SAMPLE_GROUP_TYPE_seig:I = 0x73656967

.field private static final STATE_READING_ATOM_HEADER:I = 0x0

.field private static final STATE_READING_ATOM_PAYLOAD:I = 0x1

.field private static final STATE_READING_ENCRYPTION_DATA:I = 0x2

.field private static final STATE_READING_SAMPLE_CONTINUE:I = 0x4

.field private static final STATE_READING_SAMPLE_START:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FragmentedMp4Extractor"


# instance fields
.field private final additionalEmsgTrackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private atomData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private final atomHeader:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private atomHeaderBytesRead:I

.field private atomSize:J

.field private atomType:I

.field private cea608TrackOutputs:[Landroidx/media2/exoplayer/external/extractor/TrackOutput;

.field private final closedCaptionFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;"
        }
    .end annotation
.end field

.field private final containerAtoms:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;",
            ">;"
        }
    .end annotation
.end field

.field private currentTrackBundle:Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

.field private durationUs:J

.field private emsgTrackOutputs:[Landroidx/media2/exoplayer/external/extractor/TrackOutput;

.field private endOfMdatPosition:J

.field private extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

.field private final flags:I

.field private haveOutputSeekMap:Z

.field private isAc4HeaderRequired:Z

.field private final nalBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private final nalPrefix:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private final nalStartCode:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private parserState:I

.field private pendingMetadataSampleBytes:I

.field private final pendingMetadataSampleInfos:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private pendingSeekTimeUs:J

.field private processSeiNalUnitPayload:Z

.field private sampleBytesWritten:I

.field private sampleCurrentNalBytesRemaining:I

.field private sampleSize:I

.field private final scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private final scratchBytes:[B

.field private segmentIndexEarliestPresentationTimeUs:J

.field private final sideloadedDrmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final sideloadedTrack:Landroidx/media2/exoplayer/external/extractor/mp4/Track;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final trackBundles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 70
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$$Lambda$0;->$instance:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->FACTORY:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    .line 119
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

    .line 121
    const-string v0, "application/x-emsg"

    .line 122
    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v1, v0, v2, v3}, Landroidx/media2/exoplayer/external/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;J)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->EMSG_FORMAT:Landroidx/media2/exoplayer/external/Format;

    .line 121
    return-void

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 185
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;-><init>(I)V

    .line 186
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "flags"    # I

    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;-><init>(ILandroidx/media2/exoplayer/external/util/TimestampAdjuster;)V

    .line 193
    return-void
.end method

.method public constructor <init>(ILandroidx/media2/exoplayer/external/util/TimestampAdjuster;)V
    .locals 1
    .param p1, "flags"    # I
    .param p2, "timestampAdjuster"    # Landroidx/media2/exoplayer/external/util/TimestampAdjuster;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 200
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;-><init>(ILandroidx/media2/exoplayer/external/util/TimestampAdjuster;Landroidx/media2/exoplayer/external/extractor/mp4/Track;Landroidx/media2/exoplayer/external/drm/DrmInitData;)V

    .line 201
    return-void
.end method

.method public constructor <init>(ILandroidx/media2/exoplayer/external/util/TimestampAdjuster;Landroidx/media2/exoplayer/external/extractor/mp4/Track;Landroidx/media2/exoplayer/external/drm/DrmInitData;)V
    .locals 6
    .param p1, "flags"    # I
    .param p2, "timestampAdjuster"    # Landroidx/media2/exoplayer/external/util/TimestampAdjuster;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "sideloadedTrack"    # Landroidx/media2/exoplayer/external/extractor/mp4/Track;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "sideloadedDrmInitData"    # Landroidx/media2/exoplayer/external/drm/DrmInitData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 216
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;-><init>(ILandroidx/media2/exoplayer/external/util/TimestampAdjuster;Landroidx/media2/exoplayer/external/extractor/mp4/Track;Landroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/List;)V

    .line 217
    return-void
.end method

.method public constructor <init>(ILandroidx/media2/exoplayer/external/util/TimestampAdjuster;Landroidx/media2/exoplayer/external/extractor/mp4/Track;Landroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/List;)V
    .locals 7
    .param p1, "flags"    # I
    .param p2, "timestampAdjuster"    # Landroidx/media2/exoplayer/external/util/TimestampAdjuster;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "sideloadedTrack"    # Landroidx/media2/exoplayer/external/extractor/mp4/Track;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "sideloadedDrmInitData"    # Landroidx/media2/exoplayer/external/drm/DrmInitData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media2/exoplayer/external/util/TimestampAdjuster;",
            "Landroidx/media2/exoplayer/external/extractor/mp4/Track;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;)V"
        }
    .end annotation

    .line 235
    .local p5, "closedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/Format;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;-><init>(ILandroidx/media2/exoplayer/external/util/TimestampAdjuster;Landroidx/media2/exoplayer/external/extractor/mp4/Track;Landroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/List;Landroidx/media2/exoplayer/external/extractor/TrackOutput;)V

    .line 237
    return-void
.end method

.method public constructor <init>(ILandroidx/media2/exoplayer/external/util/TimestampAdjuster;Landroidx/media2/exoplayer/external/extractor/mp4/Track;Landroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/List;Landroidx/media2/exoplayer/external/extractor/TrackOutput;)V
    .locals 3
    .param p1, "flags"    # I
    .param p2, "timestampAdjuster"    # Landroidx/media2/exoplayer/external/util/TimestampAdjuster;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "sideloadedTrack"    # Landroidx/media2/exoplayer/external/extractor/mp4/Track;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "sideloadedDrmInitData"    # Landroidx/media2/exoplayer/external/drm/DrmInitData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "additionalEmsgTrackOutput"    # Landroidx/media2/exoplayer/external/extractor/TrackOutput;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media2/exoplayer/external/util/TimestampAdjuster;",
            "Landroidx/media2/exoplayer/external/extractor/mp4/Track;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;",
            "Landroidx/media2/exoplayer/external/extractor/TrackOutput;",
            ")V"
        }
    .end annotation

    .line 258
    .local p5, "closedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/Format;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    if-eqz p3, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    or-int/2addr v0, p1

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->flags:I

    .line 260
    iput-object p2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    .line 261
    iput-object p3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Landroidx/media2/exoplayer/external/extractor/mp4/Track;

    .line 262
    iput-object p4, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sideloadedDrmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    .line 263
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->closedCaptionFormats:Ljava/util/List;

    .line 264
    iput-object p6, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->additionalEmsgTrackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 265
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 266
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    sget-object v2, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 267
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 268
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 269
    new-array v0, v1, [B

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->scratchBytes:[B

    .line 270
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->scratchBytes:[B

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 271
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    .line 272
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    .line 273
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    .line 274
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    .line 275
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    .line 276
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->segmentIndexEarliestPresentationTimeUs:J

    .line 277
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    .line 278
    return-void
.end method

.method private enterReadingAtomHeaderState()V
    .locals 1

    .line 341
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 342
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    .line 343
    return-void
.end method

.method private getDefaultSampleValues(Landroid/util/SparseArray;I)Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;
    .locals 2
    .param p2, "trackId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;",
            ">;I)",
            "Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;"
        }
    .end annotation

    .line 546
    .local p1, "defaultSampleValuesArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 549
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;

    return-object v0

    .line 551
    :cond_0
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;

    return-object v0
.end method

.method private static getDrmInitDataFromAtoms(Ljava/util/List;)Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;",
            ">;)",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;"
        }
    .end annotation

    .line 1388
    .local p0, "leafChildren":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;>;"
    const/4 v0, 0x0

    .line 1389
    .local v0, "schemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 1390
    .local v1, "leafChildrenSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 1391
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    .line 1392
    .local v3, "child":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    iget v4, v3, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->type:I

    const v5, 0x70737368    # 3.013775E29f

    if-ne v4, v5, :cond_2

    .line 1393
    if-nez v0, :cond_0

    .line 1394
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    goto :goto_1

    .line 1393
    :cond_0
    nop

    .line 1396
    :goto_1
    iget-object v4, v3, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    .line 1397
    .local v4, "psshData":[B
    invoke-static {v4}, Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil;->parseUuid([B)Ljava/util/UUID;

    move-result-object v5

    .line 1398
    .local v5, "uuid":Ljava/util/UUID;
    if-nez v5, :cond_1

    .line 1399
    const-string v6, "FragmentedMp4Extractor"

    const-string v7, "Skipped pssh atom (failed to extract uuid)"

    invoke-static {v6, v7}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1401
    :cond_1
    new-instance v6, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    const-string/jumbo v7, "video/mp4"

    invoke-direct {v6, v5, v7, v4}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1392
    .end local v4    # "psshData":[B
    .end local v5    # "uuid":Ljava/util/UUID;
    :cond_2
    nop

    .line 1390
    .end local v3    # "child":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1405
    .end local v2    # "i":I
    :cond_3
    if-nez v0, :cond_4

    const/4 v2, 0x0

    goto :goto_3

    :cond_4
    new-instance v2, Landroidx/media2/exoplayer/external/drm/DrmInitData;

    invoke-direct {v2, v0}, Landroidx/media2/exoplayer/external/drm/DrmInitData;-><init>(Ljava/util/List;)V

    :goto_3
    return-object v2
.end method

.method private static getNextFragmentRun(Landroid/util/SparseArray;)Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;)",
            "Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;"
        }
    .end annotation

    .line 1367
    .local p0, "trackBundles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;>;"
    const/4 v0, 0x0

    .line 1368
    .local v0, "nextTrackBundle":Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    const-wide v1, 0x7fffffffffffffffL

    .line 1370
    .local v1, "nextTrackRunOffset":J
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 1371
    .local v3, "trackBundlesSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 1372
    invoke-virtual {p0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 1373
    .local v5, "trackBundle":Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    iget v6, v5, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    iget-object v7, v5, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;

    iget v7, v7, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->trunCount:I

    if-ne v6, v7, :cond_0

    goto :goto_1

    .line 1376
    :cond_0
    iget-object v6, v5, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;

    iget-object v6, v6, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->trunDataPosition:[J

    iget v7, v5, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    aget-wide v7, v6, v7

    .line 1377
    .local v7, "trunOffset":J
    cmp-long v6, v7, v1

    if-gez v6, :cond_1

    .line 1378
    move-object v0, v5

    .line 1379
    move-wide v1, v7

    goto :goto_1

    .line 1377
    :cond_1
    nop

    .line 1371
    .end local v5    # "trackBundle":Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .end local v7    # "trunOffset":J
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1383
    .end local v4    # "i":I
    :cond_2
    return-object v0
.end method

.method private static getTrackBundle(Landroid/util/SparseArray;I)Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .locals 2
    .param p1, "trackId"    # I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;I)",
            "Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;"
        }
    .end annotation

    .line 877
    .local p0, "trackBundles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;>;"
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 881
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    return-object v0

    .line 883
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    return-object v0
.end method

.method static final synthetic lambda$static$0$FragmentedMp4Extractor()[Landroidx/media2/exoplayer/external/extractor/Extractor;
    .locals 3

    .line 71
    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media2/exoplayer/external/extractor/Extractor;

    new-instance v1, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private maybeInitExtraTracks()V
    .locals 6

    .line 576
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    if-nez v0, :cond_3

    .line 577
    const/4 v0, 0x2

    new-array v0, v0, [Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 578
    const/4 v0, 0x0

    .line 579
    .local v0, "emsgTrackOutputCount":I
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->additionalEmsgTrackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    if-eqz v1, :cond_0

    .line 580
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "emsgTrackOutputCount":I
    .local v3, "emsgTrackOutputCount":I
    aput-object v1, v2, v0

    move v0, v3

    goto :goto_0

    .line 579
    .end local v3    # "emsgTrackOutputCount":I
    .restart local v0    # "emsgTrackOutputCount":I
    :cond_0
    nop

    .line 582
    :goto_0
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->flags:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 583
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "emsgTrackOutputCount":I
    .restart local v3    # "emsgTrackOutputCount":I
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    .line 584
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    invoke-interface {v4, v5, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->track(II)Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    move-result-object v2

    aput-object v2, v1, v0

    move v0, v3

    goto :goto_1

    .line 582
    .end local v3    # "emsgTrackOutputCount":I
    .restart local v0    # "emsgTrackOutputCount":I
    :cond_1
    nop

    .line 586
    :goto_1
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iput-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 588
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 589
    .local v4, "eventMessageTrackOutput":Landroidx/media2/exoplayer/external/extractor/TrackOutput;
    sget-object v5, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->EMSG_FORMAT:Landroidx/media2/exoplayer/external/Format;

    invoke-interface {v4, v5}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->format(Landroidx/media2/exoplayer/external/Format;)V

    .line 588
    .end local v4    # "eventMessageTrackOutput":Landroidx/media2/exoplayer/external/extractor/TrackOutput;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    goto :goto_3

    .line 576
    .end local v0    # "emsgTrackOutputCount":I
    :cond_3
    nop

    .line 592
    :goto_3
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->cea608TrackOutputs:[Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    if-nez v0, :cond_5

    .line 593
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->closedCaptionFormats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->cea608TrackOutputs:[Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 594
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->cea608TrackOutputs:[Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 595
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    const/4 v3, 0x3

    invoke-interface {v1, v2, v3}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->track(II)Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    move-result-object v1

    .line 596
    .local v1, "output":Landroidx/media2/exoplayer/external/extractor/TrackOutput;
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->closedCaptionFormats:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/Format;

    invoke-interface {v1, v2}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->format(Landroidx/media2/exoplayer/external/Format;)V

    .line 597
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->cea608TrackOutputs:[Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    aput-object v1, v2, v0

    .line 594
    .end local v1    # "output":Landroidx/media2/exoplayer/external/extractor/TrackOutput;
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    goto :goto_5

    .line 592
    .end local v0    # "i":I
    :cond_5
    nop

    .line 600
    :goto_5
    return-void
.end method

.method private onContainerAtomRead(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;)V
    .locals 2
    .param p1, "container"    # Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 465
    iget v0, p1, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->type:I

    const v1, 0x6d6f6f76

    if-ne v0, v1, :cond_0

    .line 466
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->onMoovContainerAtomRead(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_0

    .line 467
    :cond_0
    iget v0, p1, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->type:I

    const v1, 0x6d6f6f66

    if-ne v0, v1, :cond_1

    .line 468
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->onMoofContainerAtomRead(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_0

    .line 469
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 470
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->add(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_0

    .line 469
    :cond_2
    nop

    .line 472
    :goto_0
    return-void
.end method

.method private onEmsgLeafAtomRead(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V
    .locals 22
    .param p1, "atom"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 606
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    if-eqz v2, :cond_5

    array-length v2, v2

    if-nez v2, :cond_0

    goto/16 :goto_4

    .line 610
    :cond_0
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 611
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v10

    .line 612
    .local v10, "sampleSize":I
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    .line 613
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    .line 614
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v11

    .line 615
    .local v11, "timescale":J
    nop

    .line 616
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v3

    const-wide/32 v5, 0xf4240

    move-wide v7, v11

    invoke-static/range {v3 .. v8}, Landroidx/media2/exoplayer/external/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v13

    .line 620
    .local v13, "presentationTimeDeltaUs":J
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v15

    .line 621
    .local v15, "position":I
    iget-object v3, v1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    add-int/lit8 v4, v15, -0x4

    const/4 v5, 0x0

    aput-byte v5, v3, v4

    .line 622
    iget-object v3, v1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    add-int/lit8 v4, v15, -0x3

    aput-byte v5, v3, v4

    .line 623
    iget-object v3, v1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    add-int/lit8 v4, v15, -0x2

    aput-byte v5, v3, v4

    .line 624
    iget-object v3, v1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    add-int/lit8 v4, v15, -0x1

    aput-byte v5, v3, v4

    .line 627
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    array-length v4, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v7, v3, v6

    .line 628
    .local v7, "emsgTrackOutput":Landroidx/media2/exoplayer/external/extractor/TrackOutput;
    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 629
    invoke-interface {v7, v1, v10}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 627
    .end local v7    # "emsgTrackOutput":Landroidx/media2/exoplayer/external/extractor/TrackOutput;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 633
    :cond_1
    iget-wide v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->segmentIndexEarliestPresentationTimeUs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v6

    if-eqz v4, :cond_4

    .line 634
    add-long/2addr v2, v13

    .line 635
    .local v2, "sampleTimeUs":J
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    if-eqz v4, :cond_2

    .line 636
    invoke-virtual {v4, v2, v3}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    move-result-wide v2

    move-wide/from16 v16, v2

    goto :goto_1

    .line 635
    :cond_2
    move-wide/from16 v16, v2

    .line 638
    .end local v2    # "sampleTimeUs":J
    .local v16, "sampleTimeUs":J
    :goto_1
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    array-length v9, v2

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v9, :cond_3

    aget-object v18, v2, v8

    .line 639
    .local v18, "emsgTrackOutput":Landroidx/media2/exoplayer/external/extractor/TrackOutput;
    const/4 v6, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v3, v18

    move-wide/from16 v4, v16

    move v7, v10

    move/from16 v21, v8

    move/from16 v8, v19

    move/from16 v19, v9

    move-object/from16 v9, v20

    invoke-interface/range {v3 .. v9}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;)V

    .line 638
    .end local v18    # "emsgTrackOutput":Landroidx/media2/exoplayer/external/extractor/TrackOutput;
    add-int/lit8 v8, v21, 0x1

    move/from16 v9, v19

    goto :goto_2

    .line 642
    .end local v16    # "sampleTimeUs":J
    :cond_3
    goto :goto_3

    .line 644
    :cond_4
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    new-instance v3, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;

    invoke-direct {v3, v13, v14, v10}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;-><init>(JI)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 646
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    add-int/2addr v2, v10

    iput v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    .line 648
    :goto_3
    return-void

    .line 606
    .end local v10    # "sampleSize":I
    .end local v11    # "timescale":J
    .end local v13    # "presentationTimeDeltaUs":J
    .end local v15    # "position":I
    :cond_5
    :goto_4
    nop

    .line 607
    return-void
.end method

.method private onLeafAtomRead(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;J)V
    .locals 3
    .param p1, "leaf"    # Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    .param p2, "inputPosition"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 452
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->add(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;)V

    goto :goto_1

    .line 454
    :cond_0
    iget v0, p1, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->type:I

    const v1, 0x73696478

    if-ne v0, v1, :cond_1

    .line 455
    iget-object v0, p1, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-static {v0, p2, p3}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->parseSidx(Landroidx/media2/exoplayer/external/util/ParsableByteArray;J)Landroid/util/Pair;

    move-result-object v0

    .line 456
    .local v0, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Landroidx/media2/exoplayer/external/extractor/ChunkIndex;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->segmentIndexEarliestPresentationTimeUs:J

    .line 457
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroidx/media2/exoplayer/external/extractor/SeekMap;

    invoke-interface {v1, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->seekMap(Landroidx/media2/exoplayer/external/extractor/SeekMap;)V

    .line 458
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    .end local v0    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Landroidx/media2/exoplayer/external/extractor/ChunkIndex;>;"
    goto :goto_0

    .line 459
    :cond_1
    iget v0, p1, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->type:I

    const v1, 0x656d7367

    if-ne v0, v1, :cond_2

    .line 460
    iget-object v0, p1, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->onEmsgLeafAtomRead(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V

    goto :goto_1

    .line 459
    :cond_2
    :goto_0
    nop

    .line 462
    :goto_1
    return-void
.end method

.method private onMoofContainerAtomRead(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;)V
    .locals 8
    .param p1, "moof"    # Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 555
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->flags:I

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->scratchBytes:[B

    invoke-static {p1, v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->parseMoof(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;Landroid/util/SparseArray;I[B)V

    .line 557
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sideloadedDrmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 558
    :cond_0
    iget-object v0, p1, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->getDrmInitDataFromAtoms(Ljava/util/List;)Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-result-object v0

    :goto_0
    nop

    .line 559
    .local v0, "drmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    if-eqz v0, :cond_2

    .line 560
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 561
    .local v1, "trackCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 562
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-virtual {v3, v0}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->updateDrmInitData(Landroidx/media2/exoplayer/external/drm/DrmInitData;)V

    .line 561
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    goto :goto_2

    .line 559
    .end local v1    # "trackCount":I
    .end local v2    # "i":I
    :cond_2
    nop

    .line 566
    :goto_2
    iget-wide v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_4

    .line 567
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 568
    .restart local v1    # "trackCount":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v1, :cond_3

    .line 569
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-wide v6, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    invoke-virtual {v5, v6, v7}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->seek(J)V

    .line 568
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 571
    .end local v2    # "i":I
    :cond_3
    iput-wide v3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    goto :goto_4

    .line 566
    .end local v1    # "trackCount":I
    :cond_4
    nop

    .line 573
    :goto_4
    return-void
.end method

.method private onMoovContainerAtomRead(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;)V
    .locals 21
    .param p1, "moov"    # Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 475
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Landroidx/media2/exoplayer/external/extractor/mp4/Track;

    const/4 v4, 0x1

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v5, "Unexpected moov box."

    invoke-static {v2, v5}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 477
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sideloadedDrmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    if-eqz v2, :cond_1

    move-object v9, v2

    goto :goto_1

    .line 478
    :cond_1
    iget-object v2, v1, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->getDrmInitDataFromAtoms(Ljava/util/List;)Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-result-object v2

    move-object v9, v2

    :goto_1
    nop

    .line 481
    .local v9, "drmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    const v2, 0x6d766578

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;

    move-result-object v2

    .line 482
    .local v2, "mvex":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    move-object v12, v5

    .line 483
    .local v12, "defaultSampleValuesArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;>;"
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 484
    .local v5, "duration":J
    iget-object v7, v2, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    .line 485
    .local v13, "mvexChildrenSize":I
    const/4 v7, 0x0

    move-wide v14, v5

    .end local v5    # "duration":J
    .local v7, "i":I
    .local v14, "duration":J
    :goto_2
    if-ge v7, v13, :cond_4

    .line 486
    iget-object v5, v2, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    .line 487
    .local v5, "atom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    iget v6, v5, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->type:I

    const v8, 0x74726578

    if-ne v6, v8, :cond_2

    .line 488
    iget-object v6, v5, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-static {v6}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->parseTrex(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v6

    .line 489
    .local v6, "trexData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;>;"
    iget-object v8, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v10, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;

    invoke-virtual {v12, v8, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .end local v6    # "trexData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;>;"
    goto :goto_3

    .line 490
    :cond_2
    iget v6, v5, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->type:I

    const v8, 0x6d656864

    if-ne v6, v8, :cond_3

    .line 491
    iget-object v6, v5, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-static {v6}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->parseMehd(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)J

    move-result-wide v14

    goto :goto_4

    .line 490
    :cond_3
    :goto_3
    nop

    .line 485
    .end local v5    # "atom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 496
    .end local v7    # "i":I
    :cond_4
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    move-object v11, v5

    .line 497
    .local v11, "tracks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media2/exoplayer/external/extractor/mp4/Track;>;"
    iget-object v5, v1, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    .line 498
    .local v10, "moovContainerChildrenSize":I
    const/4 v5, 0x0

    move v7, v5

    .restart local v7    # "i":I
    :goto_5
    if-ge v7, v10, :cond_8

    .line 499
    iget-object v5, v1, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;

    .line 500
    .local v8, "atom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;
    iget v5, v8, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->type:I

    const v6, 0x7472616b

    if-ne v5, v6, :cond_7

    .line 501
    const v5, 0x6d766864

    .line 505
    invoke-virtual {v1, v5}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    move-result-object v6

    iget v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->flags:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_5

    const/16 v16, 0x1

    goto :goto_6

    :cond_5
    const/16 v16, 0x0

    :goto_6
    const/16 v17, 0x0

    .line 503
    move-object v5, v8

    move/from16 v18, v7

    move-object/from16 v19, v8

    .end local v7    # "i":I
    .end local v8    # "atom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;
    .local v18, "i":I
    .local v19, "atom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;
    move-wide v7, v14

    move/from16 v20, v10

    .end local v10    # "moovContainerChildrenSize":I
    .local v20, "moovContainerChildrenSize":I
    move/from16 v10, v16

    move-object v3, v11

    .end local v11    # "tracks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media2/exoplayer/external/extractor/mp4/Track;>;"
    .local v3, "tracks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media2/exoplayer/external/extractor/mp4/Track;>;"
    move/from16 v11, v17

    invoke-static/range {v5 .. v11}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->parseTrak(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;JLandroidx/media2/exoplayer/external/drm/DrmInitData;ZZ)Landroidx/media2/exoplayer/external/extractor/mp4/Track;

    move-result-object v5

    .line 502
    invoke-virtual {v0, v5}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->modifyTrack(Landroidx/media2/exoplayer/external/extractor/mp4/Track;)Landroidx/media2/exoplayer/external/extractor/mp4/Track;

    move-result-object v5

    .line 510
    .local v5, "track":Landroidx/media2/exoplayer/external/extractor/mp4/Track;
    if-eqz v5, :cond_6

    .line 511
    iget v6, v5, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->id:I

    invoke-virtual {v3, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_7

    .line 510
    :cond_6
    goto :goto_7

    .line 500
    .end local v3    # "tracks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media2/exoplayer/external/extractor/mp4/Track;>;"
    .end local v5    # "track":Landroidx/media2/exoplayer/external/extractor/mp4/Track;
    .end local v18    # "i":I
    .end local v19    # "atom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;
    .end local v20    # "moovContainerChildrenSize":I
    .restart local v7    # "i":I
    .restart local v8    # "atom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;
    .restart local v10    # "moovContainerChildrenSize":I
    .restart local v11    # "tracks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media2/exoplayer/external/extractor/mp4/Track;>;"
    :cond_7
    move/from16 v18, v7

    move-object/from16 v19, v8

    move/from16 v20, v10

    move-object v3, v11

    .line 498
    .end local v7    # "i":I
    .end local v8    # "atom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;
    .end local v10    # "moovContainerChildrenSize":I
    .end local v11    # "tracks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media2/exoplayer/external/extractor/mp4/Track;>;"
    .restart local v3    # "tracks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media2/exoplayer/external/extractor/mp4/Track;>;"
    .restart local v18    # "i":I
    .restart local v20    # "moovContainerChildrenSize":I
    :goto_7
    add-int/lit8 v7, v18, 0x1

    move-object v11, v3

    move/from16 v10, v20

    goto :goto_5

    .end local v3    # "tracks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media2/exoplayer/external/extractor/mp4/Track;>;"
    .end local v18    # "i":I
    .end local v20    # "moovContainerChildrenSize":I
    .restart local v7    # "i":I
    .restart local v10    # "moovContainerChildrenSize":I
    .restart local v11    # "tracks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media2/exoplayer/external/extractor/mp4/Track;>;"
    :cond_8
    move/from16 v18, v7

    move/from16 v20, v10

    move-object v3, v11

    .line 516
    .end local v7    # "i":I
    .end local v10    # "moovContainerChildrenSize":I
    .end local v11    # "tracks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media2/exoplayer/external/extractor/mp4/Track;>;"
    .restart local v3    # "tracks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media2/exoplayer/external/extractor/mp4/Track;>;"
    .restart local v20    # "moovContainerChildrenSize":I
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 517
    .local v5, "trackCount":I
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-nez v6, :cond_a

    .line 519
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_8
    if-ge v4, v5, :cond_9

    .line 520
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media2/exoplayer/external/extractor/mp4/Track;

    .line 521
    .local v6, "track":Landroidx/media2/exoplayer/external/extractor/mp4/Track;
    new-instance v7, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    iget v10, v6, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->type:I

    invoke-interface {v8, v4, v10}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->track(II)Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    move-result-object v8

    invoke-direct {v7, v8}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;-><init>(Landroidx/media2/exoplayer/external/extractor/TrackOutput;)V

    .line 522
    .local v7, "trackBundle":Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    iget v8, v6, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->id:I

    invoke-direct {v0, v12, v8}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->getDefaultSampleValues(Landroid/util/SparseArray;I)Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->init(Landroidx/media2/exoplayer/external/extractor/mp4/Track;Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;)V

    .line 523
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    iget v10, v6, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->id:I

    invoke-virtual {v8, v10, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 524
    iget-wide v10, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    move-object v8, v2

    .end local v2    # "mvex":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;
    .local v8, "mvex":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;
    iget-wide v1, v6, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->durationUs:J

    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    .line 519
    .end local v6    # "track":Landroidx/media2/exoplayer/external/extractor/mp4/Track;
    .end local v7    # "trackBundle":Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    add-int/lit8 v4, v4, 0x1

    move-object v2, v8

    move-object/from16 v1, p1

    goto :goto_8

    .end local v8    # "mvex":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;
    .restart local v2    # "mvex":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;
    :cond_9
    move-object v8, v2

    .line 526
    .end local v2    # "mvex":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;
    .end local v4    # "i":I
    .restart local v8    # "mvex":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->maybeInitExtraTracks()V

    .line 527
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->endTracks()V

    goto :goto_b

    .line 529
    .end local v8    # "mvex":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;
    .restart local v2    # "mvex":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;
    :cond_a
    move-object v8, v2

    .end local v2    # "mvex":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;
    .restart local v8    # "mvex":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ne v1, v5, :cond_b

    const/16 v16, 0x1

    goto :goto_9

    :cond_b
    const/16 v16, 0x0

    :goto_9
    invoke-static/range {v16 .. v16}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 530
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v5, :cond_c

    .line 531
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/extractor/mp4/Track;

    .line 532
    .local v2, "track":Landroidx/media2/exoplayer/external/extractor/mp4/Track;
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    iget v6, v2, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->id:I

    .line 533
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v6, v2, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->id:I

    .line 534
    invoke-direct {v0, v12, v6}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->getDefaultSampleValues(Landroid/util/SparseArray;I)Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->init(Landroidx/media2/exoplayer/external/extractor/mp4/Track;Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;)V

    .line 530
    .end local v2    # "track":Landroidx/media2/exoplayer/external/extractor/mp4/Track;
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 537
    .end local v1    # "i":I
    :cond_c
    :goto_b
    return-void
.end method

.method private outputPendingMetadataSamples(J)V
    .locals 15
    .param p1, "sampleTimeUs"    # J

    move-object v0, p0

    .line 1344
    :goto_0
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1345
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;

    .line 1346
    .local v1, "sampleInfo":Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    iget v3, v1, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->size:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    .line 1347
    iget-wide v2, v1, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->presentationTimeDeltaUs:J

    add-long v2, p1, v2

    .line 1348
    .local v2, "metadataTimeUs":J
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    if-eqz v4, :cond_0

    .line 1349
    invoke-virtual {v4, v2, v3}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    move-result-wide v2

    goto :goto_1

    .line 1348
    :cond_0
    nop

    .line 1351
    :goto_1
    iget-object v11, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    array-length v12, v11

    const/4 v4, 0x0

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v12, :cond_1

    aget-object v14, v11, v13

    .line 1352
    .local v14, "emsgTrackOutput":Landroidx/media2/exoplayer/external/extractor/TrackOutput;
    const/4 v7, 0x1

    iget v8, v1, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->size:I

    iget v9, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    const/4 v10, 0x0

    move-object v4, v14

    move-wide v5, v2

    invoke-interface/range {v4 .. v10}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;)V

    .line 1351
    .end local v14    # "emsgTrackOutput":Landroidx/media2/exoplayer/external/extractor/TrackOutput;
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 1359
    .end local v1    # "sampleInfo":Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;
    .end local v2    # "metadataTimeUs":J
    :cond_1
    goto :goto_0

    .line 1360
    :cond_2
    return-void
.end method

.method private static parseMehd(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)J
    .locals 4
    .param p0, "mehd"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 669
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 670
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 671
    .local v0, "fullAtom":I
    invoke-static {v0}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    .line 672
    .local v1, "version":I
    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v2

    :goto_0
    return-wide v2
.end method

.method private static parseMoof(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;Landroid/util/SparseArray;I[B)V
    .locals 5
    .param p0, "moof"    # Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;
    .param p2, "flags"    # I
    .param p3, "extendedTypeScratch"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;",
            "Landroid/util/SparseArray<",
            "Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;I[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 677
    .local p1, "trackBundleArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 678
    .local v0, "moofContainerChildrenSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 679
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;

    .line 681
    .local v2, "child":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;
    iget v3, v2, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->type:I

    const v4, 0x74726166

    if-ne v3, v4, :cond_0

    .line 682
    invoke-static {v2, p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->parseTraf(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;Landroid/util/SparseArray;I[B)V

    goto :goto_1

    .line 681
    :cond_0
    nop

    .line 678
    .end local v2    # "child":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 685
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private static parseSaio(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;)V
    .locals 8
    .param p0, "saio"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p1, "out"    # Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 816
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 817
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 818
    .local v1, "fullAtom":I
    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v2

    .line 819
    .local v2, "flags":I
    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 820
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    .line 819
    :cond_0
    nop

    .line 823
    :goto_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    .line 824
    .local v0, "entryCount":I
    if-ne v0, v4, :cond_2

    .line 829
    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v3

    .line 830
    .local v3, "version":I
    iget-wide v4, p1, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    .line 831
    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v6

    :goto_1
    add-long/2addr v4, v6

    iput-wide v4, p1, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    .line 832
    return-void

    .line 826
    .end local v3    # "version":I
    :cond_2
    new-instance v3, Landroidx/media2/exoplayer/external/ParserException;

    const/16 v4, 0x28

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unexpected saio entry count: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static parseSaiz(Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;Landroidx/media2/exoplayer/external/util/ParsableByteArray;Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;)V
    .locals 12
    .param p0, "encryptionBox"    # Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;
    .param p1, "saiz"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p2, "out"    # Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 779
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;->perSampleIvSize:I

    .line 780
    .local v0, "vectorSize":I
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 781
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 782
    .local v2, "fullAtom":I
    invoke-static {v2}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v3

    .line 783
    .local v3, "flags":I
    and-int/lit8 v4, v3, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 784
    invoke-virtual {p1, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    .line 783
    :cond_0
    nop

    .line 786
    :goto_0
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 788
    .local v1, "defaultSampleInfoSize":I
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    .line 789
    .local v4, "sampleCount":I
    iget v6, p2, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleCount:I

    if-ne v4, v6, :cond_5

    .line 793
    const/4 v6, 0x0

    .line 794
    .local v6, "totalSize":I
    const/4 v7, 0x0

    if-nez v1, :cond_3

    .line 795
    iget-object v8, p2, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    .line 796
    .local v8, "sampleHasSubsampleEncryptionTable":[Z
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v4, :cond_2

    .line 797
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    .line 798
    .local v10, "sampleInfoSize":I
    add-int/2addr v6, v10

    .line 799
    if-le v10, v0, :cond_1

    const/4 v11, 0x1

    goto :goto_2

    :cond_1
    const/4 v11, 0x0

    :goto_2
    aput-boolean v11, v8, v9

    .line 796
    .end local v10    # "sampleInfoSize":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 801
    .end local v8    # "sampleHasSubsampleEncryptionTable":[Z
    .end local v9    # "i":I
    :cond_2
    goto :goto_4

    .line 802
    :cond_3
    if-le v1, v0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    .line 803
    .local v5, "subsampleEncryption":Z
    :goto_3
    mul-int v8, v1, v4

    add-int/2addr v6, v8

    .line 804
    iget-object v8, p2, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    invoke-static {v8, v7, v4, v5}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 806
    .end local v5    # "subsampleEncryption":Z
    :goto_4
    invoke-virtual {p2, v6}, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->initEncryptionData(I)V

    .line 807
    return-void

    .line 790
    .end local v6    # "totalSize":I
    :cond_5
    new-instance v5, Landroidx/media2/exoplayer/external/ParserException;

    iget v6, p2, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleCount:I

    const/16 v7, 0x29

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Length mismatch: "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v5

    return-void
.end method

.method private static parseSenc(Landroidx/media2/exoplayer/external/util/ParsableByteArray;ILandroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;)V
    .locals 8
    .param p0, "senc"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p1, "offset"    # I
    .param p2, "out"    # Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 1011
    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1012
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 1013
    .local v0, "fullAtom":I
    invoke-static {v0}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v1

    .line 1015
    .local v1, "flags":I
    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_2

    .line 1020
    and-int/lit8 v2, v1, 0x2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1021
    .local v2, "subsampleEncryption":Z
    :goto_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    .line 1022
    .local v4, "sampleCount":I
    iget v5, p2, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleCount:I

    if-ne v4, v5, :cond_1

    .line 1026
    iget-object v5, p2, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    invoke-static {v5, v3, v4, v2}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 1027
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    invoke-virtual {p2, v3}, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->initEncryptionData(I)V

    .line 1028
    invoke-virtual {p2, p0}, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->fillEncryptionData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V

    .line 1029
    return-void

    .line 1023
    :cond_1
    new-instance v3, Landroidx/media2/exoplayer/external/ParserException;

    iget v5, p2, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleCount:I

    const/16 v6, 0x29

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Length mismatch: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1017
    .end local v2    # "subsampleEncryption":Z
    .end local v4    # "sampleCount":I
    :cond_2
    new-instance v2, Landroidx/media2/exoplayer/external/ParserException;

    const-string v3, "Overriding TrackEncryptionBox parameters is unsupported."

    invoke-direct {v2, v3}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static parseSenc(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;)V
    .locals 1
    .param p0, "senc"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p1, "out"    # Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 1006
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Landroidx/media2/exoplayer/external/util/ParsableByteArray;ILandroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;)V

    .line 1007
    return-void
.end method

.method private static parseSgpd(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Landroidx/media2/exoplayer/external/util/ParsableByteArray;Ljava/lang/String;Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;)V
    .locals 22
    .param p0, "sbgp"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p1, "sgpd"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p2, "schemeType"    # Ljava/lang/String;
    .param p3, "out"    # Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 1033
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1034
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 1035
    .local v4, "sbgpFullAtom":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v5

    const v6, 0x73656967

    if-eq v5, v6, :cond_0

    .line 1037
    return-void

    .line 1039
    :cond_0
    invoke-static {v4}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v5

    const/4 v7, 0x4

    const/4 v8, 0x1

    if-ne v5, v8, :cond_1

    .line 1040
    invoke-virtual {v0, v7}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    .line 1039
    :cond_1
    nop

    .line 1042
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v5

    if-ne v5, v8, :cond_a

    .line 1046
    invoke-virtual {v1, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1047
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 1048
    .local v3, "sgpdFullAtom":I
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v5

    if-eq v5, v6, :cond_2

    .line 1050
    return-void

    .line 1052
    :cond_2
    invoke-static {v3}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v5

    .line 1053
    .local v5, "sgpdVersion":I
    if-ne v5, v8, :cond_4

    .line 1054
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v6, v9, v11

    if-eqz v6, :cond_3

    goto :goto_1

    .line 1055
    :cond_3
    new-instance v6, Landroidx/media2/exoplayer/external/ParserException;

    const-string v7, "Variable length description in sgpd found (unsupported)"

    invoke-direct {v6, v7}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1057
    :cond_4
    const/4 v6, 0x2

    if-lt v5, v6, :cond_5

    .line 1058
    invoke-virtual {v1, v7}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_1

    .line 1057
    :cond_5
    nop

    .line 1060
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v9

    const-wide/16 v11, 0x1

    cmp-long v6, v9, v11

    if-nez v6, :cond_9

    .line 1064
    invoke-virtual {v1, v8}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 1065
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    .line 1066
    .local v6, "patternByte":I
    and-int/lit16 v9, v6, 0xf0

    shr-int/lit8 v7, v9, 0x4

    .line 1067
    .local v7, "cryptByteBlock":I
    and-int/lit8 v9, v6, 0xf

    .line 1068
    .local v9, "skipByteBlock":I
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    const/4 v11, 0x0

    if-ne v10, v8, :cond_6

    const/4 v10, 0x1

    goto :goto_2

    :cond_6
    const/4 v10, 0x0

    :goto_2
    move/from16 v18, v10

    .line 1069
    .local v18, "isProtected":Z
    if-nez v18, :cond_7

    .line 1070
    return-void

    .line 1072
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v19

    .line 1073
    .local v19, "perSampleIvSize":I
    const/16 v10, 0x10

    new-array v15, v10, [B

    .line 1074
    .local v15, "keyId":[B
    array-length v10, v15

    invoke-virtual {v1, v15, v11, v10}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 1075
    const/4 v10, 0x0

    .line 1076
    .local v10, "constantIv":[B
    if-nez v19, :cond_8

    .line 1077
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v12

    .line 1078
    .local v12, "constantIvSize":I
    new-array v10, v12, [B

    .line 1079
    invoke-virtual {v1, v10, v11, v12}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    move-object/from16 v20, v10

    goto :goto_3

    .line 1076
    .end local v12    # "constantIvSize":I
    :cond_8
    move-object/from16 v20, v10

    .line 1081
    .end local v10    # "constantIv":[B
    .local v20, "constantIv":[B
    :goto_3
    iput-boolean v8, v2, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    .line 1082
    new-instance v8, Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;

    move-object v10, v8

    move/from16 v11, v18

    move-object/from16 v12, p2

    move/from16 v13, v19

    move-object v14, v15

    move-object/from16 v21, v15

    .end local v15    # "keyId":[B
    .local v21, "keyId":[B
    move v15, v7

    move/from16 v16, v9

    move-object/from16 v17, v20

    invoke-direct/range {v10 .. v17}, Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;-><init>(ZLjava/lang/String;I[BII[B)V

    iput-object v8, v2, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->trackEncryptionBox:Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;

    .line 1084
    return-void

    .line 1061
    .end local v6    # "patternByte":I
    .end local v7    # "cryptByteBlock":I
    .end local v9    # "skipByteBlock":I
    .end local v18    # "isProtected":Z
    .end local v19    # "perSampleIvSize":I
    .end local v20    # "constantIv":[B
    .end local v21    # "keyId":[B
    :cond_9
    new-instance v6, Landroidx/media2/exoplayer/external/ParserException;

    const-string v7, "Entry count in sgpd != 1 (unsupported)."

    invoke-direct {v6, v7}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1043
    .end local v3    # "sgpdFullAtom":I
    .end local v5    # "sgpdVersion":I
    :cond_a
    new-instance v3, Landroidx/media2/exoplayer/external/ParserException;

    const-string v5, "Entry count in sbgp != 1 (unsupported)."

    invoke-direct {v3, v5}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static parseSidx(Landroidx/media2/exoplayer/external/util/ParsableByteArray;J)Landroid/util/Pair;
    .locals 33
    .param p0, "atom"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p1, "inputPosition"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/util/ParsableByteArray;",
            "J)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Landroidx/media2/exoplayer/external/extractor/ChunkIndex;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 1096
    move-object/from16 v0, p0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1097
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1098
    .local v1, "fullAtom":I
    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v2

    .line 1100
    .local v2, "version":I
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 1101
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v10

    .line 1103
    .local v10, "timescale":J
    move-wide/from16 v4, p1

    .line 1104
    .local v4, "offset":J
    if-nez v2, :cond_0

    .line 1105
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    .line 1106
    .local v6, "earliestPresentationTime":J
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    add-long/2addr v4, v8

    move-wide v14, v4

    move-wide v12, v6

    goto :goto_0

    .line 1108
    .end local v6    # "earliestPresentationTime":J
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v6

    .line 1109
    .restart local v6    # "earliestPresentationTime":J
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v8

    add-long/2addr v4, v8

    move-wide v14, v4

    move-wide v12, v6

    .line 1111
    .end local v4    # "offset":J
    .end local v6    # "earliestPresentationTime":J
    .local v12, "earliestPresentationTime":J
    .local v14, "offset":J
    :goto_0
    const-wide/32 v6, 0xf4240

    move-wide v4, v12

    move-wide v8, v10

    invoke-static/range {v4 .. v9}, Landroidx/media2/exoplayer/external/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v16

    .line 1114
    .local v16, "earliestPresentationTimeUs":J
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 1116
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    .line 1117
    .local v8, "referenceCount":I
    new-array v9, v8, [I

    .line 1118
    .local v9, "sizes":[I
    new-array v6, v8, [J

    .line 1119
    .local v6, "offsets":[J
    new-array v7, v8, [J

    .line 1120
    .local v7, "durationsUs":[J
    new-array v4, v8, [J

    .line 1122
    .local v4, "timesUs":[J
    move-wide/from16 v18, v12

    .line 1123
    .local v18, "time":J
    move-wide/from16 v20, v16

    .line 1124
    .local v20, "timeUs":J
    const/4 v5, 0x0

    move-wide/from16 v22, v20

    move-wide/from16 v20, v18

    move-wide/from16 v18, v14

    move v14, v5

    .local v14, "i":I
    .local v18, "offset":J
    .local v20, "time":J
    .local v22, "timeUs":J
    :goto_1
    if-ge v14, v8, :cond_2

    .line 1125
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v15

    .line 1127
    .local v15, "firstInt":I
    const/high16 v5, -0x80000000

    and-int v24, v15, v5

    .line 1128
    .local v24, "type":I
    if-nez v24, :cond_1

    .line 1131
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v25

    .line 1133
    .local v25, "referenceDuration":J
    const v5, 0x7fffffff

    and-int/2addr v5, v15

    aput v5, v9, v14

    .line 1134
    aput-wide v18, v6, v14

    .line 1138
    aput-wide v22, v4, v14

    .line 1139
    add-long v20, v20, v25

    .line 1140
    const-wide/32 v27, 0xf4240

    move-object v3, v4

    .end local v4    # "timesUs":[J
    .local v3, "timesUs":[J
    move-wide/from16 v4, v20

    move/from16 v29, v1

    move/from16 v30, v2

    move-object v1, v6

    move-object v2, v7

    .end local v6    # "offsets":[J
    .end local v7    # "durationsUs":[J
    .local v1, "offsets":[J
    .local v2, "durationsUs":[J
    .local v29, "fullAtom":I
    .local v30, "version":I
    move-wide/from16 v6, v27

    move/from16 v27, v8

    move-wide/from16 v31, v12

    move-object v12, v9

    .end local v8    # "referenceCount":I
    .end local v9    # "sizes":[I
    .local v12, "sizes":[I
    .local v27, "referenceCount":I
    .local v31, "earliestPresentationTime":J
    move-wide v8, v10

    invoke-static/range {v4 .. v9}, Landroidx/media2/exoplayer/external/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v22

    .line 1141
    aget-wide v4, v3, v14

    sub-long v4, v22, v4

    aput-wide v4, v2, v14

    .line 1143
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 1144
    aget v5, v12, v14

    int-to-long v5, v5

    add-long v18, v18, v5

    .line 1124
    .end local v15    # "firstInt":I
    .end local v24    # "type":I
    .end local v25    # "referenceDuration":J
    add-int/lit8 v14, v14, 0x1

    move-object v6, v1

    move-object v7, v2

    move-object v4, v3

    move-object v9, v12

    move/from16 v8, v27

    move/from16 v1, v29

    move/from16 v2, v30

    move-wide/from16 v12, v31

    const/4 v3, 0x4

    goto :goto_1

    .line 1129
    .end local v3    # "timesUs":[J
    .end local v27    # "referenceCount":I
    .end local v29    # "fullAtom":I
    .end local v30    # "version":I
    .end local v31    # "earliestPresentationTime":J
    .local v1, "fullAtom":I
    .local v2, "version":I
    .restart local v4    # "timesUs":[J
    .restart local v6    # "offsets":[J
    .restart local v7    # "durationsUs":[J
    .restart local v8    # "referenceCount":I
    .restart local v9    # "sizes":[I
    .local v12, "earliestPresentationTime":J
    .restart local v15    # "firstInt":I
    .restart local v24    # "type":I
    :cond_1
    move/from16 v29, v1

    move/from16 v30, v2

    move-object v3, v4

    move-object v1, v6

    move-object v2, v7

    move/from16 v27, v8

    move-wide/from16 v31, v12

    move-object v12, v9

    .end local v4    # "timesUs":[J
    .end local v6    # "offsets":[J
    .end local v7    # "durationsUs":[J
    .end local v8    # "referenceCount":I
    .end local v9    # "sizes":[I
    .local v1, "offsets":[J
    .local v2, "durationsUs":[J
    .restart local v3    # "timesUs":[J
    .local v12, "sizes":[I
    .restart local v27    # "referenceCount":I
    .restart local v29    # "fullAtom":I
    .restart local v30    # "version":I
    .restart local v31    # "earliestPresentationTime":J
    new-instance v4, Landroidx/media2/exoplayer/external/ParserException;

    const-string v5, "Unhandled indirect reference"

    invoke-direct {v4, v5}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1124
    .end local v3    # "timesUs":[J
    .end local v15    # "firstInt":I
    .end local v24    # "type":I
    .end local v27    # "referenceCount":I
    .end local v29    # "fullAtom":I
    .end local v30    # "version":I
    .end local v31    # "earliestPresentationTime":J
    .local v1, "fullAtom":I
    .local v2, "version":I
    .restart local v4    # "timesUs":[J
    .restart local v6    # "offsets":[J
    .restart local v7    # "durationsUs":[J
    .restart local v8    # "referenceCount":I
    .restart local v9    # "sizes":[I
    .local v12, "earliestPresentationTime":J
    :cond_2
    move/from16 v29, v1

    move/from16 v30, v2

    move-object v3, v4

    move-object v1, v6

    move-object v2, v7

    move/from16 v27, v8

    move-wide/from16 v31, v12

    move-object v12, v9

    .line 1147
    .end local v4    # "timesUs":[J
    .end local v6    # "offsets":[J
    .end local v7    # "durationsUs":[J
    .end local v8    # "referenceCount":I
    .end local v9    # "sizes":[I
    .end local v14    # "i":I
    .local v1, "offsets":[J
    .local v2, "durationsUs":[J
    .restart local v3    # "timesUs":[J
    .local v12, "sizes":[I
    .restart local v27    # "referenceCount":I
    .restart local v29    # "fullAtom":I
    .restart local v30    # "version":I
    .restart local v31    # "earliestPresentationTime":J
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Landroidx/media2/exoplayer/external/extractor/ChunkIndex;

    invoke-direct {v5, v12, v1, v2, v3}, Landroidx/media2/exoplayer/external/extractor/ChunkIndex;-><init>([I[J[J[J)V

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    return-object v4
.end method

.method private static parseTfdt(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)J
    .locals 4
    .param p0, "tfdt"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 893
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 894
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 895
    .local v0, "fullAtom":I
    invoke-static {v0}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    .line 896
    .local v1, "version":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    :goto_0
    return-wide v2
.end method

.method private static parseTfhd(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Landroid/util/SparseArray;)Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .locals 11
    .param p0, "tfhd"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/util/ParsableByteArray;",
            "Landroid/util/SparseArray<",
            "Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;)",
            "Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;"
        }
    .end annotation

    .line 846
    .local p1, "trackBundles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;>;"
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 847
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 848
    .local v0, "fullAtom":I
    invoke-static {v0}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v1

    .line 849
    .local v1, "atomFlags":I
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 850
    .local v2, "trackId":I
    invoke-static {p1, v2}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->getTrackBundle(Landroid/util/SparseArray;I)Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-result-object v3

    .line 851
    .local v3, "trackBundle":Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    if-nez v3, :cond_0

    .line 852
    const/4 v4, 0x0

    return-object v4

    .line 854
    :cond_0
    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_1

    .line 855
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v4

    .line 856
    .local v4, "baseDataPosition":J
    iget-object v6, v3, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;

    iput-wide v4, v6, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->dataPosition:J

    .line 857
    iget-object v6, v3, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;

    iput-wide v4, v6, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    goto :goto_0

    .line 854
    .end local v4    # "baseDataPosition":J
    :cond_1
    nop

    .line 860
    :goto_0
    iget-object v4, v3, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultSampleValues:Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;

    .line 862
    .local v4, "defaultSampleValues":Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;
    and-int/lit8 v5, v1, 0x2

    if-eqz v5, :cond_2

    .line 863
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_2
    iget v5, v4, Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    .line 864
    .local v5, "defaultSampleDescriptionIndex":I
    :goto_1
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    .line 865
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v6

    goto :goto_2

    :cond_3
    iget v6, v4, Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;->duration:I

    .line 866
    .local v6, "defaultSampleDuration":I
    :goto_2
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    .line 867
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v7

    goto :goto_3

    :cond_4
    iget v7, v4, Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;->size:I

    .line 868
    .local v7, "defaultSampleSize":I
    :goto_3
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    .line 869
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v8

    goto :goto_4

    :cond_5
    iget v8, v4, Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;->flags:I

    .line 870
    .local v8, "defaultSampleFlags":I
    :goto_4
    iget-object v9, v3, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;

    new-instance v10, Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;

    invoke-direct {v10, v5, v6, v7, v8}, Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    iput-object v10, v9, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->header:Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;

    .line 872
    return-object v3
.end method

.method private static parseTraf(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;Landroid/util/SparseArray;I[B)V
    .locals 18
    .param p0, "traf"    # Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;
    .param p2, "flags"    # I
    .param p3, "extendedTypeScratch"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;",
            "Landroid/util/SparseArray<",
            "Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;I[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 692
    .local p1, "trackBundleArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;>;"
    move-object/from16 v0, p0

    move/from16 v1, p2

    const v2, 0x74666864

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    .line 693
    .local v2, "tfhd":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    iget-object v3, v2, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    move-object/from16 v4, p1

    invoke-static {v3, v4}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->parseTfhd(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Landroid/util/SparseArray;)Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-result-object v3

    .line 694
    .local v3, "trackBundle":Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    if-nez v3, :cond_0

    .line 695
    return-void

    .line 698
    :cond_0
    iget-object v5, v3, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;

    .line 699
    .local v5, "fragment":Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;
    iget-wide v6, v5, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    .line 700
    .local v6, "decodeTime":J
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->reset()V

    .line 702
    const v8, 0x74666474

    invoke-virtual {v0, v8}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    move-result-object v9

    .line 703
    .local v9, "tfdtAtom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    if-eqz v9, :cond_1

    and-int/lit8 v10, v1, 0x2

    if-nez v10, :cond_1

    .line 704
    invoke-virtual {v0, v8}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    move-result-object v8

    iget-object v8, v8, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-static {v8}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->parseTfdt(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)J

    move-result-wide v6

    goto :goto_0

    .line 703
    :cond_1
    nop

    .line 707
    :goto_0
    invoke-static {v0, v3, v6, v7, v1}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->parseTruns(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;JI)V

    .line 709
    iget-object v8, v3, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->track:Landroidx/media2/exoplayer/external/extractor/mp4/Track;

    iget-object v10, v5, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->header:Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;

    iget v10, v10, Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    .line 710
    invoke-virtual {v8, v10}, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->getSampleDescriptionEncryptionBox(I)Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;

    move-result-object v8

    .line 712
    .local v8, "encryptionBox":Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;
    const v10, 0x7361697a

    invoke-virtual {v0, v10}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    move-result-object v10

    .line 713
    .local v10, "saiz":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    if-eqz v10, :cond_2

    .line 714
    iget-object v11, v10, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-static {v8, v11, v5}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->parseSaiz(Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;Landroidx/media2/exoplayer/external/util/ParsableByteArray;Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;)V

    goto :goto_1

    .line 713
    :cond_2
    nop

    .line 717
    :goto_1
    const v11, 0x7361696f

    invoke-virtual {v0, v11}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    move-result-object v11

    .line 718
    .local v11, "saio":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    if-eqz v11, :cond_3

    .line 719
    iget-object v12, v11, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-static {v12, v5}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->parseSaio(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;)V

    goto :goto_2

    .line 718
    :cond_3
    nop

    .line 722
    :goto_2
    const v12, 0x73656e63

    invoke-virtual {v0, v12}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    move-result-object v12

    .line 723
    .local v12, "senc":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    if-eqz v12, :cond_4

    .line 724
    iget-object v13, v12, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-static {v13, v5}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;)V

    goto :goto_3

    .line 723
    :cond_4
    nop

    .line 727
    :goto_3
    const v13, 0x73626770

    invoke-virtual {v0, v13}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    move-result-object v13

    .line 728
    .local v13, "sbgp":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    const v14, 0x73677064

    invoke-virtual {v0, v14}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    move-result-object v14

    .line 729
    .local v14, "sgpd":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    if-eqz v13, :cond_6

    if-eqz v14, :cond_6

    .line 730
    iget-object v15, v13, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v1, v14, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    if-eqz v8, :cond_5

    move-object/from16 v16, v2

    .end local v2    # "tfhd":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    .local v16, "tfhd":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    iget-object v2, v8, Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    goto :goto_4

    .end local v16    # "tfhd":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    .restart local v2    # "tfhd":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    :cond_5
    move-object/from16 v16, v2

    .end local v2    # "tfhd":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    .restart local v16    # "tfhd":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    const/4 v2, 0x0

    :goto_4
    invoke-static {v15, v1, v2, v5}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->parseSgpd(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Landroidx/media2/exoplayer/external/util/ParsableByteArray;Ljava/lang/String;Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;)V

    goto :goto_5

    .line 729
    .end local v16    # "tfhd":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    .restart local v2    # "tfhd":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    :cond_6
    move-object/from16 v16, v2

    .line 734
    .end local v2    # "tfhd":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    .restart local v16    # "tfhd":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    :goto_5
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 735
    .local v1, "leafChildrenSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v1, :cond_8

    .line 736
    iget-object v15, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    .line 737
    .local v15, "atom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    iget v0, v15, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->type:I

    move/from16 v17, v1

    .end local v1    # "leafChildrenSize":I
    .local v17, "leafChildrenSize":I
    const v1, 0x75756964

    if-ne v0, v1, :cond_7

    .line 738
    iget-object v0, v15, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    move-object/from16 v1, p3

    invoke-static {v0, v5, v1}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->parseUuid(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;[B)V

    goto :goto_7

    .line 737
    :cond_7
    move-object/from16 v1, p3

    .line 735
    .end local v15    # "atom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    :goto_7
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v17

    move-object/from16 v0, p0

    goto :goto_6

    .end local v17    # "leafChildrenSize":I
    .restart local v1    # "leafChildrenSize":I
    :cond_8
    move/from16 v17, v1

    move-object/from16 v1, p3

    .line 741
    .end local v1    # "leafChildrenSize":I
    .end local v2    # "i":I
    .restart local v17    # "leafChildrenSize":I
    return-void
.end method

.method private static parseTrex(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroid/util/Pair;
    .locals 7
    .param p0, "trex"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;",
            ">;"
        }
    .end annotation

    .line 654
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 655
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 656
    .local v0, "trackId":I
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 657
    .local v1, "defaultSampleDescriptionIndex":I
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    .line 658
    .local v2, "defaultSampleDuration":I
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v3

    .line 659
    .local v3, "defaultSampleSize":I
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 661
    .local v4, "defaultSampleFlags":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;

    invoke-direct {v6, v1, v2, v3, v4}, Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    return-object v5
.end method

.method private static parseTrun(Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;IJILandroidx/media2/exoplayer/external/util/ParsableByteArray;I)I
    .locals 38
    .param p0, "trackBundle"    # Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .param p1, "index"    # I
    .param p2, "decodeTime"    # J
    .param p4, "flags"    # I
    .param p5, "trun"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p6, "trackRunStart"    # I

    .line 912
    move-object/from16 v0, p0

    const/16 v1, 0x8

    move-object/from16 v2, p5

    invoke-virtual {v2, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 913
    invoke-virtual/range {p5 .. p5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 914
    .local v1, "fullAtom":I
    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v3

    .line 916
    .local v3, "atomFlags":I
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->track:Landroidx/media2/exoplayer/external/extractor/mp4/Track;

    .line 917
    .local v4, "track":Landroidx/media2/exoplayer/external/extractor/mp4/Track;
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;

    .line 918
    .local v5, "fragment":Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;
    iget-object v6, v5, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->header:Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;

    .line 920
    .local v6, "defaultSampleValues":Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;
    iget-object v7, v5, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->trunLength:[I

    invoke-virtual/range {p5 .. p5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v8

    aput v8, v7, p1

    .line 921
    iget-object v7, v5, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->trunDataPosition:[J

    iget-wide v8, v5, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->dataPosition:J

    aput-wide v8, v7, p1

    .line 922
    and-int/lit8 v7, v3, 0x1

    if-eqz v7, :cond_0

    .line 923
    iget-object v7, v5, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->trunDataPosition:[J

    aget-wide v8, v7, p1

    invoke-virtual/range {p5 .. p5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v10

    int-to-long v10, v10

    add-long/2addr v8, v10

    aput-wide v8, v7, p1

    goto :goto_0

    .line 922
    :cond_0
    nop

    .line 926
    :goto_0
    and-int/lit8 v7, v3, 0x4

    const/4 v9, 0x1

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 927
    .local v7, "firstSampleFlagsPresent":Z
    :goto_1
    iget v10, v6, Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;->flags:I

    .line 928
    .local v10, "firstSampleFlags":I
    if-eqz v7, :cond_2

    .line 929
    invoke-virtual/range {p5 .. p5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v10

    goto :goto_2

    .line 928
    :cond_2
    nop

    .line 932
    :goto_2
    and-int/lit16 v11, v3, 0x100

    if-eqz v11, :cond_3

    const/4 v11, 0x1

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    .line 933
    .local v11, "sampleDurationsPresent":Z
    :goto_3
    and-int/lit16 v12, v3, 0x200

    if-eqz v12, :cond_4

    const/4 v12, 0x1

    goto :goto_4

    :cond_4
    const/4 v12, 0x0

    .line 934
    .local v12, "sampleSizesPresent":Z
    :goto_4
    and-int/lit16 v13, v3, 0x400

    if-eqz v13, :cond_5

    const/4 v13, 0x1

    goto :goto_5

    :cond_5
    const/4 v13, 0x0

    .line 935
    .local v13, "sampleFlagsPresent":Z
    :goto_5
    and-int/lit16 v14, v3, 0x800

    if-eqz v14, :cond_6

    const/4 v14, 0x1

    goto :goto_6

    :cond_6
    const/4 v14, 0x0

    .line 940
    .local v14, "sampleCompositionTimeOffsetsPresent":Z
    :goto_6
    const-wide/16 v15, 0x0

    .line 944
    .local v15, "edtsOffset":J
    iget-object v8, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->editListDurations:[J

    if-eqz v8, :cond_7

    iget-object v8, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->editListDurations:[J

    array-length v8, v8

    if-ne v8, v9, :cond_7

    iget-object v8, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->editListDurations:[J

    const/16 v17, 0x0

    aget-wide v18, v8, v17

    const-wide/16 v20, 0x0

    cmp-long v8, v18, v20

    if-nez v8, :cond_7

    .line 946
    iget-object v8, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v18, v8, v17

    const-wide/16 v20, 0x3e8

    move/from16 v24, v10

    .end local v10    # "firstSampleFlags":I
    .local v24, "firstSampleFlags":I
    iget-wide v9, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->timescale:J

    move-wide/from16 v22, v9

    invoke-static/range {v18 .. v23}, Landroidx/media2/exoplayer/external/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v15

    goto :goto_7

    .line 944
    .end local v24    # "firstSampleFlags":I
    .restart local v10    # "firstSampleFlags":I
    :cond_7
    move/from16 v24, v10

    .line 949
    .end local v10    # "firstSampleFlags":I
    .restart local v24    # "firstSampleFlags":I
    :goto_7
    iget-object v9, v5, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    .line 950
    .local v9, "sampleSizeTable":[I
    iget-object v10, v5, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleCompositionTimeOffsetTable:[I

    .line 951
    .local v10, "sampleCompositionTimeOffsetTable":[I
    iget-object v8, v5, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleDecodingTimeTable:[J

    .line 952
    .local v8, "sampleDecodingTimeTable":[J
    iget-object v0, v5, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    .line 954
    .local v0, "sampleIsSyncFrameTable":[Z
    move/from16 v19, v1

    .end local v1    # "fullAtom":I
    .local v19, "fullAtom":I
    iget v1, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    goto :goto_8

    :cond_8
    const/4 v1, 0x0

    .line 957
    .local v1, "workaroundEveryVideoFrameIsSyncFrame":Z
    :goto_8
    iget-object v2, v5, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->trunLength:[I

    aget v2, v2, p1

    add-int v2, p6, v2

    .line 958
    .local v2, "trackRunEnd":I
    move-object/from16 v20, v0

    move/from16 v21, v1

    .end local v0    # "sampleIsSyncFrameTable":[Z
    .end local v1    # "workaroundEveryVideoFrameIsSyncFrame":Z
    .local v20, "sampleIsSyncFrameTable":[Z
    .local v21, "workaroundEveryVideoFrameIsSyncFrame":Z
    iget-wide v0, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->timescale:J

    .line 959
    .local v0, "timescale":J
    if-lez p1, :cond_9

    move/from16 v22, v3

    move-object/from16 v23, v4

    .end local v3    # "atomFlags":I
    .end local v4    # "track":Landroidx/media2/exoplayer/external/extractor/mp4/Track;
    .local v22, "atomFlags":I
    .local v23, "track":Landroidx/media2/exoplayer/external/extractor/mp4/Track;
    iget-wide v3, v5, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    goto :goto_9

    .end local v22    # "atomFlags":I
    .end local v23    # "track":Landroidx/media2/exoplayer/external/extractor/mp4/Track;
    .restart local v3    # "atomFlags":I
    .restart local v4    # "track":Landroidx/media2/exoplayer/external/extractor/mp4/Track;
    :cond_9
    move/from16 v22, v3

    move-object/from16 v23, v4

    .end local v3    # "atomFlags":I
    .end local v4    # "track":Landroidx/media2/exoplayer/external/extractor/mp4/Track;
    .restart local v22    # "atomFlags":I
    .restart local v23    # "track":Landroidx/media2/exoplayer/external/extractor/mp4/Track;
    move-wide/from16 v3, p2

    .line 960
    .local v3, "cumulativeTime":J
    :goto_9
    move/from16 v25, p6

    move-wide/from16 v31, v3

    move/from16 v3, v25

    .local v3, "i":I
    .local v31, "cumulativeTime":J
    :goto_a
    if-ge v3, v2, :cond_11

    .line 962
    if-eqz v11, :cond_a

    invoke-virtual/range {p5 .. p5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    goto :goto_b

    .line 963
    :cond_a
    iget v4, v6, Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;->duration:I

    :goto_b
    nop

    .line 964
    .local v4, "sampleDuration":I
    if-eqz v12, :cond_b

    invoke-virtual/range {p5 .. p5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v25

    move/from16 v33, v11

    goto :goto_c

    :cond_b
    move/from16 v33, v11

    .end local v11    # "sampleDurationsPresent":Z
    .local v33, "sampleDurationsPresent":Z
    iget v11, v6, Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;->size:I

    move/from16 v25, v11

    :goto_c
    move/from16 v11, v25

    .line 965
    .local v11, "sampleSize":I
    if-nez v3, :cond_c

    if-eqz v7, :cond_c

    move/from16 v34, v7

    move/from16 v25, v24

    goto :goto_d

    .line 966
    :cond_c
    if-eqz v13, :cond_d

    invoke-virtual/range {p5 .. p5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v25

    move/from16 v34, v7

    goto :goto_d

    :cond_d
    move/from16 v34, v7

    .end local v7    # "firstSampleFlagsPresent":Z
    .local v34, "firstSampleFlagsPresent":Z
    iget v7, v6, Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;->flags:I

    move/from16 v25, v7

    :goto_d
    move/from16 v7, v25

    .line 967
    .local v7, "sampleFlags":I
    if-eqz v14, :cond_e

    .line 973
    move-object/from16 v35, v6

    .end local v6    # "defaultSampleValues":Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;
    .local v35, "defaultSampleValues":Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;
    invoke-virtual/range {p5 .. p5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 974
    .local v6, "sampleOffset":I
    move/from16 v36, v12

    move/from16 v37, v13

    .end local v12    # "sampleSizesPresent":Z
    .end local v13    # "sampleFlagsPresent":Z
    .local v36, "sampleSizesPresent":Z
    .local v37, "sampleFlagsPresent":Z
    int-to-long v12, v6

    const-wide/16 v25, 0x3e8

    mul-long v12, v12, v25

    div-long/2addr v12, v0

    long-to-int v13, v12

    aput v13, v10, v3

    .line 975
    .end local v6    # "sampleOffset":I
    const/16 v17, 0x0

    goto :goto_e

    .line 976
    .end local v35    # "defaultSampleValues":Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;
    .end local v36    # "sampleSizesPresent":Z
    .end local v37    # "sampleFlagsPresent":Z
    .local v6, "defaultSampleValues":Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;
    .restart local v12    # "sampleSizesPresent":Z
    .restart local v13    # "sampleFlagsPresent":Z
    :cond_e
    move-object/from16 v35, v6

    move/from16 v36, v12

    move/from16 v37, v13

    .end local v6    # "defaultSampleValues":Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;
    .end local v12    # "sampleSizesPresent":Z
    .end local v13    # "sampleFlagsPresent":Z
    .restart local v35    # "defaultSampleValues":Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;
    .restart local v36    # "sampleSizesPresent":Z
    .restart local v37    # "sampleFlagsPresent":Z
    const/16 v17, 0x0

    aput v17, v10, v3

    .line 978
    :goto_e
    const-wide/16 v27, 0x3e8

    .line 979
    move-wide/from16 v25, v31

    move-wide/from16 v29, v0

    invoke-static/range {v25 .. v30}, Landroidx/media2/exoplayer/external/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v12

    sub-long/2addr v12, v15

    aput-wide v12, v8, v3

    .line 980
    aput v11, v9, v3

    .line 981
    shr-int/lit8 v6, v7, 0x10

    const/16 v18, 0x1

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_10

    if-eqz v21, :cond_f

    if-nez v3, :cond_10

    :cond_f
    const/4 v6, 0x1

    goto :goto_f

    :cond_10
    const/4 v6, 0x0

    :goto_f
    aput-boolean v6, v20, v3

    .line 983
    int-to-long v12, v4

    move-wide/from16 v25, v0

    move-wide/from16 v0, v31

    .end local v31    # "cumulativeTime":J
    .local v0, "cumulativeTime":J
    .local v25, "timescale":J
    add-long v31, v0, v12

    .line 960
    .end local v0    # "cumulativeTime":J
    .end local v4    # "sampleDuration":I
    .end local v7    # "sampleFlags":I
    .end local v11    # "sampleSize":I
    .restart local v31    # "cumulativeTime":J
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v0, v25

    move/from16 v11, v33

    move/from16 v7, v34

    move-object/from16 v6, v35

    move/from16 v12, v36

    move/from16 v13, v37

    goto/16 :goto_a

    .end local v25    # "timescale":J
    .end local v33    # "sampleDurationsPresent":Z
    .end local v34    # "firstSampleFlagsPresent":Z
    .end local v35    # "defaultSampleValues":Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;
    .end local v36    # "sampleSizesPresent":Z
    .end local v37    # "sampleFlagsPresent":Z
    .local v0, "timescale":J
    .restart local v6    # "defaultSampleValues":Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;
    .local v7, "firstSampleFlagsPresent":Z
    .local v11, "sampleDurationsPresent":Z
    .restart local v12    # "sampleSizesPresent":Z
    .restart local v13    # "sampleFlagsPresent":Z
    :cond_11
    move-wide/from16 v25, v0

    move-object/from16 v35, v6

    move/from16 v34, v7

    move/from16 v33, v11

    move/from16 v36, v12

    move/from16 v37, v13

    move-wide/from16 v0, v31

    .line 985
    .end local v3    # "i":I
    .end local v6    # "defaultSampleValues":Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;
    .end local v7    # "firstSampleFlagsPresent":Z
    .end local v11    # "sampleDurationsPresent":Z
    .end local v12    # "sampleSizesPresent":Z
    .end local v13    # "sampleFlagsPresent":Z
    .end local v31    # "cumulativeTime":J
    .local v0, "cumulativeTime":J
    .restart local v25    # "timescale":J
    .restart local v33    # "sampleDurationsPresent":Z
    .restart local v34    # "firstSampleFlagsPresent":Z
    .restart local v35    # "defaultSampleValues":Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;
    .restart local v36    # "sampleSizesPresent":Z
    .restart local v37    # "sampleFlagsPresent":Z
    iput-wide v0, v5, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    .line 986
    return v2
.end method

.method private static parseTruns(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;JI)V
    .locals 18
    .param p0, "traf"    # Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;
    .param p1, "trackBundle"    # Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .param p2, "decodeTime"    # J
    .param p4, "flags"    # I

    .line 745
    move-object/from16 v7, p1

    const/4 v0, 0x0

    .line 746
    .local v0, "trunCount":I
    const/4 v1, 0x0

    .line 747
    .local v1, "totalSampleCount":I
    move-object/from16 v8, p0

    iget-object v9, v8, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    .line 748
    .local v9, "leafChildren":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    .line 749
    .local v10, "leafChildrenSize":I
    const/4 v2, 0x0

    move v11, v0

    move v12, v1

    .end local v0    # "trunCount":I
    .end local v1    # "totalSampleCount":I
    .local v2, "i":I
    .local v11, "trunCount":I
    .local v12, "totalSampleCount":I
    :goto_0
    const v13, 0x7472756e

    if-ge v2, v10, :cond_2

    .line 750
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    .line 751
    .local v0, "atom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    iget v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->type:I

    if-ne v1, v13, :cond_1

    .line 752
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 753
    .local v1, "trunData":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 754
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v3

    .line 755
    .local v3, "trunSampleCount":I
    if-lez v3, :cond_0

    .line 756
    add-int/2addr v12, v3

    .line 757
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 755
    :cond_0
    goto :goto_1

    .line 751
    .end local v1    # "trunData":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .end local v3    # "trunSampleCount":I
    :cond_1
    nop

    .line 749
    .end local v0    # "atom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 761
    .end local v2    # "i":I
    :cond_2
    const/4 v0, 0x0

    iput v0, v7, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    .line 762
    iput v0, v7, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    .line 763
    iput v0, v7, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    .line 764
    iget-object v0, v7, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;

    invoke-virtual {v0, v11, v12}, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->initTables(II)V

    .line 766
    const/4 v0, 0x0

    .line 767
    .local v0, "trunIndex":I
    const/4 v1, 0x0

    .line 768
    .local v1, "trunStartPosition":I
    const/4 v2, 0x0

    move v15, v1

    move v14, v2

    move v1, v0

    .end local v0    # "trunIndex":I
    .local v1, "trunIndex":I
    .local v14, "i":I
    .local v15, "trunStartPosition":I
    :goto_2
    if-ge v14, v10, :cond_4

    .line 769
    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    .line 770
    .local v6, "trun":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    iget v0, v6, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->type:I

    if-ne v0, v13, :cond_3

    .line 771
    add-int/lit8 v16, v1, 0x1

    .end local v1    # "trunIndex":I
    .local v16, "trunIndex":I
    iget-object v5, v6, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    move-object/from16 v0, p1

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v17, v6

    .end local v6    # "trun":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    .local v17, "trun":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    move v6, v15

    invoke-static/range {v0 .. v6}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->parseTrun(Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;IJILandroidx/media2/exoplayer/external/util/ParsableByteArray;I)I

    move-result v15

    move/from16 v1, v16

    goto :goto_3

    .line 770
    .end local v16    # "trunIndex":I
    .end local v17    # "trun":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    .restart local v1    # "trunIndex":I
    .restart local v6    # "trun":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    :cond_3
    move-object/from16 v17, v6

    .line 768
    .end local v6    # "trun":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 775
    .end local v14    # "i":I
    :cond_4
    return-void
.end method

.method private static parseUuid(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;[B)V
    .locals 2
    .param p0, "uuid"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p1, "out"    # Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;
    .param p2, "extendedTypeScratch"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 991
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 992
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 995
    sget-object v1, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

    invoke-static {p2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 996
    return-void

    .line 1002
    :cond_0
    invoke-static {p0, v0, p1}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Landroidx/media2/exoplayer/external/util/ParsableByteArray;ILandroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;)V

    .line 1003
    return-void
.end method

.method private processAtomEnded(J)V
    .locals 3
    .param p1, "atomEndPosition"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 445
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    .line 446
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->onContainerAtomRead(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_0

    .line 445
    :cond_0
    nop

    .line 448
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    .line 449
    return-void
.end method

.method private readAtomHeader(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z
    .locals 10
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 346
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 348
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v0, v2, v1, v3}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    return v2

    .line 351
    :cond_0
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    .line 352
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 353
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    .line 354
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    goto :goto_0

    .line 346
    :cond_1
    nop

    .line 357
    :goto_0
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 359
    const/16 v0, 0x8

    .line 360
    .local v0, "headerBytesRemaining":I
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v4, v1, v0}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BII)V

    .line 361
    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    add-int/2addr v4, v0

    iput v4, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    .line 362
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    .end local v0    # "headerBytesRemaining":I
    goto :goto_2

    .line 363
    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_5

    .line 366
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    .line 367
    .local v4, "endPosition":J
    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 368
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;

    iget-wide v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    goto :goto_1

    .line 367
    :cond_3
    nop

    .line 370
    :goto_1
    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    .line 371
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    sub-long v6, v4, v6

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v8, v0

    add-long/2addr v6, v8

    iput-wide v6, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    goto :goto_3

    .line 370
    :cond_4
    goto :goto_3

    .line 363
    .end local v4    # "endPosition":J
    :cond_5
    :goto_2
    nop

    .line 375
    :goto_3
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_10

    .line 379
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v0

    sub-long/2addr v4, v6

    .line 380
    .local v4, "atomPosition":J
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    const v6, 0x6d6f6f66

    if-ne v0, v6, :cond_7

    .line 382
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 383
    .local v0, "trackCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    if-ge v6, v0, :cond_6

    .line 384
    iget-object v7, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v7, v7, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;

    .line 385
    .local v7, "fragment":Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;
    iput-wide v4, v7, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->atomPosition:J

    .line 386
    iput-wide v4, v7, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    .line 387
    iput-wide v4, v7, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->dataPosition:J

    .line 383
    .end local v7    # "fragment":Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_6
    goto :goto_5

    .line 380
    .end local v0    # "trackCount":I
    .end local v6    # "i":I
    :cond_7
    nop

    .line 391
    :goto_5
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    const v6, 0x6d646174

    const/4 v7, 0x0

    if-ne v0, v6, :cond_9

    .line 392
    iput-object v7, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 393
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->endOfMdatPosition:J

    .line 394
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    if-nez v0, :cond_8

    .line 396
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    new-instance v1, Landroidx/media2/exoplayer/external/extractor/SeekMap$Unseekable;

    iget-wide v6, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    invoke-direct {v1, v6, v7, v4, v5}, Landroidx/media2/exoplayer/external/extractor/SeekMap$Unseekable;-><init>(JJ)V

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->seekMap(Landroidx/media2/exoplayer/external/extractor/SeekMap;)V

    .line 397
    iput-boolean v3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    goto :goto_6

    .line 394
    :cond_8
    nop

    .line 399
    :goto_6
    const/4 v0, 0x2

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 400
    return v3

    .line 403
    :cond_9
    invoke-static {v0}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->shouldParseContainerAtom(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 404
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iget-wide v6, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    add-long/2addr v0, v6

    const-wide/16 v6, 0x8

    sub-long/2addr v0, v6

    .line 405
    .local v0, "endPosition":J
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    new-instance v6, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;

    iget v7, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-direct {v6, v7, v0, v1}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;-><init>(IJ)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 406
    iget-wide v6, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v8, v2

    cmp-long v2, v6, v8

    if-nez v2, :cond_a

    .line 407
    invoke-direct {p0, v0, v1}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->processAtomEnded(J)V

    goto :goto_7

    .line 410
    :cond_a
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    .line 412
    .end local v0    # "endPosition":J
    :goto_7
    goto :goto_8

    :cond_b
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-static {v0}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->shouldParseLeafAtom(I)Z

    move-result v0

    const-wide/32 v8, 0x7fffffff

    if-eqz v0, :cond_e

    .line 413
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    if-ne v0, v1, :cond_d

    .line 416
    iget-wide v6, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    cmp-long v0, v6, v8

    if-gtz v0, :cond_c

    .line 419
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    long-to-int v7, v6

    invoke-direct {v0, v7}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 420
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v6, v6, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-static {v0, v2, v6, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 421
    iput v3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    goto :goto_8

    .line 417
    :cond_c
    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    const-string v1, "Leaf atom with length > 2147483647 (unsupported)."

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 414
    :cond_d
    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    const-string v1, "Leaf atom defines extended atom size (unsupported)."

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :cond_e
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    cmp-long v2, v0, v8

    if-gtz v2, :cond_f

    .line 426
    iput-object v7, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 427
    iput v3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 430
    :goto_8
    return v3

    .line 424
    :cond_f
    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    const-string v1, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    .end local v4    # "atomPosition":J
    :cond_10
    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    const-string v1, "Atom size less than header length (unsupported)."

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    return-void
.end method

.method private readAtomPayload(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)V
    .locals 4
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 434
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    long-to-int v1, v0

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    sub-int/2addr v1, v0

    .line 435
    .local v1, "atomPayloadSize":I
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/16 v2, 0x8

    invoke-interface {p1, v0, v2, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BII)V

    .line 437
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {v0, v2, v3}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;-><init>(ILandroidx/media2/exoplayer/external/util/ParsableByteArray;)V

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->onLeafAtomRead(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;J)V

    goto :goto_0

    .line 439
    :cond_0
    invoke-interface {p1, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    .line 441
    :goto_0
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->processAtomEnded(J)V

    .line 442
    return-void
.end method

.method private readEncryptionData(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)V
    .locals 9
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1152
    const/4 v0, 0x0

    .line 1153
    .local v0, "nextTrackBundle":Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    const-wide v1, 0x7fffffffffffffffL

    .line 1154
    .local v1, "nextDataOffset":J
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 1155
    .local v3, "trackBundlesSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 1156
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;

    .line 1157
    .local v5, "trackFragment":Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;
    iget-boolean v6, v5, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    if-eqz v6, :cond_0

    iget-wide v6, v5, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    cmp-long v8, v6, v1

    if-gez v8, :cond_0

    .line 1159
    iget-wide v1, v5, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    .line 1160
    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    goto :goto_1

    .line 1157
    :cond_0
    nop

    .line 1155
    .end local v5    # "trackFragment":Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1163
    .end local v4    # "i":I
    :cond_1
    if-nez v0, :cond_2

    .line 1164
    const/4 v4, 0x3

    iput v4, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 1165
    return-void

    .line 1167
    :cond_2
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    sub-long v4, v1, v4

    long-to-int v5, v4

    .line 1168
    .local v5, "bytesToSkip":I
    if-ltz v5, :cond_3

    .line 1171
    invoke-interface {p1, v5}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    .line 1172
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;

    invoke-virtual {v4, p1}, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->fillEncryptionData(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)V

    .line 1173
    return-void

    .line 1169
    :cond_3
    new-instance v4, Landroidx/media2/exoplayer/external/ParserException;

    const-string v6, "Offset to encryption data was negative."

    invoke-direct {v4, v6}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v4

    return-void
.end method

.method private readSample(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z
    .locals 19
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1192
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v2, v4, :cond_7

    .line 1193
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    if-nez v2, :cond_3

    .line 1194
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->getNextFragmentRun(Landroid/util/SparseArray;)Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-result-object v2

    .line 1195
    .local v2, "currentTrackBundle":Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    if-nez v2, :cond_1

    .line 1198
    iget-wide v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->endOfMdatPosition:J

    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    sub-long/2addr v3, v5

    long-to-int v4, v3

    .line 1199
    .local v4, "bytesToSkip":I
    if-ltz v4, :cond_0

    .line 1202
    invoke-interface {v1, v4}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    .line 1203
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    .line 1204
    return v7

    .line 1200
    :cond_0
    new-instance v3, Landroidx/media2/exoplayer/external/ParserException;

    const-string v5, "Offset to end of mdat was negative."

    invoke-direct {v3, v5}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1207
    .end local v4    # "bytesToSkip":I
    :cond_1
    iget-object v8, v2, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;

    iget-object v8, v8, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->trunDataPosition:[J

    iget v9, v2, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    aget-wide v9, v8, v9

    .line 1210
    .local v9, "nextDataPosition":J
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v11

    sub-long v11, v9, v11

    long-to-int v8, v11

    .line 1211
    .local v8, "bytesToSkip":I
    if-gez v8, :cond_2

    .line 1213
    const-string v11, "FragmentedMp4Extractor"

    const-string v12, "Ignoring negative offset to sample data."

    invoke-static {v11, v12}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    const/4 v8, 0x0

    goto :goto_0

    .line 1211
    :cond_2
    nop

    .line 1216
    :goto_0
    invoke-interface {v1, v8}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    .line 1217
    iput-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    goto :goto_1

    .line 1193
    .end local v2    # "currentTrackBundle":Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .end local v8    # "bytesToSkip":I
    .end local v9    # "nextDataPosition":J
    :cond_3
    nop

    .line 1220
    :goto_1
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v8, v8, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget v2, v2, v8

    iput v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 1223
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v2, v2, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v8, v8, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->firstSampleToOutputIndex:I

    if-ge v2, v8, :cond_5

    .line 1224
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    invoke-interface {v1, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    .line 1225
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->access$000(Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;)V

    .line 1226
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->next()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1227
    iput-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    goto :goto_2

    .line 1226
    :cond_4
    nop

    .line 1229
    :goto_2
    iput v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 1230
    return v6

    .line 1233
    :cond_5
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->track:Landroidx/media2/exoplayer/external/extractor/mp4/Track;

    iget v2, v2, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->sampleTransformation:I

    if-ne v2, v6, :cond_6

    .line 1234
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    const/16 v8, 0x8

    sub-int/2addr v2, v8

    iput v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 1235
    invoke-interface {v1, v8}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_3

    .line 1233
    :cond_6
    nop

    .line 1237
    :goto_3
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->outputSampleEncryptionData()I

    move-result v2

    iput v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 1238
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    iget v8, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v2, v8

    iput v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 1239
    iput v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 1240
    iput v7, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 1241
    const-string v2, "audio/ac4"

    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v8, v8, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->track:Landroidx/media2/exoplayer/external/extractor/mp4/Track;

    iget-object v8, v8, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->format:Landroidx/media2/exoplayer/external/Format;

    iget-object v8, v8, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    .line 1242
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->isAc4HeaderRequired:Z

    goto :goto_4

    .line 1192
    :cond_7
    nop

    .line 1245
    :goto_4
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;

    .line 1246
    .local v2, "fragment":Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v8, v8, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->track:Landroidx/media2/exoplayer/external/extractor/mp4/Track;

    .line 1247
    .local v8, "track":Landroidx/media2/exoplayer/external/extractor/mp4/Track;
    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v9, v9, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 1248
    .local v9, "output":Landroidx/media2/exoplayer/external/extractor/TrackOutput;
    iget-object v10, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v15, v10, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    .line 1249
    .local v15, "sampleIndex":I
    invoke-virtual {v2, v15}, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->getSamplePresentationTime(I)J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    mul-long v10, v10, v12

    .line 1250
    .local v10, "sampleTimeUs":J
    iget-object v12, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    if-eqz v12, :cond_8

    .line 1251
    invoke-virtual {v12, v10, v11}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    move-result-wide v10

    move-wide v13, v10

    goto :goto_5

    .line 1250
    :cond_8
    move-wide v13, v10

    .line 1253
    .end local v10    # "sampleTimeUs":J
    .local v13, "sampleTimeUs":J
    :goto_5
    iget v10, v8, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    if-eqz v10, :cond_f

    .line 1256
    iget-object v10, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v10, v10, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    .line 1257
    .local v10, "nalPrefixData":[B
    aput-byte v7, v10, v7

    .line 1258
    aput-byte v7, v10, v6

    .line 1259
    const/4 v11, 0x2

    aput-byte v7, v10, v11

    .line 1260
    iget v11, v8, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    add-int/2addr v11, v6

    .line 1261
    .local v11, "nalUnitPrefixLength":I
    iget v12, v8, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    rsub-int/lit8 v12, v12, 0x4

    .line 1265
    .local v12, "nalUnitLengthFieldLengthDiff":I
    :goto_6
    iget v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    iget v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    if-ge v4, v3, :cond_e

    .line 1266
    iget v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    if-nez v3, :cond_c

    .line 1268
    invoke-interface {v1, v10, v12, v11}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BII)V

    .line 1269
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v3, v7}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1270
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 1271
    .local v3, "nalLengthInt":I
    if-lt v3, v6, :cond_b

    .line 1274
    add-int/lit8 v4, v3, -0x1

    iput v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 1276
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v4, v7}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1277
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-interface {v9, v4, v5}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 1279
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-interface {v9, v4, v6}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 1280
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->cea608TrackOutputs:[Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    array-length v4, v4

    if-lez v4, :cond_a

    iget-object v4, v8, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->format:Landroidx/media2/exoplayer/external/Format;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    aget-byte v6, v10, v5

    .line 1281
    invoke-static {v4, v6}, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->isNalUnitSei(Ljava/lang/String;B)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x1

    goto :goto_8

    :cond_9
    goto :goto_7

    .line 1280
    :cond_a
    nop

    .line 1281
    :goto_7
    const/4 v4, 0x0

    :goto_8
    iput-boolean v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->processSeiNalUnitPayload:Z

    .line 1282
    iget v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/lit8 v4, v4, 0x5

    iput v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 1283
    iget v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    add-int/2addr v4, v12

    iput v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 1284
    .end local v3    # "nalLengthInt":I
    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v6, 0x1

    goto :goto_6

    .line 1272
    .restart local v3    # "nalLengthInt":I
    :cond_b
    new-instance v4, Landroidx/media2/exoplayer/external/ParserException;

    const-string v5, "Invalid NAL length"

    invoke-direct {v4, v5}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1286
    .end local v3    # "nalLengthInt":I
    :cond_c
    iget-boolean v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->processSeiNalUnitPayload:Z

    if-eqz v4, :cond_d

    .line 1288
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v4, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset(I)V

    .line 1289
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    invoke-interface {v1, v3, v7, v4}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BII)V

    .line 1290
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    invoke-interface {v9, v3, v4}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 1291
    iget v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 1293
    .local v3, "writtenBytes":I
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v6

    invoke-static {v4, v6}, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->unescapeStream([BI)I

    move-result v4

    .line 1295
    .local v4, "unescapedLength":I
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const-string/jumbo v5, "video/hevc"

    iget-object v7, v8, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->format:Landroidx/media2/exoplayer/external/Format;

    iget-object v7, v7, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v6, v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1296
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v5, v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setLimit(I)V

    .line 1297
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->cea608TrackOutputs:[Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    invoke-static {v13, v14, v5, v6}, Landroidx/media2/exoplayer/external/text/cea/CeaUtil;->consume(JLandroidx/media2/exoplayer/external/util/ParsableByteArray;[Landroidx/media2/exoplayer/external/extractor/TrackOutput;)V

    .line 1298
    .end local v4    # "unescapedLength":I
    goto :goto_9

    .line 1300
    .end local v3    # "writtenBytes":I
    :cond_d
    const/4 v4, 0x0

    invoke-interface {v9, v1, v3, v4}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;IZ)I

    move-result v3

    .line 1302
    .restart local v3    # "writtenBytes":I
    :goto_9
    iget v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v4, v3

    iput v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 1303
    iget v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int/2addr v4, v3

    iput v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 1304
    .end local v3    # "writtenBytes":I
    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    goto/16 :goto_6

    .line 1265
    :cond_e
    nop

    .line 1306
    .end local v10    # "nalPrefixData":[B
    .end local v11    # "nalUnitPrefixLength":I
    .end local v12    # "nalUnitLengthFieldLengthDiff":I
    const/4 v4, 0x0

    goto :goto_b

    .line 1307
    :cond_f
    iget-boolean v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->isAc4HeaderRequired:Z

    if-eqz v3, :cond_10

    .line 1308
    iget v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-static {v3, v4}, Landroidx/media2/exoplayer/external/audio/Ac4Util;->getAc4SampleHeader(ILandroidx/media2/exoplayer/external/util/ParsableByteArray;)V

    .line 1309
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v3

    .line 1310
    .local v3, "length":I
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-interface {v9, v4, v3}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 1311
    iget v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    add-int/2addr v4, v3

    iput v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 1312
    iget v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v4, v3

    iput v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 1313
    const/4 v4, 0x0

    iput-boolean v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->isAc4HeaderRequired:Z

    goto :goto_a

    .line 1307
    .end local v3    # "length":I
    :cond_10
    const/4 v4, 0x0

    .line 1315
    :goto_a
    iget v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    iget v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    if-ge v3, v5, :cond_11

    .line 1316
    sub-int/2addr v5, v3

    invoke-interface {v9, v1, v5, v4}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;IZ)I

    move-result v3

    .line 1317
    .local v3, "writtenBytes":I
    iget v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v5, v3

    iput v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 1318
    .end local v3    # "writtenBytes":I
    goto :goto_a

    .line 1315
    :cond_11
    nop

    .line 1321
    :goto_b
    iget-object v3, v2, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    aget-boolean v3, v3, v15

    if-eqz v3, :cond_12

    .line 1322
    const/4 v4, 0x1

    goto :goto_c

    :cond_12
    nop

    :goto_c
    move v3, v4

    .line 1325
    .local v3, "sampleFlags":I
    nop

    const/4 v4, 0x0

    .line 1326
    .local v4, "cryptoData":Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;
    nop

    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-static {v5}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->access$100(Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;)Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;

    move-result-object v5

    .line 1327
    .local v5, "encryptionBox":Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;
    nop

    if-eqz v5, :cond_13

    .line 1328
    nop

    const/high16 v6, 0x40000000    # 2.0f

    or-int/2addr v3, v6

    .line 1329
    nop

    iget-object v4, v5, Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;->cryptoData:Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;

    goto :goto_d

    .line 1327
    :cond_13
    nop

    .line 1332
    :goto_d
    nop

    iget v6, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    const/4 v7, 0x0

    move-object v10, v9

    move-wide v11, v13

    move-wide/from16 v17, v13

    .end local v13    # "sampleTimeUs":J
    .local v17, "sampleTimeUs":J
    move v13, v3

    move v14, v6

    move v6, v15

    .end local v15    # "sampleIndex":I
    .local v6, "sampleIndex":I
    move v15, v7

    move-object/from16 v16, v4

    invoke-interface/range {v10 .. v16}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;)V

    .line 1335
    nop

    move-wide/from16 v10, v17

    .end local v17    # "sampleTimeUs":J
    .local v10, "sampleTimeUs":J
    invoke-direct {v0, v10, v11}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->outputPendingMetadataSamples(J)V

    .line 1336
    nop

    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-virtual {v7}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->next()Z

    move-result v7

    if-nez v7, :cond_14

    .line 1337
    nop

    const/4 v7, 0x0

    iput-object v7, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    goto :goto_e

    .line 1336
    :cond_14
    nop

    .line 1339
    :goto_e
    nop

    const/4 v7, 0x3

    iput v7, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 1340
    nop

    const/4 v7, 0x1

    return v7
.end method

.method private static shouldParseContainerAtom(I)Z
    .locals 1
    .param p0, "atom"    # I

    .line 1421
    const v0, 0x6d6f6f76

    if-eq p0, v0, :cond_1

    const v0, 0x7472616b

    if-eq p0, v0, :cond_1

    const v0, 0x6d646961

    if-eq p0, v0, :cond_1

    const v0, 0x6d696e66

    if-eq p0, v0, :cond_1

    const v0, 0x7374626c

    if-eq p0, v0, :cond_1

    const v0, 0x6d6f6f66

    if-eq p0, v0, :cond_1

    const v0, 0x74726166

    if-eq p0, v0, :cond_1

    const v0, 0x6d766578

    if-eq p0, v0, :cond_1

    const v0, 0x65647473

    if-ne p0, v0, :cond_0

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

.method private static shouldParseLeafAtom(I)Z
    .locals 1
    .param p0, "atom"    # I

    .line 1410
    const v0, 0x68646c72    # 4.3148E24f

    if-eq p0, v0, :cond_1

    const v0, 0x6d646864

    if-eq p0, v0, :cond_1

    const v0, 0x6d766864

    if-eq p0, v0, :cond_1

    const v0, 0x73696478

    if-eq p0, v0, :cond_1

    const v0, 0x73747364

    if-eq p0, v0, :cond_1

    const v0, 0x74666474

    if-eq p0, v0, :cond_1

    const v0, 0x74666864

    if-eq p0, v0, :cond_1

    const v0, 0x746b6864

    if-eq p0, v0, :cond_1

    const v0, 0x74726578

    if-eq p0, v0, :cond_1

    const v0, 0x7472756e

    if-eq p0, v0, :cond_1

    const v0, 0x70737368    # 3.013775E29f

    if-eq p0, v0, :cond_1

    const v0, 0x7361697a

    if-eq p0, v0, :cond_1

    const v0, 0x7361696f

    if-eq p0, v0, :cond_1

    const v0, 0x73656e63

    if-eq p0, v0, :cond_1

    const v0, 0x75756964

    if-eq p0, v0, :cond_1

    const v0, 0x73626770

    if-eq p0, v0, :cond_1

    const v0, 0x73677064

    if-eq p0, v0, :cond_1

    const v0, 0x656c7374

    if-eq p0, v0, :cond_1

    const v0, 0x6d656864

    if-eq p0, v0, :cond_1

    const v0, 0x656d7367

    if-ne p0, v0, :cond_0

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


# virtual methods
.method public init(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;)V
    .locals 4
    .param p1, "output"    # Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    .line 287
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    .line 288
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Landroidx/media2/exoplayer/external/extractor/mp4/Track;

    if-eqz v0, :cond_0

    .line 289
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v0, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->type:I

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->track(II)Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;-><init>(Landroidx/media2/exoplayer/external/extractor/TrackOutput;)V

    move-object v0, v1

    .line 290
    .local v0, "bundle":Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Landroidx/media2/exoplayer/external/extractor/mp4/Track;

    new-instance v3, Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;

    invoke-direct {v3, v2, v2, v2, v2}, Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    invoke-virtual {v0, v1, v3}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->init(Landroidx/media2/exoplayer/external/extractor/mp4/Track;Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;)V

    .line 291
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 292
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->maybeInitExtraTracks()V

    .line 293
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->endTracks()V

    goto :goto_0

    .line 288
    .end local v0    # "bundle":Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    :cond_0
    nop

    .line 295
    :goto_0
    return-void
.end method

.method protected modifyTrack(Landroidx/media2/exoplayer/external/extractor/mp4/Track;)Landroidx/media2/exoplayer/external/extractor/mp4/Track;
    .locals 0
    .param p1, "track"    # Landroidx/media2/exoplayer/external/extractor/mp4/Track;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 541
    return-object p1
.end method

.method public read(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;)I
    .locals 1
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Landroidx/media2/exoplayer/external/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 320
    :goto_0
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    packed-switch v0, :pswitch_data_0

    .line 333
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->readSample(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    const/4 v0, 0x0

    return v0

    .line 330
    :pswitch_0
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->readEncryptionData(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)V

    .line 331
    goto :goto_0

    .line 327
    :pswitch_1
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->readAtomPayload(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)V

    .line 328
    goto :goto_0

    .line 322
    :pswitch_2
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->readAtomHeader(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    const/4 v0, -0x1

    return v0

    .line 322
    :cond_0
    goto :goto_0

    .line 333
    :cond_1
    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public release()V
    .locals 0

    .line 314
    return-void
.end method

.method public seek(JJ)V
    .locals 3
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .line 299
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 300
    .local v0, "trackCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 301
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->reset()V

    .line 300
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 303
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    .line 304
    const/4 v1, 0x0

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    .line 305
    iput-wide p3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    .line 306
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    .line 307
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->isAc4HeaderRequired:Z

    .line 308
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    .line 309
    return-void
.end method

.method public sniff(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z
    .locals 1
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 282
    invoke-static {p1}, Landroidx/media2/exoplayer/external/extractor/mp4/Sniffer;->sniffFragmented(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z

    move-result v0

    return v0
.end method
