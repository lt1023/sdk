.class Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil$PsshAtom;
.super Ljava/lang/Object;
.source "PsshAtomUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PsshAtom"
.end annotation


# instance fields
.field private final schemeData:[B

.field private final uuid:Ljava/util/UUID;

.field private final version:I


# direct methods
.method public constructor <init>(Ljava/util/UUID;I[B)V
    .locals 0
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "version"    # I
    .param p3, "schemeData"    # [B

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil$PsshAtom;->uuid:Ljava/util/UUID;

    .line 207
    iput p2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil$PsshAtom;->version:I

    .line 208
    iput-object p3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil$PsshAtom;->schemeData:[B

    .line 209
    return-void
.end method

.method static synthetic access$000(Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil$PsshAtom;)Ljava/util/UUID;
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil$PsshAtom;

    .line 199
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil$PsshAtom;->uuid:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$100(Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil$PsshAtom;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil$PsshAtom;

    .line 199
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil$PsshAtom;->version:I

    return v0
.end method

.method static synthetic access$200(Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil$PsshAtom;)[B
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil$PsshAtom;

    .line 199
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil$PsshAtom;->schemeData:[B

    return-object v0
.end method
