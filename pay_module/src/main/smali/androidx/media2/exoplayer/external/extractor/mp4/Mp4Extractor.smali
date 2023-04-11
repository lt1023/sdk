.class public final Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;
.super Ljava/lang/Object;
.source "Mp4Extractor.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/Extractor;
.implements Landroidx/media2/exoplayer/external/extractor/SeekMap;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;,
        Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$State;,
        Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Flags;
    }
.end annotation


# static fields
.field private static final BRAND_QUICKTIME:I = 0x71742020

.field public static final FACTORY:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

.field public static final FLAG_WORKAROUND_IGNORE_EDIT_LISTS:I = 0x1

.field private static final MAXIMUM_READ_AHEAD_BYTES_STREAM:J = 0xa00000L

.field private static final RELOAD_MINIMUM_SEEK_DISTANCE:J = 0x40000L

.field private static final STATE_READING_ATOM_HEADER:I = 0x0

.field private static final STATE_READING_ATOM_PAYLOAD:I = 0x1

.field private static final STATE_READING_SAMPLE:I = 0x2


# instance fields
.field private accumulatedSampleSizes:[[J

.field private atomData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private final atomHeader:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private atomHeaderBytesRead:I

.field private atomSize:J

.field private atomType:I

.field private final containerAtoms:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;",
            ">;"
        }
    .end annotation
.end field

.field private durationUs:J

.field private extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

.field private firstVideoTrackIndex:I

.field private final flags:I

.field private isAc4HeaderRequired:Z

.field private isQuickTime:Z

.field private final nalLength:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private final nalStartCode:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private parserState:I

.field private sampleBytesWritten:I

.field private sampleCurrentNalBytesRemaining:I

.field private sampleTrackIndex:I

.field private final scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private tracks:[Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$$Lambda$0;->$instance:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->FACTORY:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;-><init>(I)V

    .line 134
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "flags"    # I

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->flags:I

    .line 144
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomHeader:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 145
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    .line 146
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    sget-object v1, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->nalStartCode:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 147
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->nalLength:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 148
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 149
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    .line 150
    return-void
.end method

.method private static calculateAccumulatedSampleSizes([Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;)[[J
    .locals 14
    .param p0, "tracks"    # [Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;

    .line 685
    array-length v0, p0

    new-array v0, v0, [[J

    .line 686
    .local v0, "accumulatedSampleSizes":[[J
    array-length v1, p0

    new-array v1, v1, [I

    .line 687
    .local v1, "nextSampleIndex":[I
    array-length v2, p0

    new-array v2, v2, [J

    .line 688
    .local v2, "nextSampleTimesUs":[J
    array-length v3, p0

    new-array v3, v3, [Z

    .line 689
    .local v3, "tracksFinished":[Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, p0

    if-ge v4, v5, :cond_0

    .line 690
    aget-object v5, p0, v4

    iget-object v5, v5, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;

    iget v5, v5, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;->sampleCount:I

    new-array v5, v5, [J

    aput-object v5, v0, v4

    .line 691
    aget-object v5, p0, v4

    iget-object v5, v5, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    const/4 v6, 0x0

    aget-wide v6, v5, v6

    aput-wide v6, v2, v4

    .line 689
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 693
    .end local v4    # "i":I
    :cond_0
    const-wide/16 v4, 0x0

    .line 694
    .local v4, "accumulatedSampleSize":J
    const/4 v6, 0x0

    .line 695
    .local v6, "finishedTracks":I
    :goto_1
    array-length v7, p0

    if-ge v6, v7, :cond_4

    .line 696
    const-wide v7, 0x7fffffffffffffffL

    .line 697
    .local v7, "minTimeUs":J
    const/4 v9, -0x1

    .line 698
    .local v9, "minTimeTrackIndex":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    array-length v11, p0

    if-ge v10, v11, :cond_2

    .line 699
    aget-boolean v11, v3, v10

    if-nez v11, :cond_1

    aget-wide v11, v2, v10

    cmp-long v13, v11, v7

    if-gtz v13, :cond_1

    .line 700
    move v9, v10

    .line 701
    aget-wide v7, v2, v10

    goto :goto_3

    .line 699
    :cond_1
    nop

    .line 698
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 704
    .end local v10    # "i":I
    :cond_2
    aget v10, v1, v9

    .line 705
    .local v10, "trackSampleIndex":I
    aget-object v11, v0, v9

    aput-wide v4, v11, v10

    .line 706
    aget-object v11, p0, v9

    iget-object v11, v11, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;

    iget-object v11, v11, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;->sizes:[I

    aget v11, v11, v10

    int-to-long v11, v11

    add-long/2addr v4, v11

    .line 707
    const/4 v11, 0x1

    add-int/2addr v10, v11

    aput v10, v1, v9

    .line 708
    aget-object v12, v0, v9

    array-length v12, v12

    if-ge v10, v12, :cond_3

    .line 709
    aget-object v11, p0, v9

    iget-object v11, v11, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;

    iget-object v11, v11, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v12, v11, v10

    aput-wide v12, v2, v9

    goto :goto_4

    .line 712
    :cond_3
    aput-boolean v11, v3, v9

    .line 713
    add-int/lit8 v6, v6, 0x1

    .line 715
    .end local v7    # "minTimeUs":J
    .end local v9    # "minTimeTrackIndex":I
    .end local v10    # "trackSampleIndex":I
    :goto_4
    goto :goto_1

    .line 716
    :cond_4
    return-object v0
.end method

.method private enterReadingAtomHeaderState()V
    .locals 1

    .line 273
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->parserState:I

    .line 274
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    .line 275
    return-void
.end method

.method private static getSynchronizationSampleIndex(Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;J)I
    .locals 2
    .param p0, "sampleTable"    # Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;
    .param p1, "timeUs"    # J

    .line 750
    invoke-virtual {p0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;->getIndexOfEarlierOrEqualSynchronizationSample(J)I

    move-result v0

    .line 751
    .local v0, "sampleIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 753
    invoke-virtual {p0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v0

    goto :goto_0

    .line 751
    :cond_0
    nop

    .line 755
    :goto_0
    return v0
.end method

.method private getTrackIndexOfNextReadSample(J)I
    .locals 23
    .param p1, "inputPosition"    # J

    .line 602
    move-object/from16 v0, p0

    const-wide v1, 0x7fffffffffffffffL

    .line 603
    .local v1, "preferredSkipAmount":J
    const/4 v3, 0x1

    .line 604
    .local v3, "preferredRequiresReload":Z
    const/4 v4, -0x1

    .line 605
    .local v4, "preferredTrackIndex":I
    const-wide v5, 0x7fffffffffffffffL

    .line 606
    .local v5, "preferredAccumulatedBytes":J
    const-wide v7, 0x7fffffffffffffffL

    .line 607
    .local v7, "minAccumulatedBytes":J
    const/4 v9, 0x1

    .line 608
    .local v9, "minAccumulatedBytesRequiresReload":Z
    const/4 v10, -0x1

    .line 609
    .local v10, "minAccumulatedBytesTrackIndex":I
    const/4 v11, 0x0

    .local v11, "trackIndex":I
    :goto_0
    iget-object v12, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v13, v12

    if-ge v11, v13, :cond_7

    .line 610
    aget-object v12, v12, v11

    .line 611
    .local v12, "track":Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;
    iget v13, v12, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 612
    .local v13, "sampleIndex":I
    iget-object v14, v12, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;

    iget v14, v14, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-ne v13, v14, :cond_0

    .line 613
    goto :goto_7

    .line 615
    :cond_0
    iget-object v14, v12, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;

    iget-object v14, v14, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v15, v14, v13

    .line 616
    .local v15, "sampleOffset":J
    iget-object v14, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->accumulatedSampleSizes:[[J

    aget-object v14, v14, v11

    aget-wide v17, v14, v13

    .line 617
    .local v17, "sampleAccumulatedBytes":J
    sub-long v19, v15, p1

    .line 618
    .local v19, "skipAmount":J
    const-wide/16 v21, 0x0

    cmp-long v14, v19, v21

    if-ltz v14, :cond_2

    const-wide/32 v21, 0x40000

    cmp-long v14, v19, v21

    if-ltz v14, :cond_1

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v14, 0x1

    .line 619
    .local v14, "requiresReload":Z
    :goto_2
    if-nez v14, :cond_4

    if-nez v3, :cond_3

    goto :goto_4

    :cond_3
    :goto_3
    goto :goto_5

    :cond_4
    :goto_4
    if-ne v14, v3, :cond_5

    cmp-long v21, v19, v1

    if-gez v21, :cond_5

    goto :goto_3

    .line 621
    :goto_5
    move v3, v14

    .line 622
    move-wide/from16 v1, v19

    .line 623
    move v4, v11

    .line 624
    move-wide/from16 v5, v17

    goto :goto_6

    .line 619
    :cond_5
    nop

    .line 626
    :goto_6
    cmp-long v21, v17, v7

    if-gez v21, :cond_6

    .line 627
    move-wide/from16 v7, v17

    .line 628
    move v9, v14

    .line 629
    move v10, v11

    goto :goto_7

    .line 626
    :cond_6
    nop

    .line 609
    .end local v12    # "track":Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;
    .end local v13    # "sampleIndex":I
    .end local v14    # "requiresReload":Z
    .end local v15    # "sampleOffset":J
    .end local v17    # "sampleAccumulatedBytes":J
    .end local v19    # "skipAmount":J
    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 634
    .end local v11    # "trackIndex":I
    :cond_7
    const-wide v11, 0x7fffffffffffffffL

    cmp-long v13, v7, v11

    if-eqz v13, :cond_9

    if-eqz v9, :cond_9

    const-wide/32 v11, 0xa00000

    add-long/2addr v11, v7

    cmp-long v13, v5, v11

    if-gez v13, :cond_8

    goto :goto_8

    .line 636
    :cond_8
    move v11, v10

    goto :goto_9

    .line 634
    :cond_9
    :goto_8
    nop

    .line 635
    move v11, v4

    .line 632
    :goto_9
    return v11
.end method

.method private getTrackSampleTables(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;Z)Ljava/util/ArrayList;
    .locals 10
    .param p1, "moov"    # Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;
    .param p2, "gaplessInfoHolder"    # Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;
    .param p3, "ignoreEditLists"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;",
            "Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 456
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 457
    .local v0, "trackSampleTables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p1, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 458
    iget-object v2, p1, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;

    .line 459
    .local v2, "atom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;
    iget v3, v2, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->type:I

    const v4, 0x7472616b

    if-eq v3, v4, :cond_0

    .line 460
    goto :goto_1

    .line 462
    :cond_0
    const v3, 0x6d766864

    .line 465
    invoke-virtual {p1, v3}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    iget-boolean v9, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->isQuickTime:Z

    .line 463
    move-object v3, v2

    move v8, p3

    invoke-static/range {v3 .. v9}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->parseTrak(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;JLandroidx/media2/exoplayer/external/drm/DrmInitData;ZZ)Landroidx/media2/exoplayer/external/extractor/mp4/Track;

    move-result-object v3

    .line 470
    .local v3, "track":Landroidx/media2/exoplayer/external/extractor/mp4/Track;
    if-nez v3, :cond_1

    .line 471
    goto :goto_1

    .line 473
    :cond_1
    const v4, 0x6d646961

    .line 474
    invoke-virtual {v2, v4}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;

    move-result-object v4

    const v5, 0x6d696e66

    .line 475
    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;

    move-result-object v4

    const v5, 0x7374626c

    .line 476
    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;

    move-result-object v4

    .line 477
    .local v4, "stblAtom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;
    invoke-static {v3, v4, p2}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->parseStbl(Landroidx/media2/exoplayer/external/extractor/mp4/Track;Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;)Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;

    move-result-object v5

    .line 478
    .local v5, "trackSampleTable":Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;
    iget v6, v5, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-nez v6, :cond_2

    .line 479
    goto :goto_1

    .line 481
    :cond_2
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    .end local v2    # "atom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;
    .end local v3    # "track":Landroidx/media2/exoplayer/external/extractor/mp4/Track;
    .end local v4    # "stblAtom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;
    .end local v5    # "trackSampleTable":Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 483
    .end local v1    # "i":I
    :cond_3
    return-object v0
.end method

.method static final synthetic lambda$static$0$Mp4Extractor()[Landroidx/media2/exoplayer/external/extractor/Extractor;
    .locals 3

    .line 58
    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media2/exoplayer/external/extractor/Extractor;

    new-instance v1, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private static maybeAdjustSeekOffset(Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;JJ)J
    .locals 6
    .param p0, "sampleTable"    # Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;
    .param p1, "seekTimeUs"    # J
    .param p3, "offset"    # J

    .line 730
    invoke-static {p0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->getSynchronizationSampleIndex(Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;J)I

    move-result v0

    .line 731
    .local v0, "sampleIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 732
    return-wide p3

    .line 734
    :cond_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v2, v1, v0

    .line 735
    .local v2, "sampleOffset":J
    invoke-static {v2, v3, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    return-wide v4
.end method

.method private maybeSkipRemainingMetaAtomHeaderBytes(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)V
    .locals 3
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 666
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset(I)V

    .line 671
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 672
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 673
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v0

    const v2, 0x68646c72    # 4.3148E24f

    if-ne v0, v2, :cond_0

    .line 674
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    goto :goto_0

    .line 676
    :cond_0
    invoke-interface {p1, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    .line 678
    :goto_0
    return-void
.end method

.method private processAtomEnded(J)V
    .locals 4
    .param p1, "atomEndPosition"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 370
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;

    iget-wide v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    cmp-long v0, v2, p1

    if-nez v0, :cond_2

    .line 371
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;

    .line 372
    .local v0, "containerAtom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->type:I

    const v3, 0x6d6f6f76

    if-ne v2, v3, :cond_0

    .line 374
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->processMoovAtom(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;)V

    .line 375
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    .line 376
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->parserState:I

    goto :goto_1

    .line 377
    :cond_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 378
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;

    invoke-virtual {v1, v0}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->add(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_1

    .line 377
    :cond_1
    nop

    .line 380
    .end local v0    # "containerAtom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;
    :goto_1
    goto :goto_0

    .line 370
    :cond_2
    nop

    .line 381
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->parserState:I

    if-eq v0, v1, :cond_3

    .line 382
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    goto :goto_2

    .line 381
    :cond_3
    nop

    .line 384
    :goto_2
    return-void
.end method

.method private static processFtypAtom(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Z
    .locals 4
    .param p0, "atomData"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 765
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 766
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 767
    .local v0, "majorBrand":I
    const/4 v1, 0x1

    const v2, 0x71742020

    if-ne v0, v2, :cond_0

    .line 768
    return v1

    .line 770
    :cond_0
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 771
    :goto_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    if-lez v3, :cond_2

    .line 772
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 773
    return v1

    .line 772
    :cond_1
    goto :goto_0

    .line 776
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private processMoovAtom(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;)V
    .locals 26
    .param p1, "moov"    # Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 390
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, -0x1

    .line 391
    .local v2, "firstVideoTrackIndex":I
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 392
    .local v3, "durationUs":J
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 395
    .local v5, "tracks":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;>;"
    const/4 v6, 0x0

    .line 396
    .local v6, "udtaMetadata":Landroidx/media2/exoplayer/external/metadata/Metadata;
    new-instance v7, Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;

    invoke-direct {v7}, Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;-><init>()V

    .line 397
    .local v7, "gaplessInfoHolder":Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;
    const v8, 0x75647461

    invoke-virtual {v1, v8}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    move-result-object v8

    .line 398
    .local v8, "udta":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    if-eqz v8, :cond_1

    .line 399
    iget-boolean v9, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->isQuickTime:Z

    invoke-static {v8, v9}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->parseUdta(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;Z)Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-result-object v6

    .line 400
    if-eqz v6, :cond_0

    .line 401
    invoke-virtual {v7, v6}, Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;->setFromMetadata(Landroidx/media2/exoplayer/external/metadata/Metadata;)Z

    goto :goto_0

    .line 400
    :cond_0
    goto :goto_0

    .line 398
    :cond_1
    nop

    .line 404
    :goto_0
    const/4 v9, 0x0

    .line 405
    .local v9, "mdtaMetadata":Landroidx/media2/exoplayer/external/metadata/Metadata;
    const v10, 0x6d657461

    invoke-virtual {v1, v10}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;

    move-result-object v10

    .line 406
    .local v10, "meta":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;
    if-eqz v10, :cond_2

    .line 407
    invoke-static {v10}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->parseMdtaFromMeta(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;)Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-result-object v9

    goto :goto_1

    .line 406
    :cond_2
    nop

    .line 410
    :goto_1
    iget v11, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->flags:I

    const/4 v12, 0x1

    and-int/2addr v11, v12

    if-eqz v11, :cond_3

    const/4 v11, 0x1

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    .line 411
    .local v11, "ignoreEditLists":Z
    :goto_2
    nop

    .line 412
    invoke-direct {v0, v1, v7, v11}, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->getTrackSampleTables(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;Z)Ljava/util/ArrayList;

    move-result-object v14

    .line 414
    .local v14, "trackSampleTables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 415
    .local v15, "trackCount":I
    const/16 v16, 0x0

    move-wide v12, v3

    move v3, v2

    move/from16 v2, v16

    .local v2, "i":I
    .local v3, "firstVideoTrackIndex":I
    .local v12, "durationUs":J
    :goto_3
    if-ge v2, v15, :cond_7

    .line 416
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v4, v17

    check-cast v4, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;

    .line 417
    .local v4, "trackSampleTable":Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;
    iget-object v1, v4, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;->track:Landroidx/media2/exoplayer/external/extractor/mp4/Track;

    .line 419
    .local v1, "track":Landroidx/media2/exoplayer/external/extractor/mp4/Track;
    move-object/from16 v17, v10

    move/from16 v18, v11

    .end local v10    # "meta":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;
    .end local v11    # "ignoreEditLists":Z
    .local v17, "meta":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;
    .local v18, "ignoreEditLists":Z
    iget-wide v10, v1, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->durationUs:J

    const-wide v19, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v21, v10, v19

    if-eqz v21, :cond_4

    iget-wide v10, v1, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->durationUs:J

    goto :goto_4

    :cond_4
    iget-wide v10, v4, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;->durationUs:J

    .line 420
    .local v10, "trackDurationUs":J
    :goto_4
    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 421
    move-object/from16 v19, v8

    .end local v8    # "udta":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    .local v19, "udta":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    new-instance v8, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;

    move-wide/from16 v20, v12

    .end local v12    # "durationUs":J
    .local v20, "durationUs":J
    iget-object v12, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    iget v13, v1, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->type:I

    .line 422
    invoke-interface {v12, v2, v13}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->track(II)Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    move-result-object v12

    invoke-direct {v8, v1, v4, v12}, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;-><init>(Landroidx/media2/exoplayer/external/extractor/mp4/Track;Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;Landroidx/media2/exoplayer/external/extractor/TrackOutput;)V

    .line 426
    .local v8, "mp4Track":Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;
    iget v12, v4, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;->maximumSize:I

    add-int/lit8 v12, v12, 0x1e

    .line 427
    .local v12, "maxInputSize":I
    iget-object v13, v1, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->format:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {v13, v12}, Landroidx/media2/exoplayer/external/Format;->copyWithMaxInputSize(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v13

    .line 428
    .local v13, "format":Landroidx/media2/exoplayer/external/Format;
    move/from16 v22, v12

    .end local v12    # "maxInputSize":I
    .local v22, "maxInputSize":I
    iget v12, v1, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->type:I

    move-object/from16 v23, v14

    .end local v14    # "trackSampleTables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;>;"
    .local v23, "trackSampleTables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;>;"
    const/4 v14, 0x2

    if-ne v12, v14, :cond_5

    const-wide/16 v24, 0x0

    cmp-long v12, v10, v24

    if-lez v12, :cond_5

    iget v12, v4, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;->sampleCount:I

    const/4 v14, 0x1

    if-le v12, v14, :cond_5

    .line 431
    iget v12, v4, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;->sampleCount:I

    int-to-float v12, v12

    long-to-float v14, v10

    const v25, 0x49742400    # 1000000.0f

    div-float v14, v14, v25

    div-float/2addr v12, v14

    .line 432
    .local v12, "frameRate":F
    invoke-virtual {v13, v12}, Landroidx/media2/exoplayer/external/Format;->copyWithFrameRate(F)Landroidx/media2/exoplayer/external/Format;

    move-result-object v13

    goto :goto_5

    .line 428
    .end local v12    # "frameRate":F
    :cond_5
    nop

    .line 434
    :goto_5
    iget v12, v1, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->type:I

    .line 435
    invoke-static {v12, v13, v6, v9, v7}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->getFormatWithMetadata(ILandroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/metadata/Metadata;Landroidx/media2/exoplayer/external/metadata/Metadata;Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v12

    .line 437
    .end local v13    # "format":Landroidx/media2/exoplayer/external/Format;
    .local v12, "format":Landroidx/media2/exoplayer/external/Format;
    iget-object v13, v8, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;->trackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    invoke-interface {v13, v12}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->format(Landroidx/media2/exoplayer/external/Format;)V

    .line 439
    iget v13, v1, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->type:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_6

    const/4 v13, -0x1

    if-ne v3, v13, :cond_6

    .line 440
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_6

    .line 439
    :cond_6
    nop

    .line 442
    :goto_6
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    .end local v1    # "track":Landroidx/media2/exoplayer/external/extractor/mp4/Track;
    .end local v4    # "trackSampleTable":Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;
    .end local v8    # "mp4Track":Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;
    .end local v10    # "trackDurationUs":J
    .end local v12    # "format":Landroidx/media2/exoplayer/external/Format;
    .end local v22    # "maxInputSize":I
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v10, v17

    move/from16 v11, v18

    move-object/from16 v8, v19

    move-wide/from16 v12, v20

    move-object/from16 v14, v23

    move-object/from16 v1, p1

    goto/16 :goto_3

    .end local v17    # "meta":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;
    .end local v18    # "ignoreEditLists":Z
    .end local v19    # "udta":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    .end local v20    # "durationUs":J
    .end local v23    # "trackSampleTables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;>;"
    .local v8, "udta":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    .local v10, "meta":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;
    .restart local v11    # "ignoreEditLists":Z
    .local v12, "durationUs":J
    .restart local v14    # "trackSampleTables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;>;"
    :cond_7
    move-object/from16 v19, v8

    move-object/from16 v17, v10

    move/from16 v18, v11

    move-object/from16 v23, v14

    .line 444
    .end local v2    # "i":I
    .end local v8    # "udta":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    .end local v10    # "meta":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;
    .end local v11    # "ignoreEditLists":Z
    .end local v14    # "trackSampleTables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;>;"
    .restart local v17    # "meta":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;
    .restart local v18    # "ignoreEditLists":Z
    .restart local v19    # "udta":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    .restart local v23    # "trackSampleTables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;>;"
    iput v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->firstVideoTrackIndex:I

    .line 445
    iput-wide v12, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->durationUs:J

    .line 446
    const/4 v1, 0x0

    new-array v1, v1, [Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;

    invoke-interface {v5, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;

    iput-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;

    .line 447
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->calculateAccumulatedSampleSizes([Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;)[[J

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->accumulatedSampleSizes:[[J

    .line 449
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->endTracks()V

    .line 450
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    invoke-interface {v1, v0}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->seekMap(Landroidx/media2/exoplayer/external/extractor/SeekMap;)V

    .line 451
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

    .line 278
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 280
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomHeader:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v0, v3, v1, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    return v3

    .line 283
    :cond_0
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    .line 284
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomHeader:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 285
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomHeader:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomSize:J

    .line 286
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomHeader:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomType:I

    goto :goto_0

    .line 278
    :cond_1
    nop

    .line 289
    :goto_0
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomSize:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 291
    const/16 v0, 0x8

    .line 292
    .local v0, "headerBytesRemaining":I
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomHeader:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v4, v1, v0}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BII)V

    .line 293
    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    add-int/2addr v4, v0

    iput v4, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    .line 294
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomHeader:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomSize:J

    .end local v0    # "headerBytesRemaining":I
    goto :goto_2

    .line 295
    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_5

    .line 298
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    .line 299
    .local v4, "endPosition":J
    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 300
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;

    iget-wide v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    goto :goto_1

    .line 299
    :cond_3
    nop

    .line 302
    :goto_1
    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    .line 303
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    sub-long v6, v4, v6

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v8, v0

    add-long/2addr v6, v8

    iput-wide v6, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomSize:J

    goto :goto_3

    .line 302
    :cond_4
    goto :goto_3

    .line 295
    .end local v4    # "endPosition":J
    :cond_5
    :goto_2
    nop

    .line 307
    :goto_3
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_c

    .line 311
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-static {v0}, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->shouldParseContainerAtom(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 312
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iget-wide v3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomSize:J

    add-long/2addr v0, v3

    iget v3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v3, v3

    sub-long/2addr v0, v3

    .line 313
    .local v0, "endPosition":J
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    new-instance v4, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;

    iget v5, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-direct {v4, v5, v0, v1}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;-><init>(IJ)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 314
    iget-wide v3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v5, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v5, v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_6

    .line 315
    invoke-direct {p0, v0, v1}, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->processAtomEnded(J)V

    goto :goto_5

    .line 317
    :cond_6
    iget v3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomType:I

    const v4, 0x6d657461

    if-ne v3, v4, :cond_7

    .line 318
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->maybeSkipRemainingMetaAtomHeaderBytes(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)V

    goto :goto_4

    .line 317
    :cond_7
    nop

    .line 321
    :goto_4
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    .line 323
    .end local v0    # "endPosition":J
    :goto_5
    goto :goto_8

    :cond_8
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-static {v0}, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->shouldParseLeafAtom(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 326
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_6

    :cond_9
    const/4 v0, 0x0

    :goto_6
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 327
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomSize:J

    const-wide/32 v6, 0x7fffffff

    cmp-long v0, v4, v6

    if-gtz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_7

    :cond_a
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 328
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomSize:J

    long-to-int v5, v4

    invoke-direct {v0, v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 329
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomHeader:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-static {v0, v3, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 330
    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->parserState:I

    goto :goto_8

    .line 332
    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 333
    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->parserState:I

    .line 336
    :goto_8
    return v2

    .line 308
    :cond_c
    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    const-string v1, "Atom size less than header length (unsupported)."

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readAtomPayload(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;)Z
    .locals 9
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .param p2, "positionHolder"    # Landroidx/media2/exoplayer/external/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 346
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 347
    .local v0, "atomPayloadSize":J
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 348
    .local v2, "atomEndPosition":J
    const/4 v4, 0x0

    .line 349
    .local v4, "seekRequired":Z
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    if-eqz v5, :cond_2

    .line 350
    iget-object v5, v5, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v6, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    long-to-int v7, v0

    invoke-interface {p1, v5, v6, v7}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BII)V

    .line 351
    iget v5, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomType:I

    const v6, 0x66747970

    if-ne v5, v6, :cond_0

    .line 352
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-static {v5}, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->processFtypAtom(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Z

    move-result v5

    iput-boolean v5, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->isQuickTime:Z

    goto :goto_0

    .line 353
    :cond_0
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 354
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;

    new-instance v6, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    iget v7, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomType:I

    iget-object v8, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {v6, v7, v8}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;-><init>(ILandroidx/media2/exoplayer/external/util/ParsableByteArray;)V

    invoke-virtual {v5, v6}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->add(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;)V

    goto :goto_0

    .line 353
    :cond_1
    goto :goto_0

    .line 358
    :cond_2
    const-wide/32 v5, 0x40000

    cmp-long v7, v0, v5

    if-gez v7, :cond_3

    .line 359
    long-to-int v5, v0

    invoke-interface {p1, v5}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_0

    .line 361
    :cond_3
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    add-long/2addr v5, v0

    iput-wide v5, p2, Landroidx/media2/exoplayer/external/extractor/PositionHolder;->position:J

    .line 362
    const/4 v4, 0x1

    .line 365
    :goto_0
    invoke-direct {p0, v2, v3}, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->processAtomEnded(J)V

    .line 366
    if-eqz v4, :cond_4

    iget v5, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->parserState:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4

    const/4 v5, 0x1

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    :goto_1
    return v5
.end method

.method private readSample(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;)I
    .locals 24
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .param p2, "positionHolder"    # Landroidx/media2/exoplayer/external/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 504
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    .line 505
    .local v2, "inputPosition":J
    iget v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 506
    invoke-direct {v0, v2, v3}, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->getTrackIndexOfNextReadSample(J)I

    move-result v4

    iput v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    .line 507
    iget v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    if-ne v4, v5, :cond_0

    .line 508
    return v5

    .line 510
    :cond_0
    const-string v6, "audio/ac4"

    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;

    aget-object v4, v7, v4

    iget-object v4, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;->track:Landroidx/media2/exoplayer/external/extractor/mp4/Track;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->format:Landroidx/media2/exoplayer/external/Format;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    .line 511
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->isAc4HeaderRequired:Z

    goto :goto_0

    .line 505
    :cond_1
    nop

    .line 513
    :goto_0
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;

    iget v6, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    aget-object v4, v4, v6

    .line 514
    .local v4, "track":Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;
    iget-object v13, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;->trackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 515
    .local v13, "trackOutput":Landroidx/media2/exoplayer/external/extractor/TrackOutput;
    iget v14, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 516
    .local v14, "sampleIndex":I
    iget-object v6, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;

    iget-object v6, v6, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v11, v6, v14

    .line 517
    .local v11, "position":J
    iget-object v6, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;

    iget-object v6, v6, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;->sizes:[I

    aget v6, v6, v14

    .line 518
    .local v6, "sampleSize":I
    sub-long v7, v11, v2

    iget v9, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    int-to-long v9, v9

    add-long/2addr v7, v9

    .line 519
    .local v7, "skipAmount":J
    const-wide/16 v9, 0x0

    const/4 v15, 0x1

    cmp-long v16, v7, v9

    if-ltz v16, :cond_a

    const-wide/32 v9, 0x40000

    cmp-long v16, v7, v9

    if-ltz v16, :cond_2

    move-wide/from16 v18, v2

    move-wide/from16 v22, v11

    goto/16 :goto_5

    .line 523
    :cond_2
    iget-object v9, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;->track:Landroidx/media2/exoplayer/external/extractor/mp4/Track;

    iget v9, v9, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->sampleTransformation:I

    if-ne v9, v15, :cond_3

    .line 526
    const-wide/16 v9, 0x8

    add-long/2addr v7, v9

    .line 527
    add-int/lit8 v6, v6, -0x8

    move-wide v9, v7

    goto :goto_1

    .line 523
    :cond_3
    move-wide v9, v7

    .line 529
    .end local v7    # "skipAmount":J
    .local v9, "skipAmount":J
    :goto_1
    long-to-int v7, v9

    invoke-interface {v1, v7}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    .line 530
    iget-object v7, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;->track:Landroidx/media2/exoplayer/external/extractor/mp4/Track;

    iget v7, v7, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    const/4 v8, 0x0

    if-eqz v7, :cond_7

    .line 533
    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->nalLength:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v7, v7, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    .line 534
    .local v7, "nalLengthData":[B
    aput-byte v8, v7, v8

    .line 535
    aput-byte v8, v7, v15

    .line 536
    const/16 v16, 0x2

    aput-byte v8, v7, v16

    .line 537
    iget-object v5, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;->track:Landroidx/media2/exoplayer/external/extractor/mp4/Track;

    iget v5, v5, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    .line 538
    .local v5, "nalUnitLengthFieldLength":I
    iget-object v15, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;->track:Landroidx/media2/exoplayer/external/extractor/mp4/Track;

    iget v15, v15, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    const/4 v8, 0x4

    rsub-int/lit8 v15, v15, 0x4

    .line 542
    .local v15, "nalUnitLengthFieldLengthDiff":I
    :goto_2
    iget v8, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    if-ge v8, v6, :cond_6

    .line 543
    iget v8, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    if-nez v8, :cond_5

    .line 545
    invoke-interface {v1, v7, v15, v5}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BII)V

    .line 546
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->nalLength:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    move-wide/from16 v18, v2

    const/4 v2, 0x0

    .end local v2    # "inputPosition":J
    .local v18, "inputPosition":J
    invoke-virtual {v8, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 547
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->nalLength:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 548
    .local v3, "nalLengthInt":I
    if-ltz v3, :cond_4

    .line 551
    iput v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 553
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->nalStartCode:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v8, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 554
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->nalStartCode:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/4 v8, 0x4

    invoke-interface {v13, v2, v8}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 555
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v2, v8

    iput v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 556
    add-int/2addr v6, v15

    .line 557
    .end local v3    # "nalLengthInt":I
    move-wide/from16 v2, v18

    goto :goto_2

    .line 549
    .restart local v3    # "nalLengthInt":I
    :cond_4
    new-instance v2, Landroidx/media2/exoplayer/external/ParserException;

    const-string v8, "Invalid NAL length"

    invoke-direct {v2, v8}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 559
    .end local v3    # "nalLengthInt":I
    .end local v18    # "inputPosition":J
    .restart local v2    # "inputPosition":J
    :cond_5
    move-wide/from16 v18, v2

    const/4 v2, 0x4

    .end local v2    # "inputPosition":J
    .restart local v18    # "inputPosition":J
    const/4 v3, 0x0

    invoke-interface {v13, v1, v8, v3}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;IZ)I

    move-result v8

    .line 560
    .local v8, "writtenBytes":I
    iget v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v3, v8

    iput v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 561
    iget v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int/2addr v3, v8

    iput v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 562
    .end local v8    # "writtenBytes":I
    move-wide/from16 v2, v18

    const/4 v8, 0x4

    goto :goto_2

    .line 542
    .end local v18    # "inputPosition":J
    .restart local v2    # "inputPosition":J
    :cond_6
    move-wide/from16 v18, v2

    .line 564
    .end local v2    # "inputPosition":J
    .end local v5    # "nalUnitLengthFieldLength":I
    .end local v7    # "nalLengthData":[B
    .end local v15    # "nalUnitLengthFieldLengthDiff":I
    .restart local v18    # "inputPosition":J
    move v2, v6

    const/4 v3, 0x0

    goto :goto_4

    .line 565
    .end local v18    # "inputPosition":J
    .restart local v2    # "inputPosition":J
    :cond_7
    move-wide/from16 v18, v2

    .end local v2    # "inputPosition":J
    .restart local v18    # "inputPosition":J
    iget-boolean v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->isAc4HeaderRequired:Z

    if-eqz v2, :cond_8

    .line 566
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-static {v6, v2}, Landroidx/media2/exoplayer/external/audio/Ac4Util;->getAc4SampleHeader(ILandroidx/media2/exoplayer/external/util/ParsableByteArray;)V

    .line 567
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v2

    .line 568
    .local v2, "length":I
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-interface {v13, v3, v2}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 569
    add-int/2addr v6, v2

    .line 570
    iget v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v3, v2

    iput v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 571
    const/4 v3, 0x0

    iput-boolean v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->isAc4HeaderRequired:Z

    goto :goto_3

    .line 565
    .end local v2    # "length":I
    :cond_8
    const/4 v3, 0x0

    .line 573
    :goto_3
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    if-ge v2, v6, :cond_9

    .line 574
    sub-int v2, v6, v2

    invoke-interface {v13, v1, v2, v3}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;IZ)I

    move-result v2

    .line 575
    .local v2, "writtenBytes":I
    iget v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v5, v2

    iput v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 576
    iget v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int/2addr v5, v2

    iput v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 577
    .end local v2    # "writtenBytes":I
    goto :goto_3

    .line 573
    :cond_9
    move v2, v6

    .line 579
    .end local v6    # "sampleSize":I
    .local v2, "sampleSize":I
    :goto_4
    iget-object v5, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v7, v5, v14

    iget-object v5, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;->flags:[I

    aget v5, v5, v14

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object v6, v13

    move-wide/from16 v20, v9

    .end local v9    # "skipAmount":J
    .local v20, "skipAmount":J
    move v9, v5

    move v10, v2

    move-wide/from16 v22, v11

    .end local v11    # "position":J
    .local v22, "position":J
    move v11, v15

    move-object/from16 v12, v17

    invoke-interface/range {v6 .. v12}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;)V

    .line 581
    iget v5, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 582
    const/4 v5, -0x1

    iput v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    .line 583
    iput v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 584
    iput v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 585
    return v3

    .line 519
    .end local v18    # "inputPosition":J
    .end local v20    # "skipAmount":J
    .end local v22    # "position":J
    .local v2, "inputPosition":J
    .restart local v6    # "sampleSize":I
    .local v7, "skipAmount":J
    .restart local v11    # "position":J
    :cond_a
    move-wide/from16 v18, v2

    move-wide/from16 v22, v11

    .line 520
    .end local v2    # "inputPosition":J
    .end local v11    # "position":J
    .restart local v18    # "inputPosition":J
    .restart local v22    # "position":J
    :goto_5
    move-object/from16 v2, p2

    move-wide/from16 v9, v22

    .end local v22    # "position":J
    .local v9, "position":J
    iput-wide v9, v2, Landroidx/media2/exoplayer/external/extractor/PositionHolder;->position:J

    .line 521
    const/4 v3, 0x1

    return v3
.end method

.method private static shouldParseContainerAtom(I)Z
    .locals 1
    .param p0, "atom"    # I

    .line 803
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

    const v0, 0x65647473

    if-eq p0, v0, :cond_1

    const v0, 0x6d657461

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

    .line 781
    const v0, 0x6d646864

    if-eq p0, v0, :cond_1

    const v0, 0x6d766864

    if-eq p0, v0, :cond_1

    const v0, 0x68646c72    # 4.3148E24f

    if-eq p0, v0, :cond_1

    const v0, 0x73747364

    if-eq p0, v0, :cond_1

    const v0, 0x73747473

    if-eq p0, v0, :cond_1

    const v0, 0x73747373

    if-eq p0, v0, :cond_1

    const v0, 0x63747473

    if-eq p0, v0, :cond_1

    const v0, 0x656c7374

    if-eq p0, v0, :cond_1

    const v0, 0x73747363

    if-eq p0, v0, :cond_1

    const v0, 0x7374737a

    if-eq p0, v0, :cond_1

    const v0, 0x73747a32

    if-eq p0, v0, :cond_1

    const v0, 0x7374636f

    if-eq p0, v0, :cond_1

    const v0, 0x636f3634

    if-eq p0, v0, :cond_1

    const v0, 0x746b6864

    if-eq p0, v0, :cond_1

    const v0, 0x66747970

    if-eq p0, v0, :cond_1

    const v0, 0x75647461

    if-eq p0, v0, :cond_1

    const v0, 0x6b657973

    if-eq p0, v0, :cond_1

    const v0, 0x696c7374

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

.method private updateSampleIndices(J)V
    .locals 7
    .param p1, "timeUs"    # J

    .line 643
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 644
    .local v3, "track":Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;
    iget-object v4, v3, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;

    .line 645
    .local v4, "sampleTable":Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;
    invoke-virtual {v4, p1, p2}, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;->getIndexOfEarlierOrEqualSynchronizationSample(J)I

    move-result v5

    .line 646
    .local v5, "sampleIndex":I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 648
    invoke-virtual {v4, p1, p2}, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v5

    goto :goto_1

    .line 646
    :cond_0
    nop

    .line 650
    :goto_1
    iput v5, v3, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 643
    .end local v3    # "track":Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;
    .end local v4    # "sampleTable":Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;
    .end local v5    # "sampleIndex":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 652
    :cond_1
    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .line 214
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->durationUs:J

    return-wide v0
.end method

.method public getSeekPoints(J)Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;
    .locals 17
    .param p1, "timeUs"    # J

    .line 219
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v4, v3

    if-nez v4, :cond_0

    .line 220
    new-instance v3, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;

    sget-object v4, Landroidx/media2/exoplayer/external/extractor/SeekPoint;->START:Landroidx/media2/exoplayer/external/extractor/SeekPoint;

    invoke-direct {v3, v4}, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media2/exoplayer/external/extractor/SeekPoint;)V

    return-object v3

    .line 225
    :cond_0
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 226
    .local v4, "secondTimeUs":J
    const-wide/16 v6, -0x1

    .line 229
    .local v6, "secondOffset":J
    iget v8, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->firstVideoTrackIndex:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_4

    .line 230
    aget-object v3, v3, v8

    iget-object v3, v3, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;

    .line 231
    .local v3, "sampleTable":Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;
    invoke-static {v3, v1, v2}, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->getSynchronizationSampleIndex(Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;J)I

    move-result v8

    .line 232
    .local v8, "sampleIndex":I
    if-ne v8, v9, :cond_1

    .line 233
    new-instance v9, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;

    sget-object v10, Landroidx/media2/exoplayer/external/extractor/SeekPoint;->START:Landroidx/media2/exoplayer/external/extractor/SeekPoint;

    invoke-direct {v9, v10}, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media2/exoplayer/external/extractor/SeekPoint;)V

    return-object v9

    .line 235
    :cond_1
    iget-object v10, v3, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v11, v10, v8

    .line 236
    .local v11, "sampleTimeUs":J
    move-wide v13, v11

    .line 237
    .local v13, "firstTimeUs":J
    iget-object v10, v3, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v15, v10, v8

    .line 238
    .local v15, "firstOffset":J
    cmp-long v10, v11, v1

    if-gez v10, :cond_3

    iget v10, v3, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;->sampleCount:I

    add-int/lit8 v10, v10, -0x1

    if-ge v8, v10, :cond_3

    .line 239
    invoke-virtual {v3, v1, v2}, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v10

    .line 240
    .local v10, "secondSampleIndex":I
    if-eq v10, v9, :cond_2

    if-eq v10, v8, :cond_2

    .line 241
    iget-object v9, v3, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v4, v9, v10

    .line 242
    iget-object v9, v3, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v6, v9, v10

    goto :goto_0

    .line 240
    :cond_2
    goto :goto_0

    .line 238
    .end local v10    # "secondSampleIndex":I
    :cond_3
    nop

    .line 245
    .end local v3    # "sampleTable":Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;
    .end local v8    # "sampleIndex":I
    .end local v11    # "sampleTimeUs":J
    :goto_0
    goto :goto_1

    .line 246
    .end local v13    # "firstTimeUs":J
    .end local v15    # "firstOffset":J
    :cond_4
    move-wide/from16 v13, p1

    .line 247
    .restart local v13    # "firstTimeUs":J
    const-wide v15, 0x7fffffffffffffffL

    .line 251
    .restart local v15    # "firstOffset":J
    :goto_1
    const/4 v3, 0x0

    move-wide v8, v6

    move-wide v6, v15

    .end local v15    # "firstOffset":J
    .local v3, "i":I
    .local v6, "firstOffset":J
    .local v8, "secondOffset":J
    :goto_2
    iget-object v10, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v11, v10

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v3, v11, :cond_7

    .line 252
    iget v11, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->firstVideoTrackIndex:I

    if-eq v3, v11, :cond_6

    .line 253
    aget-object v10, v10, v3

    iget-object v10, v10, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;

    .line 254
    .local v10, "sampleTable":Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;
    invoke-static {v10, v13, v14, v6, v7}, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->maybeAdjustSeekOffset(Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;JJ)J

    move-result-wide v6

    .line 255
    cmp-long v11, v4, v15

    if-eqz v11, :cond_5

    .line 256
    invoke-static {v10, v4, v5, v8, v9}, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->maybeAdjustSeekOffset(Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;JJ)J

    move-result-wide v8

    goto :goto_3

    .line 255
    :cond_5
    goto :goto_3

    .line 252
    .end local v10    # "sampleTable":Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;
    :cond_6
    nop

    .line 251
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 261
    .end local v3    # "i":I
    :cond_7
    new-instance v3, Landroidx/media2/exoplayer/external/extractor/SeekPoint;

    invoke-direct {v3, v13, v14, v6, v7}, Landroidx/media2/exoplayer/external/extractor/SeekPoint;-><init>(JJ)V

    .line 262
    .local v3, "firstSeekPoint":Landroidx/media2/exoplayer/external/extractor/SeekPoint;
    cmp-long v10, v4, v15

    if-nez v10, :cond_8

    .line 263
    new-instance v10, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;

    invoke-direct {v10, v3}, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media2/exoplayer/external/extractor/SeekPoint;)V

    return-object v10

    .line 265
    :cond_8
    new-instance v10, Landroidx/media2/exoplayer/external/extractor/SeekPoint;

    invoke-direct {v10, v4, v5, v8, v9}, Landroidx/media2/exoplayer/external/extractor/SeekPoint;-><init>(JJ)V

    .line 266
    .local v10, "secondSeekPoint":Landroidx/media2/exoplayer/external/extractor/SeekPoint;
    new-instance v11, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;

    invoke-direct {v11, v3, v10}, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media2/exoplayer/external/extractor/SeekPoint;Landroidx/media2/exoplayer/external/extractor/SeekPoint;)V

    return-object v11
.end method

.method public init(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;)V
    .locals 0
    .param p1, "output"    # Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    .line 159
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    .line 160
    return-void
.end method

.method public isSeekable()Z
    .locals 1

    .line 209
    const/4 v0, 0x1

    return v0
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

    .line 186
    :goto_0
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->parserState:I

    packed-switch v0, :pswitch_data_0

    .line 200
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 198
    :pswitch_0
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->readSample(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;)I

    move-result v0

    return v0

    .line 193
    :pswitch_1
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->readAtomPayload(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    const/4 v0, 0x1

    return v0

    .line 193
    :cond_0
    goto :goto_0

    .line 188
    :pswitch_2
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->readAtomHeader(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 189
    const/4 v0, -0x1

    return v0

    .line 188
    :cond_1
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public release()V
    .locals 0

    .line 180
    return-void
.end method

.method public seek(JJ)V
    .locals 3
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .line 164
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 165
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    .line 166
    const/4 v1, -0x1

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    .line 167
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 168
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 169
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->isAc4HeaderRequired:Z

    .line 170
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 171
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;

    if-eqz v0, :cond_1

    .line 173
    invoke-direct {p0, p3, p4}, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->updateSampleIndices(J)V

    goto :goto_0

    .line 172
    :cond_1
    nop

    .line 175
    :goto_0
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

    .line 154
    invoke-static {p1}, Landroidx/media2/exoplayer/external/extractor/mp4/Sniffer;->sniffUnfragmented(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z

    move-result v0

    return v0
.end method
