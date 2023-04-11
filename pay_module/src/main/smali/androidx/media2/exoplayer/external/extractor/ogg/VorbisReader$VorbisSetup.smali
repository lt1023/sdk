.class final Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;
.super Ljava/lang/Object;
.source "VorbisReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "VorbisSetup"
.end annotation


# instance fields
.field public final commentHeader:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$CommentHeader;

.field public final iLogModes:I

.field public final idHeader:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;

.field public final modes:[Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$Mode;

.field public final setupHeaderData:[B


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$CommentHeader;[B[Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$Mode;I)V
    .locals 0
    .param p1, "idHeader"    # Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;
    .param p2, "commentHeader"    # Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$CommentHeader;
    .param p3, "setupHeaderData"    # [B
    .param p4, "modes"    # [Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$Mode;
    .param p5, "iLogModes"    # I

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;

    .line 195
    iput-object p2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;->commentHeader:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$CommentHeader;

    .line 196
    iput-object p3, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;->setupHeaderData:[B

    .line 197
    iput-object p4, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;->modes:[Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$Mode;

    .line 198
    iput p5, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;->iLogModes:I

    .line 199
    return-void
.end method
